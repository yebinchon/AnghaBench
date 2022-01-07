; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_dtrc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_dtrc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_vou_hw = type { i64 }

@DTRC_DETILE_CTRL = common dso_local global i64 0, align 8
@TILE2RASTESCAN_BYPASS_MODE = common dso_local global i32 0, align 4
@DETILE_ARIDR_MODE_MASK = common dso_local global i32 0, align 4
@DETILE_ARID_IN_ARIDR = common dso_local global i32 0, align 4
@DTRC_F0_CTRL = common dso_local global i64 0, align 8
@DTRC_DECOMPRESS_BYPASS = common dso_local global i32 0, align 4
@DTRC_F1_CTRL = common dso_local global i64 0, align 8
@DTRC_ARID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_vou_hw*)* @vou_dtrc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vou_dtrc_init(%struct.zx_vou_hw* %0) #0 {
  %2 = alloca %struct.zx_vou_hw*, align 8
  store %struct.zx_vou_hw* %0, %struct.zx_vou_hw** %2, align 8
  %3 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %4 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DTRC_DETILE_CTRL, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @TILE2RASTESCAN_BYPASS_MODE, align 4
  %9 = call i32 @zx_writel_mask(i64 %7, i32 %8, i32 0)
  %10 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %11 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DTRC_DETILE_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @DETILE_ARIDR_MODE_MASK, align 4
  %16 = load i32, i32* @DETILE_ARID_IN_ARIDR, align 4
  %17 = call i32 @zx_writel_mask(i64 %14, i32 %15, i32 %16)
  %18 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %19 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DTRC_F0_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @DTRC_DECOMPRESS_BYPASS, align 4
  %24 = load i32, i32* @DTRC_DECOMPRESS_BYPASS, align 4
  %25 = call i32 @zx_writel_mask(i64 %22, i32 %23, i32 %24)
  %26 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %27 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DTRC_F1_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @DTRC_DECOMPRESS_BYPASS, align 4
  %32 = load i32, i32* @DTRC_DECOMPRESS_BYPASS, align 4
  %33 = call i32 @zx_writel_mask(i64 %30, i32 %31, i32 %32)
  %34 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %35 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DTRC_ARID, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @DTRC_ARID3(i32 15)
  %40 = call i32 @DTRC_ARID2(i32 14)
  %41 = or i32 %39, %40
  %42 = call i32 @DTRC_ARID1(i32 15)
  %43 = or i32 %41, %42
  %44 = call i32 @DTRC_ARID0(i32 14)
  %45 = or i32 %43, %44
  %46 = call i32 @zx_writel(i64 %38, i32 %45)
  ret void
}

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local i32 @DTRC_ARID3(i32) #1

declare dso_local i32 @DTRC_ARID2(i32) #1

declare dso_local i32 @DTRC_ARID1(i32) #1

declare dso_local i32 @DTRC_ARID0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
