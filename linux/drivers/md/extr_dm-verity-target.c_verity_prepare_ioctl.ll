; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_prepare_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_prepare_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.dm_verity* }
%struct.dm_verity = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.block_device* }
%struct.block_device = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.block_device**)* @verity_prepare_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_prepare_ioctl(%struct.dm_target* %0, %struct.block_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.block_device**, align 8
  %6 = alloca %struct.dm_verity*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.block_device** %1, %struct.block_device*** %5, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 1
  %9 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  store %struct.dm_verity* %9, %struct.dm_verity** %6, align 8
  %10 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %11 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.block_device*, %struct.block_device** %13, align 8
  %15 = load %struct.block_device**, %struct.block_device*** %5, align 8
  store %struct.block_device* %14, %struct.block_device** %15, align 8
  %16 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %17 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %25 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.block_device*, %struct.block_device** %27, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @i_size_read(i32 %30)
  %32 = load i32, i32* @SECTOR_SHIFT, align 4
  %33 = zext i32 %32 to i64
  %34 = ashr i64 %31, %33
  %35 = icmp ne i64 %23, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %20, %2
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
