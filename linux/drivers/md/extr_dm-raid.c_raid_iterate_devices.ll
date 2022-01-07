; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i64, i32, i32, i8*)*, i8*)* @raid_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i64, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, i64, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.raid_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, i64, i32, i32, i8*)* %1, i32 (%struct.dm_target*, i64, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.raid_set*, %struct.raid_set** %11, align 8
  store %struct.raid_set* %12, %struct.raid_set** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %53, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %19 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %17, %21
  br label %23

23:                                               ; preds = %16, %13
  %24 = phi i1 [ false, %13 ], [ %22, %16 ]
  br i1 %24, label %25, label %56

25:                                               ; preds = %23
  %26 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %25
  %36 = load i32 (%struct.dm_target*, i64, i32, i32, i8*)*, i32 (%struct.dm_target*, i64, i32, i32, i8*)** %5, align 8
  %37 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %38 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %39 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %47 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 %36(%struct.dm_target* %37, i64 %45, i32 0, i32 %49, i8* %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %35, %25
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %13

56:                                               ; preds = %23
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
