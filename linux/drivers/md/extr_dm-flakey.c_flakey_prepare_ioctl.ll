; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_flakey_prepare_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_flakey_prepare_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.flakey_c* }
%struct.flakey_c = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.block_device* }
%struct.block_device = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.block_device**)* @flakey_prepare_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flakey_prepare_ioctl(%struct.dm_target* %0, %struct.block_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.block_device**, align 8
  %6 = alloca %struct.flakey_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.block_device** %1, %struct.block_device*** %5, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 1
  %9 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  store %struct.flakey_c* %9, %struct.flakey_c** %6, align 8
  %10 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %11 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.block_device*, %struct.block_device** %13, align 8
  %15 = load %struct.block_device**, %struct.block_device*** %5, align 8
  store %struct.block_device* %14, %struct.block_device** %15, align 8
  %16 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %17 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.block_device**, %struct.block_device*** %5, align 8
  %25 = load %struct.block_device*, %struct.block_device** %24, align 8
  %26 = getelementptr inbounds %struct.block_device, %struct.block_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @i_size_read(i32 %27)
  %29 = load i32, i32* @SECTOR_SHIFT, align 4
  %30 = zext i32 %29 to i64
  %31 = ashr i64 %28, %30
  %32 = icmp ne i64 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20, %2
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
