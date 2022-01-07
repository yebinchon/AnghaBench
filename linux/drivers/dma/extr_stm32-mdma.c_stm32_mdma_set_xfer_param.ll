; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_set_xfer_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_set_xfer_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_mdma_chan = type { i32, i32, i32, %struct.TYPE_2__, %struct.stm32_mdma_chan_config }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.stm32_mdma_chan_config = type { i32, i32, i32 }
%struct.stm32_mdma_device = type { i32 }

@STM32_MDMA_CTCR_SWRM = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_CFG_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_LEN2_MSK = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_PKE = common dso_local global i32 0, align 4
@STM32_MDMA_MAX_BURST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"burst size * bus width higher than %d bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"burst size must be a power of 2\0A\00", align 1
@STM32_MDMA_CCR_SWRQ = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_WEX = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_HEX = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_BEX = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_PL_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTBR_TSEL_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_DSIZE_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_DBURST_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_SSIZE_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_SINCOS_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_MAX_BUF_LEN = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_SBURST_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTBR_DBUS = common dso_local global i32 0, align 4
@STM32_MDMA_CTCR_DINCOS_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CTBR_SBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Dma direction is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_mdma_chan*, i32, i32*, i32*, i32*, i32, i32)* @stm32_mdma_set_xfer_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_mdma_set_xfer_param(%struct.stm32_mdma_chan* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.stm32_mdma_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.stm32_mdma_device*, align 8
  %17 = alloca %struct.stm32_mdma_chan_config*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.stm32_mdma_chan* %0, %struct.stm32_mdma_chan** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %32 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %33 = call %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan* %32)
  store %struct.stm32_mdma_device* %33, %struct.stm32_mdma_device** %16, align 8
  %34 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %35 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %34, i32 0, i32 4
  store %struct.stm32_mdma_chan_config* %35, %struct.stm32_mdma_chan_config** %17, align 8
  %36 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %37 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %41 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %19, align 4
  %44 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %45 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %24, align 4
  %48 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %49 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %25, align 4
  %52 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %16, align 8
  %53 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %54 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @STM32_MDMA_CCR(i32 %55)
  %57 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %52, i32 %56)
  store i32 %57, i32* %28, align 4
  %58 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %16, align 8
  %59 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %60 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @STM32_MDMA_CTCR(i32 %61)
  %63 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %58, i32 %62)
  store i32 %63, i32* %29, align 4
  %64 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %16, align 8
  %65 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %66 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @STM32_MDMA_CTBR(i32 %67)
  %69 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %64, i32 %68)
  store i32 %69, i32* %30, align 4
  %70 = load i32, i32* @STM32_MDMA_CTCR_SWRM, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %29, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %29, align 4
  %74 = load i32, i32* @STM32_MDMA_CTCR_CFG_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %29, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %29, align 4
  %78 = load %struct.stm32_mdma_chan_config*, %struct.stm32_mdma_chan_config** %17, align 8
  %79 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @STM32_MDMA_CTCR_CFG_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %29, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %29, align 4
  %85 = load i32, i32* %29, align 4
  %86 = call i32 @STM32_MDMA_CTCR_LEN2_GET(i32 %85)
  store i32 %86, i32* %31, align 4
  %87 = load i32, i32* @STM32_MDMA_CTCR_LEN2_MSK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %29, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %29, align 4
  %91 = load i32, i32* %31, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @STM32_MDMA_CTCR_TLEN(i32 %92)
  %94 = load i32, i32* %29, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %29, align 4
  %96 = load i32, i32* @STM32_MDMA_CTCR_PKE, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %29, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %29, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %18, align 4
  %102 = mul i32 %100, %101
  %103 = load i32, i32* @STM32_MDMA_MAX_BURST, align 4
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %7
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %19, align 4
  %108 = mul i32 %106, %107
  %109 = load i32, i32* @STM32_MDMA_MAX_BURST, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105, %7
  %112 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %113 = call i32 @chan2dev(%struct.stm32_mdma_chan* %112)
  %114 = load i32, i32* @STM32_MDMA_MAX_BURST, align 4
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %385

118:                                              ; preds = %105
  %119 = load i32, i32* %24, align 4
  %120 = call i32 @is_power_of_2(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %24, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %25, align 4
  %127 = call i32 @is_power_of_2(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %25, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129, %122
  %133 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %134 = call i32 @chan2dev(%struct.stm32_mdma_chan* %133)
  %135 = call i32 (i32, i8*, ...) @dev_err(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %385

138:                                              ; preds = %129, %125
  %139 = load i32, i32* @STM32_MDMA_CCR_SWRQ, align 4
  %140 = load i32, i32* @STM32_MDMA_CCR_WEX, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @STM32_MDMA_CCR_HEX, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @STM32_MDMA_CCR_BEX, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @STM32_MDMA_CCR_PL_MASK, align 4
  %147 = or i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %28, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %28, align 4
  %151 = load %struct.stm32_mdma_chan_config*, %struct.stm32_mdma_chan_config** %17, align 8
  %152 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @STM32_MDMA_CCR_PL(i32 %153)
  %155 = load i32, i32* %28, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %28, align 4
  %157 = load i32, i32* @STM32_MDMA_CTBR_TSEL_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %30, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %30, align 4
  %161 = load %struct.stm32_mdma_chan_config*, %struct.stm32_mdma_chan_config** %17, align 8
  %162 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @STM32_MDMA_CTBR_TSEL(i32 %163)
  %165 = load i32, i32* %30, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %30, align 4
  %167 = load i32, i32* %10, align 4
  switch i32 %167, label %372 [
    i32 128, label %168
    i32 129, label %273
  ]

168:                                              ; preds = %138
  %169 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %170 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %21, align 4
  %173 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %174 = load i32, i32* %19, align 4
  %175 = call i32 @stm32_mdma_get_width(%struct.stm32_mdma_chan* %173, i32 %174)
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = load i32, i32* %23, align 4
  store i32 %179, i32* %8, align 4
  br label %385

180:                                              ; preds = %168
  %181 = load i32, i32* @STM32_MDMA_CTCR_DSIZE_MASK, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %29, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %29, align 4
  %185 = load i32, i32* %23, align 4
  %186 = call i32 @STM32_MDMA_CTCR_DSIZE(i32 %185)
  %187 = load i32, i32* %29, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %29, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %31, align 4
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %19, align 4
  %193 = call i32 @stm32_mdma_get_best_burst(i32 %189, i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %27, align 4
  %195 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %196 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @STM32_MDMA_CTCR_DBURST_MASK, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %29, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %29, align 4
  %201 = load i32, i32* %27, align 4
  %202 = call i32 @ilog2(i32 %201)
  %203 = call i32 @STM32_MDMA_CTCR_DBURST(i32 %202)
  %204 = load i32, i32* %29, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %29, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %31, align 4
  %209 = call i32 @stm32_mdma_get_max_width(i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %18, align 4
  %211 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %212 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @stm32_mdma_get_width(%struct.stm32_mdma_chan* %213, i32 %214)
  store i32 %215, i32* %22, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %180
  %219 = load i32, i32* %22, align 4
  store i32 %219, i32* %8, align 4
  br label %385

220:                                              ; preds = %180
  %221 = load i32, i32* @STM32_MDMA_CTCR_SSIZE_MASK, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* @STM32_MDMA_CTCR_SINCOS_MASK, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* %29, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %29, align 4
  %227 = load i32, i32* %22, align 4
  %228 = call i32 @STM32_MDMA_CTCR_SSIZE(i32 %227)
  %229 = load i32, i32* %22, align 4
  %230 = call i32 @STM32_MDMA_CTCR_SINCOS(i32 %229)
  %231 = or i32 %228, %230
  %232 = load i32, i32* %29, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %29, align 4
  %234 = load i32, i32* @STM32_MDMA_MAX_BUF_LEN, align 4
  %235 = load i32, i32* %18, align 4
  %236 = udiv i32 %234, %235
  store i32 %236, i32* %24, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %31, align 4
  %239 = load i32, i32* %24, align 4
  %240 = load i32, i32* %18, align 4
  %241 = call i32 @stm32_mdma_get_best_burst(i32 %237, i32 %238, i32 %239, i32 %240)
  store i32 %241, i32* %26, align 4
  %242 = load i32, i32* %26, align 4
  %243 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %244 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @STM32_MDMA_CTCR_SBURST_MASK, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %29, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %29, align 4
  %249 = load i32, i32* %26, align 4
  %250 = call i32 @ilog2(i32 %249)
  %251 = call i32 @STM32_MDMA_CTCR_SBURST(i32 %250)
  %252 = load i32, i32* %29, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %29, align 4
  %254 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %16, align 8
  %255 = load i32, i32* @STM32_MDMA_CTBR_DBUS, align 4
  %256 = load i32, i32* %21, align 4
  %257 = call i32 @stm32_mdma_set_bus(%struct.stm32_mdma_device* %254, i32* %30, i32 %255, i32 %256)
  %258 = load i32, i32* %23, align 4
  %259 = load i32, i32* %22, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %220
  %262 = load i32, i32* @STM32_MDMA_CTCR_PKE, align 4
  %263 = load i32, i32* %29, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %29, align 4
  br label %265

265:                                              ; preds = %261, %220
  %266 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %16, align 8
  %267 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %268 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @STM32_MDMA_CDAR(i32 %269)
  %271 = load i32, i32* %21, align 4
  %272 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %266, i32 %270, i32 %271)
  br label %378

273:                                              ; preds = %138
  %274 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %275 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %20, align 4
  %278 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %279 = load i32, i32* %18, align 4
  %280 = call i32 @stm32_mdma_get_width(%struct.stm32_mdma_chan* %278, i32 %279)
  store i32 %280, i32* %22, align 4
  %281 = load i32, i32* %22, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %273
  %284 = load i32, i32* %22, align 4
  store i32 %284, i32* %8, align 4
  br label %385

285:                                              ; preds = %273
  %286 = load i32, i32* @STM32_MDMA_CTCR_SSIZE_MASK, align 4
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %29, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %29, align 4
  %290 = load i32, i32* %22, align 4
  %291 = call i32 @STM32_MDMA_CTCR_SSIZE(i32 %290)
  %292 = load i32, i32* %29, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %29, align 4
  %294 = load i32, i32* %15, align 4
  %295 = load i32, i32* %31, align 4
  %296 = load i32, i32* %24, align 4
  %297 = load i32, i32* %18, align 4
  %298 = call i32 @stm32_mdma_get_best_burst(i32 %294, i32 %295, i32 %296, i32 %297)
  store i32 %298, i32* %26, align 4
  %299 = load i32, i32* @STM32_MDMA_CTCR_SBURST_MASK, align 4
  %300 = xor i32 %299, -1
  %301 = load i32, i32* %29, align 4
  %302 = and i32 %301, %300
  store i32 %302, i32* %29, align 4
  %303 = load i32, i32* %26, align 4
  %304 = call i32 @ilog2(i32 %303)
  %305 = call i32 @STM32_MDMA_CTCR_SBURST(i32 %304)
  %306 = load i32, i32* %29, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %29, align 4
  %308 = load i32, i32* %14, align 4
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* %31, align 4
  %311 = call i32 @stm32_mdma_get_max_width(i32 %308, i32 %309, i32 %310)
  store i32 %311, i32* %19, align 4
  %312 = load i32, i32* %19, align 4
  %313 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %314 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 4
  %315 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %316 = load i32, i32* %19, align 4
  %317 = call i32 @stm32_mdma_get_width(%struct.stm32_mdma_chan* %315, i32 %316)
  store i32 %317, i32* %23, align 4
  %318 = load i32, i32* %23, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %285
  %321 = load i32, i32* %23, align 4
  store i32 %321, i32* %8, align 4
  br label %385

322:                                              ; preds = %285
  %323 = load i32, i32* @STM32_MDMA_CTCR_DSIZE_MASK, align 4
  %324 = load i32, i32* @STM32_MDMA_CTCR_DINCOS_MASK, align 4
  %325 = or i32 %323, %324
  %326 = xor i32 %325, -1
  %327 = load i32, i32* %29, align 4
  %328 = and i32 %327, %326
  store i32 %328, i32* %29, align 4
  %329 = load i32, i32* %23, align 4
  %330 = call i32 @STM32_MDMA_CTCR_DSIZE(i32 %329)
  %331 = load i32, i32* %23, align 4
  %332 = call i32 @STM32_MDMA_CTCR_DINCOS(i32 %331)
  %333 = or i32 %330, %332
  %334 = load i32, i32* %29, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %29, align 4
  %336 = load i32, i32* @STM32_MDMA_MAX_BUF_LEN, align 4
  %337 = load i32, i32* %19, align 4
  %338 = udiv i32 %336, %337
  store i32 %338, i32* %25, align 4
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* %31, align 4
  %341 = load i32, i32* %25, align 4
  %342 = load i32, i32* %19, align 4
  %343 = call i32 @stm32_mdma_get_best_burst(i32 %339, i32 %340, i32 %341, i32 %342)
  store i32 %343, i32* %27, align 4
  %344 = load i32, i32* @STM32_MDMA_CTCR_DBURST_MASK, align 4
  %345 = xor i32 %344, -1
  %346 = load i32, i32* %29, align 4
  %347 = and i32 %346, %345
  store i32 %347, i32* %29, align 4
  %348 = load i32, i32* %27, align 4
  %349 = call i32 @ilog2(i32 %348)
  %350 = call i32 @STM32_MDMA_CTCR_DBURST(i32 %349)
  %351 = load i32, i32* %29, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %29, align 4
  %353 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %16, align 8
  %354 = load i32, i32* @STM32_MDMA_CTBR_SBUS, align 4
  %355 = load i32, i32* %20, align 4
  %356 = call i32 @stm32_mdma_set_bus(%struct.stm32_mdma_device* %353, i32* %30, i32 %354, i32 %355)
  %357 = load i32, i32* %23, align 4
  %358 = load i32, i32* %22, align 4
  %359 = icmp ne i32 %357, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %322
  %361 = load i32, i32* @STM32_MDMA_CTCR_PKE, align 4
  %362 = load i32, i32* %29, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %29, align 4
  br label %364

364:                                              ; preds = %360, %322
  %365 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %16, align 8
  %366 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %367 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @STM32_MDMA_CSAR(i32 %368)
  %370 = load i32, i32* %20, align 4
  %371 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %365, i32 %369, i32 %370)
  br label %378

372:                                              ; preds = %138
  %373 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %9, align 8
  %374 = call i32 @chan2dev(%struct.stm32_mdma_chan* %373)
  %375 = call i32 (i32, i8*, ...) @dev_err(i32 %374, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %376 = load i32, i32* @EINVAL, align 4
  %377 = sub nsw i32 0, %376
  store i32 %377, i32* %8, align 4
  br label %385

378:                                              ; preds = %364, %265
  %379 = load i32, i32* %28, align 4
  %380 = load i32*, i32** %11, align 8
  store i32 %379, i32* %380, align 4
  %381 = load i32, i32* %29, align 4
  %382 = load i32*, i32** %12, align 8
  store i32 %381, i32* %382, align 4
  %383 = load i32, i32* %30, align 4
  %384 = load i32*, i32** %13, align 8
  store i32 %383, i32* %384, align 4
  store i32 0, i32* %8, align 4
  br label %385

385:                                              ; preds = %378, %372, %320, %283, %218, %178, %132, %111
  %386 = load i32, i32* %8, align 4
  ret i32 %386
}

declare dso_local %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @stm32_mdma_read(%struct.stm32_mdma_device*, i32) #1

declare dso_local i32 @STM32_MDMA_CCR(i32) #1

declare dso_local i32 @STM32_MDMA_CTCR(i32) #1

declare dso_local i32 @STM32_MDMA_CTBR(i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_LEN2_GET(i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_TLEN(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @STM32_MDMA_CCR_PL(i32) #1

declare dso_local i32 @STM32_MDMA_CTBR_TSEL(i32) #1

declare dso_local i32 @stm32_mdma_get_width(%struct.stm32_mdma_chan*, i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_DSIZE(i32) #1

declare dso_local i32 @stm32_mdma_get_best_burst(i32, i32, i32, i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_DBURST(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @stm32_mdma_get_max_width(i32, i32, i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_SSIZE(i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_SINCOS(i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_SBURST(i32) #1

declare dso_local i32 @stm32_mdma_set_bus(%struct.stm32_mdma_device*, i32*, i32, i32) #1

declare dso_local i32 @stm32_mdma_write(%struct.stm32_mdma_device*, i32, i32) #1

declare dso_local i32 @STM32_MDMA_CDAR(i32) #1

declare dso_local i32 @STM32_MDMA_CTCR_DINCOS(i32) #1

declare dso_local i32 @STM32_MDMA_CSAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
