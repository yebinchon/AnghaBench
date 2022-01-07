; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.dm_snapshot* }
%struct.dm_snapshot = type { %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)*, i8*)* @snapshot_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dm_snapshot*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)* %1, i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 1
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %10, align 8
  store %struct.dm_snapshot* %11, %struct.dm_snapshot** %7, align 8
  %12 = load i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)*, i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)** %5, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %15 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 %12(%struct.dm_target* %13, %struct.TYPE_3__* %16, i32 0, i32 %19, i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %3
  %25 = load i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)*, i32 (%struct.dm_target*, %struct.TYPE_3__*, i32, i32, i8*)** %5, align 8
  %26 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %28 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %31 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_dev_size(i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 %25(%struct.dm_target* %26, %struct.TYPE_3__* %29, i32 0, i32 %35, i8* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %24, %3
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @get_dev_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
