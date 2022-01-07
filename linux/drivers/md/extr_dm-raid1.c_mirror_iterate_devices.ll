; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.mirror_set* }
%struct.mirror_set = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i8*)* @mirror_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, i32, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mirror_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 1
  %12 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  store %struct.mirror_set* %12, %struct.mirror_set** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %19 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %51

24:                                               ; preds = %22
  %25 = load i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  %26 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %27 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %28 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mirror_set*, %struct.mirror_set** %7, align 8
  %36 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %44 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 %25(%struct.dm_target* %26, i32 %34, i32 %42, i32 %45, i8* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %24
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %13

51:                                               ; preds = %22
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
