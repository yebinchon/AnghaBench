; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.input_dev = type { i32 }
%struct.db9 = type { i64, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.parport* }
%struct.parport = type { i32 }

@db9_modes = common dso_local global %struct.TYPE_4__* null, align 8
@DB9_NORMAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DB9_REFRESH_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @db9_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db9_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.db9*, align 8
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = call %struct.db9* @input_get_drvdata(%struct.input_dev* %7)
  store %struct.db9* %8, %struct.db9** %4, align 8
  %9 = load %struct.db9*, %struct.db9** %4, align 8
  %10 = getelementptr inbounds %struct.db9, %struct.db9* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.parport*, %struct.parport** %12, align 8
  store %struct.parport* %13, %struct.parport** %5, align 8
  %14 = load %struct.db9*, %struct.db9** %4, align 8
  %15 = getelementptr inbounds %struct.db9, %struct.db9* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock_interruptible(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load %struct.db9*, %struct.db9** %4, align 8
  %23 = getelementptr inbounds %struct.db9, %struct.db9* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %21
  %28 = load %struct.db9*, %struct.db9** %4, align 8
  %29 = getelementptr inbounds %struct.db9, %struct.db9* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @parport_claim(%struct.TYPE_3__* %30)
  %32 = load %struct.parport*, %struct.parport** %5, align 8
  %33 = call i32 @parport_write_data(%struct.parport* %32, i32 255)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @db9_modes, align 8
  %35 = load %struct.db9*, %struct.db9** %4, align 8
  %36 = getelementptr inbounds %struct.db9, %struct.db9* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = load %struct.parport*, %struct.parport** %5, align 8
  %44 = call i32 @parport_data_reverse(%struct.parport* %43)
  %45 = load %struct.parport*, %struct.parport** %5, align 8
  %46 = load i32, i32* @DB9_NORMAL, align 4
  %47 = call i32 @parport_write_control(%struct.parport* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %27
  %49 = load %struct.db9*, %struct.db9** %4, align 8
  %50 = getelementptr inbounds %struct.db9, %struct.db9* %49, i32 0, i32 2
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* @DB9_REFRESH_TIME, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @mod_timer(i32* %50, i64 %53)
  br label %55

55:                                               ; preds = %48, %21
  %56 = load %struct.db9*, %struct.db9** %4, align 8
  %57 = getelementptr inbounds %struct.db9, %struct.db9* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %19
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.db9* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @parport_claim(%struct.TYPE_3__*) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local i32 @parport_data_reverse(%struct.parport*) #1

declare dso_local i32 @parport_write_control(%struct.parport*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
