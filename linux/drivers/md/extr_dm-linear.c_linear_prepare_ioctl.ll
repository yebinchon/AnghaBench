; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-linear.c_linear_prepare_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-linear.c_linear_prepare_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, i64 }
%struct.block_device = type { i32 }
%struct.linear_c = type { i64, %struct.dm_dev* }
%struct.dm_dev = type { %struct.block_device* }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.block_device**)* @linear_prepare_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_prepare_ioctl(%struct.dm_target* %0, %struct.block_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.block_device**, align 8
  %6 = alloca %struct.linear_c*, align 8
  %7 = alloca %struct.dm_dev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.block_device** %1, %struct.block_device*** %5, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.linear_c*
  store %struct.linear_c* %11, %struct.linear_c** %6, align 8
  %12 = load %struct.linear_c*, %struct.linear_c** %6, align 8
  %13 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %12, i32 0, i32 1
  %14 = load %struct.dm_dev*, %struct.dm_dev** %13, align 8
  store %struct.dm_dev* %14, %struct.dm_dev** %7, align 8
  %15 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %16 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %15, i32 0, i32 0
  %17 = load %struct.block_device*, %struct.block_device** %16, align 8
  %18 = load %struct.block_device**, %struct.block_device*** %5, align 8
  store %struct.block_device* %17, %struct.block_device** %18, align 8
  %19 = load %struct.linear_c*, %struct.linear_c** %6, align 8
  %20 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %28 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %27, i32 0, i32 0
  %29 = load %struct.block_device*, %struct.block_device** %28, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @i_size_read(i32 %31)
  %33 = load i32, i32* @SECTOR_SHIFT, align 4
  %34 = zext i32 %33 to i64
  %35 = ashr i64 %32, %34
  %36 = icmp ne i64 %26, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23, %2
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
