; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_config_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_config_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mmp_tdma_chan = type { i64, i64, i32, i32, i64, i32 }

@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@TDCR_DSTDIR_ADDR_HOLD = common dso_local global i32 0, align 4
@TDCR_SRCDIR_ADDR_INC = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@TDCR_SRCDIR_ADDR_HOLD = common dso_local global i32 0, align 4
@TDCR_DSTDIR_ADDR_INC = common dso_local global i32 0, align 4
@MMP_AUD_TDMA = common dso_local global i64 0, align 8
@TDCR_PACKMOD = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_4B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_8B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_16B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_32B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_64B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_128B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mmp_tdma: unknown burst size.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TDCR_SSZ_8_BITS = common dso_local global i32 0, align 4
@TDCR_SSZ_16_BITS = common dso_local global i32 0, align 4
@TDCR_SSZ_32_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"mmp_tdma: unknown bus size.\0A\00", align 1
@PXA910_SQU = common dso_local global i64 0, align 8
@TDCR_SSPMOD = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_SQU_1B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_SQU_2B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_SQU_4B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_SQU_8B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_SQU_16B = common dso_local global i32 0, align 4
@TDCR_BURSTSZ_SQU_32B = common dso_local global i32 0, align 4
@TDCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mmp_tdma_config_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_tdma_config_chan(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mmp_tdma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan* %6)
  store %struct.mmp_tdma_chan* %7, %struct.mmp_tdma_chan** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = call i32 @mmp_tdma_disable_chan(%struct.dma_chan* %8)
  %10 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @TDCR_DSTDIR_ADDR_HOLD, align 4
  %17 = load i32, i32* @TDCR_SRCDIR_ADDR_INC, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %21 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @TDCR_SRCDIR_ADDR_HOLD, align 4
  %27 = load i32, i32* @TDCR_DSTDIR_ADDR_INC, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %32 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMP_AUD_TDMA, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %30
  %37 = load i32, i32* @TDCR_PACKMOD, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %41 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %67 [
    i32 4, label %43
    i32 8, label %47
    i32 16, label %51
    i32 32, label %55
    i32 64, label %59
    i32 128, label %63
  ]

43:                                               ; preds = %36
  %44 = load i32, i32* @TDCR_BURSTSZ_4B, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %74

47:                                               ; preds = %36
  %48 = load i32, i32* @TDCR_BURSTSZ_8B, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %74

51:                                               ; preds = %36
  %52 = load i32, i32* @TDCR_BURSTSZ_16B, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %74

55:                                               ; preds = %36
  %56 = load i32, i32* @TDCR_BURSTSZ_32B, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %74

59:                                               ; preds = %36
  %60 = load i32, i32* @TDCR_BURSTSZ_64B, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %74

63:                                               ; preds = %36
  %64 = load i32, i32* @TDCR_BURSTSZ_128B, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %74

67:                                               ; preds = %36
  %68 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %69 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %152

74:                                               ; preds = %63, %59, %55, %51, %47, %43
  %75 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %76 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %90 [
    i32 130, label %78
    i32 129, label %82
    i32 128, label %86
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @TDCR_SSZ_8_BITS, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %97

82:                                               ; preds = %74
  %83 = load i32, i32* @TDCR_SSZ_16_BITS, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %97

86:                                               ; preds = %74
  %87 = load i32, i32* @TDCR_SSZ_32_BITS, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %97

90:                                               ; preds = %74
  %91 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %92 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %152

97:                                               ; preds = %86, %82, %78
  br label %144

98:                                               ; preds = %30
  %99 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %100 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PXA910_SQU, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %98
  %105 = load i32, i32* @TDCR_SSPMOD, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %109 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %135 [
    i32 1, label %111
    i32 2, label %115
    i32 4, label %119
    i32 8, label %123
    i32 16, label %127
    i32 32, label %131
  ]

111:                                              ; preds = %104
  %112 = load i32, i32* @TDCR_BURSTSZ_SQU_1B, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %142

115:                                              ; preds = %104
  %116 = load i32, i32* @TDCR_BURSTSZ_SQU_2B, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %142

119:                                              ; preds = %104
  %120 = load i32, i32* @TDCR_BURSTSZ_SQU_4B, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %142

123:                                              ; preds = %104
  %124 = load i32, i32* @TDCR_BURSTSZ_SQU_8B, align 4
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %142

127:                                              ; preds = %104
  %128 = load i32, i32* @TDCR_BURSTSZ_SQU_16B, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %142

131:                                              ; preds = %104
  %132 = load i32, i32* @TDCR_BURSTSZ_SQU_32B, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %142

135:                                              ; preds = %104
  %136 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %137 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %152

142:                                              ; preds = %131, %127, %123, %119, %115, %111
  br label %143

143:                                              ; preds = %142, %98
  br label %144

144:                                              ; preds = %143, %97
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %147 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @TDCR, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 %145, i64 %150)
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %144, %135, %90, %67
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @mmp_tdma_disable_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
