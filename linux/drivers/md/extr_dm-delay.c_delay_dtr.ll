; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.delay_c* }
%struct.delay_c = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @delay_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delay_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.delay_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  store %struct.delay_c* %6, %struct.delay_c** %3, align 8
  %7 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %8 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %13 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @destroy_workqueue(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %18 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %24 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %25 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dm_put_device(%struct.dm_target* %23, i64 %27)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %31 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %37 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %38 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dm_put_device(%struct.dm_target* %36, i64 %40)
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %44 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %50 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %51 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dm_put_device(%struct.dm_target* %49, i64 %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %57 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %56, i32 0, i32 0
  %58 = call i32 @mutex_destroy(i32* %57)
  %59 = load %struct.delay_c*, %struct.delay_c** %3, align 8
  %60 = call i32 @kfree(%struct.delay_c* %59)
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.delay_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
