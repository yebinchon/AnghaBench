; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_descq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_descq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_v2_device = type { i64, i64, i32 }

@MV_XOR_V2_DESC_NUM = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_SIZE_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_DMA_DESQ_BALR_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_DMA_DESQ_BAHR_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_DMA_DESQ_ARATTR_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_DMA_DESQ_ATTR_CACHE_MASK = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_ATTR_OUTER_SHAREABLE = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_ATTR_CACHEABLE = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_AWATTR_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_RD_VAL = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_RD_SHIFT = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_WR_VAL = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_WR_SHIFT = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL_RD_BURST_LEN_VAL = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL_RD_BURST_LEN_SHIFT = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL_WR_BURST_LEN_VAL = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL_WR_BURST_LEN_SHIFT = common dso_local global i32 0, align 4
@MV_XOR_V2_GLOB_BW_CTRL = common dso_local global i64 0, align 8
@MV_XOR_V2_GLOB_PAUSE = common dso_local global i64 0, align 8
@MV_XOR_V2_GLOB_PAUSE_AXI_TIME_DIS_VAL = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_STOP_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_xor_v2_device*)* @mv_xor_v2_descq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_v2_descq_init(%struct.mv_xor_v2_device* %0) #0 {
  %2 = alloca %struct.mv_xor_v2_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_xor_v2_device* %0, %struct.mv_xor_v2_device** %2, align 8
  %4 = load i32, i32* @MV_XOR_V2_DESC_NUM, align 4
  %5 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %6 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MV_XOR_V2_DMA_DESQ_SIZE_OFF, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %4, i64 %9)
  %11 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %12 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @lower_32_bits(i32 %13)
  %15 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %16 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MV_XOR_V2_DMA_DESQ_BALR_OFF, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %22 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @upper_32_bits(i32 %23)
  %25 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %26 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MV_XOR_V2_DMA_DESQ_BAHR_OFF, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %32 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MV_XOR_V2_DMA_DESQ_ARATTR_OFF, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @MV_XOR_V2_DMA_DESQ_ATTR_CACHE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @MV_XOR_V2_DMA_DESQ_ATTR_OUTER_SHAREABLE, align 4
  %42 = load i32, i32* @MV_XOR_V2_DMA_DESQ_ATTR_CACHEABLE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %48 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MV_XOR_V2_DMA_DESQ_ARATTR_OFF, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %54 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MV_XOR_V2_DMA_DESQ_AWATTR_OFF, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @MV_XOR_V2_DMA_DESQ_ATTR_CACHE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @MV_XOR_V2_DMA_DESQ_ATTR_OUTER_SHAREABLE, align 4
  %64 = load i32, i32* @MV_XOR_V2_DMA_DESQ_ATTR_CACHEABLE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %70 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MV_XOR_V2_DMA_DESQ_AWATTR_OFF, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_RD_VAL, align 4
  %76 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_RD_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_WR_VAL, align 4
  %79 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_NUM_OSTD_WR_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %77, %80
  %82 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_RD_BURST_LEN_VAL, align 4
  %83 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_RD_BURST_LEN_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %81, %84
  %86 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_WR_BURST_LEN_VAL, align 4
  %87 = load i32, i32* @MV_XOR_V2_GLOB_BW_CTRL_WR_BURST_LEN_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %85, %88
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %92 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MV_XOR_V2_GLOB_BW_CTRL, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %98 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MV_XOR_V2_GLOB_PAUSE, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @readl(i64 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* @MV_XOR_V2_GLOB_PAUSE_AXI_TIME_DIS_VAL, align 4
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %108 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MV_XOR_V2_GLOB_PAUSE, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %114 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MV_XOR_V2_DMA_DESQ_STOP_OFF, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 0, i64 %117)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
