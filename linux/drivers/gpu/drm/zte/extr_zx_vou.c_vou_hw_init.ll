; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_vou_hw = type { i64, i64, i64, i64 }

@VOU_SOFT_RST = common dso_local global i64 0, align 8
@VOU_CLK_EN = common dso_local global i64 0, align 8
@OSD_INT_CLRSTA = common dso_local global i64 0, align 8
@TIMING_INT_STATE = common dso_local global i64 0, align 8
@OSD_INT_MSK = common dso_local global i64 0, align 8
@OSD_INT_ENABLE = common dso_local global i32 0, align 4
@TIMING_INT_CTRL = common dso_local global i64 0, align 8
@TIMING_INT_ENABLE = common dso_local global i32 0, align 4
@OTFPPU_RSZ_DATA_SOURCE = common dso_local global i64 0, align 8
@OSD_RST_CLR = common dso_local global i64 0, align 8
@RST_PER_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_vou_hw*)* @vou_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vou_hw_init(%struct.zx_vou_hw* %0) #0 {
  %2 = alloca %struct.zx_vou_hw*, align 8
  store %struct.zx_vou_hw* %0, %struct.zx_vou_hw** %2, align 8
  %3 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %4 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @VOU_SOFT_RST, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @zx_writel(i64 %7, i32 -1)
  %9 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %10 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VOU_CLK_EN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @zx_writel(i64 %13, i32 -1)
  %15 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %16 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OSD_INT_CLRSTA, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @zx_writel(i64 %19, i32 -1)
  %21 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %22 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TIMING_INT_STATE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @zx_writel(i64 %25, i32 -1)
  %27 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %28 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OSD_INT_MSK, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @OSD_INT_ENABLE, align 4
  %33 = call i32 @zx_writel(i64 %31, i32 %32)
  %34 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %35 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TIMING_INT_CTRL, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @TIMING_INT_ENABLE, align 4
  %40 = call i32 @zx_writel(i64 %38, i32 %39)
  %41 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %42 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OTFPPU_RSZ_DATA_SOURCE, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @zx_writel(i64 %45, i32 42)
  %47 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %48 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OSD_RST_CLR, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @RST_PER_FRAME, align 4
  %53 = load i32, i32* @RST_PER_FRAME, align 4
  %54 = call i32 @zx_writel_mask(i64 %51, i32 %52, i32 %53)
  %55 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %2, align 8
  %56 = call i32 @vou_dtrc_init(%struct.zx_vou_hw* %55)
  ret void
}

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

declare dso_local i32 @vou_dtrc_init(%struct.zx_vou_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
