; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db9 = type { i64, i64, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.parport = type { i64 }

@DB9_MAX_PORTS = common dso_local global i32 0, align 4
@db9_base = common dso_local global %struct.db9** null, align 8
@db9_modes = common dso_local global %struct.TYPE_2__* null, align 8
@DB9_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @db9_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db9_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.db9*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @DB9_MAX_PORTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.db9**, %struct.db9*** @db9_base, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.db9*, %struct.db9** %10, i64 %12
  %14 = load %struct.db9*, %struct.db9** %13, align 8
  %15 = icmp ne %struct.db9* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = load %struct.db9**, %struct.db9*** @db9_base, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.db9*, %struct.db9** %17, i64 %19
  %21 = load %struct.db9*, %struct.db9** %20, align 8
  %22 = getelementptr inbounds %struct.db9, %struct.db9* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.parport*, %struct.parport** %2, align 8
  %25 = getelementptr inbounds %struct.parport, %struct.parport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %33

29:                                               ; preds = %16, %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %28, %5
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DB9_MAX_PORTS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %79

38:                                               ; preds = %33
  %39 = load %struct.db9**, %struct.db9*** @db9_base, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.db9*, %struct.db9** %39, i64 %41
  %43 = load %struct.db9*, %struct.db9** %42, align 8
  store %struct.db9* %43, %struct.db9** %4, align 8
  %44 = load %struct.db9**, %struct.db9*** @db9_base, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.db9*, %struct.db9** %44, i64 %46
  store %struct.db9* null, %struct.db9** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %69, %38
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db9_modes, align 8
  %51 = load %struct.db9*, %struct.db9** %4, align 8
  %52 = getelementptr inbounds %struct.db9, %struct.db9* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DB9_MAX_DEVICES, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  %59 = icmp slt i32 %49, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %48
  %61 = load %struct.db9*, %struct.db9** %4, align 8
  %62 = getelementptr inbounds %struct.db9, %struct.db9* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @input_unregister_device(i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.db9*, %struct.db9** %4, align 8
  %74 = getelementptr inbounds %struct.db9, %struct.db9* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @parport_unregister_device(i32 %75)
  %77 = load %struct.db9*, %struct.db9** %4, align 8
  %78 = call i32 @kfree(%struct.db9* %77)
  br label %79

79:                                               ; preds = %72, %37
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @parport_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.db9*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
