; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fmt[0x%x]\0A\00", align 1
@GSC_IN_CON = common dso_local global i32 0, align 4
@GSC_IN_RGB_TYPE_MASK = common dso_local global i32 0, align 4
@GSC_IN_YUV422_1P_ORDER_MASK = common dso_local global i32 0, align 4
@GSC_IN_CHROMA_ORDER_MASK = common dso_local global i32 0, align 4
@GSC_IN_FORMAT_MASK = common dso_local global i32 0, align 4
@GSC_IN_TILE_TYPE_MASK = common dso_local global i32 0, align 4
@GSC_IN_TILE_MODE = common dso_local global i32 0, align 4
@GSC_IN_CHROM_STRIDE_SEL_MASK = common dso_local global i32 0, align 4
@GSC_IN_RB_SWAP_MASK = common dso_local global i32 0, align 4
@GSC_IN_RGB565 = common dso_local global i32 0, align 4
@GSC_IN_XRGB8888 = common dso_local global i32 0, align 4
@GSC_IN_RB_SWAP = common dso_local global i32 0, align 4
@GSC_IN_YUV422_1P = common dso_local global i32 0, align 4
@GSC_IN_YUV422_1P_ORDER_LSB_Y = common dso_local global i32 0, align 4
@GSC_IN_CHROMA_ORDER_CBCR = common dso_local global i32 0, align 4
@GSC_IN_CHROMA_ORDER_CRCB = common dso_local global i32 0, align 4
@GSC_IN_YUV422_1P_OEDER_LSB_C = common dso_local global i32 0, align 4
@GSC_IN_YUV420_2P = common dso_local global i32 0, align 4
@GSC_IN_YUV422_2P = common dso_local global i32 0, align 4
@GSC_IN_YUV422_3P = common dso_local global i32 0, align 4
@GSC_IN_YUV420_3P = common dso_local global i32 0, align 4
@GSC_IN_TILE_C_16x8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, i32, i32)* @gsc_src_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_src_set_fmt(%struct.gsc_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gsc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gsc_context*, %struct.gsc_context** %4, align 8
  %9 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @DRM_DEV_DEBUG_KMS(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @GSC_IN_CON, align 4
  %14 = call i32 @gsc_read(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @GSC_IN_RGB_TYPE_MASK, align 4
  %16 = load i32, i32* @GSC_IN_YUV422_1P_ORDER_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @GSC_IN_CHROMA_ORDER_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GSC_IN_FORMAT_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GSC_IN_TILE_TYPE_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GSC_IN_TILE_MODE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GSC_IN_CHROM_STRIDE_SEL_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GSC_IN_RB_SWAP_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %120 [
    i32 136, label %34
    i32 133, label %38
    i32 142, label %38
    i32 141, label %42
    i32 130, label %48
    i32 128, label %56
    i32 135, label %64
    i32 134, label %72
    i32 138, label %80
    i32 137, label %86
    i32 131, label %92
    i32 132, label %96
    i32 129, label %102
    i32 140, label %108
    i32 139, label %114
  ]

34:                                               ; preds = %3
  %35 = load i32, i32* @GSC_IN_RGB565, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %120

38:                                               ; preds = %3, %3
  %39 = load i32, i32* @GSC_IN_XRGB8888, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %120

42:                                               ; preds = %3
  %43 = load i32, i32* @GSC_IN_XRGB8888, align 4
  %44 = load i32, i32* @GSC_IN_RB_SWAP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %120

48:                                               ; preds = %3
  %49 = load i32, i32* @GSC_IN_YUV422_1P, align 4
  %50 = load i32, i32* @GSC_IN_YUV422_1P_ORDER_LSB_Y, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @GSC_IN_CHROMA_ORDER_CBCR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %120

56:                                               ; preds = %3
  %57 = load i32, i32* @GSC_IN_YUV422_1P, align 4
  %58 = load i32, i32* @GSC_IN_YUV422_1P_ORDER_LSB_Y, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @GSC_IN_CHROMA_ORDER_CRCB, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %120

64:                                               ; preds = %3
  %65 = load i32, i32* @GSC_IN_YUV422_1P, align 4
  %66 = load i32, i32* @GSC_IN_YUV422_1P_OEDER_LSB_C, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @GSC_IN_CHROMA_ORDER_CBCR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %120

72:                                               ; preds = %3
  %73 = load i32, i32* @GSC_IN_YUV422_1P, align 4
  %74 = load i32, i32* @GSC_IN_YUV422_1P_OEDER_LSB_C, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GSC_IN_CHROMA_ORDER_CRCB, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %120

80:                                               ; preds = %3
  %81 = load i32, i32* @GSC_IN_CHROMA_ORDER_CRCB, align 4
  %82 = load i32, i32* @GSC_IN_YUV420_2P, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %120

86:                                               ; preds = %3
  %87 = load i32, i32* @GSC_IN_CHROMA_ORDER_CRCB, align 4
  %88 = load i32, i32* @GSC_IN_YUV422_2P, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %120

92:                                               ; preds = %3
  %93 = load i32, i32* @GSC_IN_YUV422_3P, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %120

96:                                               ; preds = %3
  %97 = load i32, i32* @GSC_IN_CHROMA_ORDER_CBCR, align 4
  %98 = load i32, i32* @GSC_IN_YUV420_3P, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %120

102:                                              ; preds = %3
  %103 = load i32, i32* @GSC_IN_CHROMA_ORDER_CRCB, align 4
  %104 = load i32, i32* @GSC_IN_YUV420_3P, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %120

108:                                              ; preds = %3
  %109 = load i32, i32* @GSC_IN_CHROMA_ORDER_CBCR, align 4
  %110 = load i32, i32* @GSC_IN_YUV420_2P, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %120

114:                                              ; preds = %3
  %115 = load i32, i32* @GSC_IN_CHROMA_ORDER_CBCR, align 4
  %116 = load i32, i32* @GSC_IN_YUV422_2P, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %3, %114, %108, %102, %96, %92, %86, %80, %72, %64, %56, %48, %42, %38, %34
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* @GSC_IN_TILE_C_16x8, align 4
  %125 = load i32, i32* @GSC_IN_TILE_MODE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @GSC_IN_CON, align 4
  %132 = call i32 @gsc_write(i32 %130, i32 %131)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
