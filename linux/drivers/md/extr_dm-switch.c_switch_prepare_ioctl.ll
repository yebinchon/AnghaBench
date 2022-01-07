; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_prepare_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_prepare_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.switch_ctx* }
%struct.switch_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.block_device* }
%struct.block_device = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.block_device**)* @switch_prepare_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_prepare_ioctl(%struct.dm_target* %0, %struct.block_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.block_device**, align 8
  %6 = alloca %struct.switch_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.block_device** %1, %struct.block_device*** %5, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 1
  %10 = load %struct.switch_ctx*, %struct.switch_ctx** %9, align 8
  store %struct.switch_ctx* %10, %struct.switch_ctx** %6, align 8
  %11 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %12 = call i32 @switch_get_path_nr(%struct.switch_ctx* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.block_device*, %struct.block_device** %21, align 8
  %23 = load %struct.block_device**, %struct.block_device*** %5, align 8
  store %struct.block_device* %22, %struct.block_device** %23, align 8
  %24 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %26, %34
  %36 = load %struct.block_device**, %struct.block_device*** %5, align 8
  %37 = load %struct.block_device*, %struct.block_device** %36, align 8
  %38 = getelementptr inbounds %struct.block_device, %struct.block_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @i_size_read(i32 %39)
  %41 = load i32, i32* @SECTOR_SHIFT, align 4
  %42 = zext i32 %41 to i64
  %43 = ashr i64 %40, %42
  %44 = icmp ne i64 %35, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @switch_get_path_nr(%struct.switch_ctx*, i32) #1

declare dso_local i64 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
