; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_prepare_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_prepare_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.log_writes_c* }
%struct.log_writes_c = type { %struct.dm_dev* }
%struct.dm_dev = type { %struct.block_device* }
%struct.block_device = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.block_device**)* @log_writes_prepare_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_writes_prepare_ioctl(%struct.dm_target* %0, %struct.block_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.block_device**, align 8
  %6 = alloca %struct.log_writes_c*, align 8
  %7 = alloca %struct.dm_dev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.block_device** %1, %struct.block_device*** %5, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 1
  %10 = load %struct.log_writes_c*, %struct.log_writes_c** %9, align 8
  store %struct.log_writes_c* %10, %struct.log_writes_c** %6, align 8
  %11 = load %struct.log_writes_c*, %struct.log_writes_c** %6, align 8
  %12 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %11, i32 0, i32 0
  %13 = load %struct.dm_dev*, %struct.dm_dev** %12, align 8
  store %struct.dm_dev* %13, %struct.dm_dev** %7, align 8
  %14 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %15 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %14, i32 0, i32 0
  %16 = load %struct.block_device*, %struct.block_device** %15, align 8
  %17 = load %struct.block_device**, %struct.block_device*** %5, align 8
  store %struct.block_device* %16, %struct.block_device** %17, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %22 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %21, i32 0, i32 0
  %23 = load %struct.block_device*, %struct.block_device** %22, align 8
  %24 = getelementptr inbounds %struct.block_device, %struct.block_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @i_size_read(i32 %25)
  %27 = load i32, i32* @SECTOR_SHIFT, align 4
  %28 = zext i32 %27 to i64
  %29 = ashr i64 %26, %28
  %30 = icmp ne i64 %20, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
