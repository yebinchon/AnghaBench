; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, i32, i32, i32, i32*, i64, %struct.TYPE_2__*, i64, i8* }
%struct.TYPE_2__ = type { i32, i64 }

@SDMA_H_C0PTR = common dso_local global i64 0, align 8
@MAX_DMA_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SDMA_CHNPRI_0 = common dso_local global i64 0, align 8
@SDMA_CHN0ADDR = common dso_local global i64 0, align 8
@SDMA_H_CONFIG_ACR = common dso_local global i32 0, align 4
@SDMA_H_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"initialisation failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*)* @sdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_init(%struct.sdma_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %8 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_enable(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %202

15:                                               ; preds = %1
  %16 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %17 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_enable(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %191

23:                                               ; preds = %15
  %24 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %25 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %24, i32 0, i32 7
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %32 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @clk_get_rate(i32 %33)
  %35 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %36 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @clk_get_rate(i32 %37)
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %42 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %30, %23
  %44 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %45 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SDMA_H_C0PTR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i32 0, i64 %48)
  %50 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %51 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MAX_DMA_CHANNELS, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = add i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i64 @dma_alloc_coherent(i32 %52, i32 %57, i32* %6, i32 %58)
  %60 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %61 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %60, i32 0, i32 8
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %63 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %43
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %186

69:                                               ; preds = %43
  %70 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %71 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load i32, i32* @MAX_DMA_CHANNELS, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = getelementptr i8, i8* %73, i64 %76
  %78 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %79 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* @MAX_DMA_CHANNELS, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = add i64 %81, %84
  %86 = trunc i64 %85 to i32
  %87 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %88 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %106, %69
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %92 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %91, i32 0, i32 7
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %99 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @chnenbl_ofs(%struct.sdma_engine* %101, i32 %102)
  %104 = add nsw i64 %100, %103
  %105 = call i32 @writel_relaxed(i32 0, i64 %104)
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %89

109:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %125, %109
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @MAX_DMA_CHANNELS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %116 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SDMA_CHNPRI_0, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i32, i32* %4, align 4
  %121 = mul nsw i32 %120, 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %119, %122
  %124 = call i32 @writel_relaxed(i32 0, i64 %123)
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %110

128:                                              ; preds = %110
  %129 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %130 = call i32 @sdma_request_channel0(%struct.sdma_engine* %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %186

134:                                              ; preds = %128
  %135 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %136 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = call i32 @sdma_config_ownership(i32* %138, i32 0, i32 1, i32 0)
  %140 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %141 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SDMA_CHN0ADDR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel_relaxed(i32 16464, i64 %144)
  %146 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %147 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %134
  %151 = load i32, i32* @SDMA_H_CONFIG_ACR, align 4
  %152 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %153 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SDMA_H_CONFIG, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel_relaxed(i32 %151, i64 %156)
  br label %165

158:                                              ; preds = %134
  %159 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %160 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SDMA_H_CONFIG, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel_relaxed(i32 0, i64 %163)
  br label %165

165:                                              ; preds = %158, %150
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %168 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SDMA_H_C0PTR, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel_relaxed(i32 %166, i64 %171)
  %173 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %174 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = call i32 @sdma_set_channel_priority(i32* %176, i32 7)
  %178 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %179 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @clk_disable(i32 %180)
  %182 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %183 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @clk_disable(i32 %184)
  store i32 0, i32* %2, align 4
  br label %202

186:                                              ; preds = %133, %66
  %187 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %188 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @clk_disable(i32 %189)
  br label %191

191:                                              ; preds = %186, %22
  %192 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %193 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @clk_disable(i32 %194)
  %196 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %197 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @dev_err(i32 %198, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %5, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %191, %165, %13
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i64 @chnenbl_ofs(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_request_channel0(%struct.sdma_engine*) #1

declare dso_local i32 @sdma_config_ownership(i32*, i32, i32, i32) #1

declare dso_local i32 @sdma_set_channel_priority(i32*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
