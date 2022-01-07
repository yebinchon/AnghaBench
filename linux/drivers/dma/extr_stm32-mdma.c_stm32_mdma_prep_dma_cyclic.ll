; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.stm32_mdma_chan = type { i32, i32, %struct.TYPE_3__*, %struct.dma_slave_config }
%struct.TYPE_3__ = type { i64 }
%struct.dma_slave_config = type { i64, i64 }
%struct.stm32_mdma_device = type { i32 }
%struct.stm32_mdma_desc = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Request not allowed when dma in cyclic mode\0A\00", align 1
@STM32_MDMA_MAX_BLOCK_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid buffer/period len\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"buf_len not multiple of period_len\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@STM32_MDMA_CTBR_SBUS = common dso_local global i32 0, align 4
@STM32_MDMA_CTBR_DBUS = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_IRQ_MASK = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_TEIE = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_CTCIE = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_BTIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @stm32_mdma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @stm32_mdma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.stm32_mdma_chan*, align 8
  %15 = alloca %struct.stm32_mdma_device*, align 8
  %16 = alloca %struct.dma_slave_config*, align 8
  %17 = alloca %struct.stm32_mdma_desc*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %27 = call %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan* %26)
  store %struct.stm32_mdma_chan* %27, %struct.stm32_mdma_chan** %14, align 8
  %28 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %29 = call %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan* %28)
  store %struct.stm32_mdma_device* %29, %struct.stm32_mdma_device** %15, align 8
  %30 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %31 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %30, i32 0, i32 3
  store %struct.dma_slave_config* %31, %struct.dma_slave_config** %16, align 8
  %32 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %33 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %6
  %37 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %38 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %45 = call i32 @chan2dev(%struct.stm32_mdma_chan* %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %219

47:                                               ; preds = %36, %6
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @STM32_MDMA_MAX_BLOCK_LEN, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %50, %47
  %58 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %59 = call i32 @chan2dev(%struct.stm32_mdma_chan* %58)
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %219

61:                                               ; preds = %53
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = urem i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %68 = call i32 @chan2dev(%struct.stm32_mdma_chan* %67)
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %219

70:                                               ; preds = %61
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = udiv i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %23, align 4
  %75 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %76 = load i32, i32* %23, align 4
  %77 = call %struct.stm32_mdma_desc* @stm32_mdma_alloc_desc(%struct.stm32_mdma_chan* %75, i32 %76)
  store %struct.stm32_mdma_desc* %77, %struct.stm32_mdma_desc** %17, align 8
  %78 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %79 = icmp ne %struct.stm32_mdma_desc* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %219

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %18, align 8
  %87 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @stm32_mdma_set_xfer_param(%struct.stm32_mdma_chan* %87, i32 %88, i32* %20, i32* %21, i32* %22, i64 %89, i64 %90)
  store i32 %91, i32* %25, align 4
  %92 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %15, align 8
  %93 = load i32, i32* @STM32_MDMA_CTBR_SBUS, align 4
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @stm32_mdma_set_bus(%struct.stm32_mdma_device* %92, i32* %22, i32 %93, i64 %94)
  br label %107

96:                                               ; preds = %81
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %19, align 8
  %98 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @stm32_mdma_set_xfer_param(%struct.stm32_mdma_chan* %98, i32 %99, i32* %20, i32* %21, i32* %22, i64 %100, i64 %101)
  store i32 %102, i32* %25, align 4
  %103 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %15, align 8
  %104 = load i32, i32* @STM32_MDMA_CTBR_DBUS, align 4
  %105 = load i64, i64* %19, align 8
  %106 = call i32 @stm32_mdma_set_bus(%struct.stm32_mdma_device* %103, i32* %22, i32 %104, i64 %105)
  br label %107

107:                                              ; preds = %96, %85
  %108 = load i32, i32* %25, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %185

111:                                              ; preds = %107
  %112 = load i32, i32* @STM32_MDMA_CCR_IRQ_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %20, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* @STM32_MDMA_CCR_TEIE, align 4
  %117 = load i32, i32* @STM32_MDMA_CCR_CTCIE, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @STM32_MDMA_CCR_BTIE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %20, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %125 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %24, align 4
  br label %126

126:                                              ; preds = %173, %111
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %176

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i64, i64* %9, align 8
  %136 = load i32, i32* %24, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %11, align 8
  %139 = mul i64 %137, %138
  %140 = add i64 %135, %139
  store i64 %140, i64* %18, align 8
  %141 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %142 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %19, align 8
  br label %154

144:                                              ; preds = %130
  %145 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %146 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %18, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i32, i32* %24, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %11, align 8
  %152 = mul i64 %150, %151
  %153 = add i64 %148, %152
  store i64 %153, i64* %19, align 8
  br label %154

154:                                              ; preds = %144, %134
  %155 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %156 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %24, align 4
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* %19, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %23, align 4
  %166 = sub nsw i32 %165, 1
  %167 = icmp eq i32 %164, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %24, align 4
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @stm32_mdma_setup_hwdesc(%struct.stm32_mdma_chan* %155, %struct.stm32_mdma_desc* %156, i32 %157, i32 %158, i64 %159, i64 %160, i64 %161, i32 %162, i32 %163, i32 %168, i32 %171, i32 1)
  br label %173

173:                                              ; preds = %154
  %174 = load i32, i32* %24, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %24, align 4
  br label %126

176:                                              ; preds = %126
  %177 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %178 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  %179 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %180 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %179, i32 0, i32 1
  %181 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %182 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %181, i32 0, i32 4
  %183 = load i64, i64* %13, align 8
  %184 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %180, i32* %182, i64 %183)
  store %struct.dma_async_tx_descriptor* %184, %struct.dma_async_tx_descriptor** %7, align 8
  br label %219

185:                                              ; preds = %110
  store i32 0, i32* %24, align 4
  br label %186

186:                                              ; preds = %213, %185
  %187 = load i32, i32* %24, align 4
  %188 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %189 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %216

192:                                              ; preds = %186
  %193 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %194 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %197 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %196, i32 0, i32 3
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i32, i32* %24, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %205 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %204, i32 0, i32 3
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %24, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @dma_pool_free(i32 %195, i32 %203, i32 %211)
  br label %213

213:                                              ; preds = %192
  %214 = load i32, i32* %24, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %24, align 4
  br label %186

216:                                              ; preds = %186
  %217 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %17, align 8
  %218 = call i32 @kfree(%struct.stm32_mdma_desc* %217)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %219

219:                                              ; preds = %216, %176, %80, %66, %57, %43
  %220 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %220
}

declare dso_local %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

declare dso_local %struct.stm32_mdma_desc* @stm32_mdma_alloc_desc(%struct.stm32_mdma_chan*, i32) #1

declare dso_local i32 @stm32_mdma_set_xfer_param(%struct.stm32_mdma_chan*, i32, i32*, i32*, i32*, i64, i64) #1

declare dso_local i32 @stm32_mdma_set_bus(%struct.stm32_mdma_device*, i32*, i32, i64) #1

declare dso_local i32 @stm32_mdma_setup_hwdesc(%struct.stm32_mdma_chan*, %struct.stm32_mdma_desc*, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.stm32_mdma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
