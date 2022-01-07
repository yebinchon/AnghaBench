; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.stm32_dma_chan = type { i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.stm32_dma_desc = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid buffer/period len\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dma channel is not configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"buf_len not multiple of period_len\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Request not allowed when dma busy\0A\00", align 1
@STM32_DMA_ALIGNED_MAX_DATA_ITEMS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"number of items not supported\0A\00", align 1
@STM32_DMA_SCR_CIRC = common dso_local global i32 0, align 4
@STM32_DMA_SCR_DBM = common dso_local global i32 0, align 4
@STM32_DMA_SCR_PFCTRL = common dso_local global i32 0, align 4
@sg_req = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @stm32_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @stm32_dma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.stm32_dma_chan*, align 8
  %15 = alloca %struct.stm32_dma_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %22 = call %struct.stm32_dma_chan* @to_stm32_dma_chan(%struct.dma_chan* %21)
  store %struct.stm32_dma_chan* %22, %struct.stm32_dma_chan** %14, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %6
  %29 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %30 = call i32 @chan2dev(%struct.stm32_dma_chan* %29)
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

32:                                               ; preds = %25
  %33 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %34 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %39 = call i32 @chan2dev(%struct.stm32_dma_chan* %38)
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = urem i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %48 = call i32 @chan2dev(%struct.stm32_dma_chan* %47)
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

50:                                               ; preds = %41
  %51 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %52 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %57 = call i32 @chan2dev(%struct.stm32_dma_chan* %56)
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

59:                                               ; preds = %50
  %60 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @stm32_dma_set_xfer_param(%struct.stm32_dma_chan* %60, i32 %61, i32* %16, i64 %62)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

67:                                               ; preds = %59
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %16, align 4
  %70 = zext i32 %69 to i64
  %71 = udiv i64 %68, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @STM32_DMA_ALIGNED_MAX_DATA_ITEMS, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %78 = call i32 @chan2dev(%struct.stm32_dma_chan* %77)
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

80:                                               ; preds = %67
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* @STM32_DMA_SCR_CIRC, align 4
  %86 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %87 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 4
  br label %98

91:                                               ; preds = %80
  %92 = load i32, i32* @STM32_DMA_SCR_DBM, align 4
  %93 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %94 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %84
  %99 = load i32, i32* @STM32_DMA_SCR_PFCTRL, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %102 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %100
  store i32 %105, i32* %103, align 4
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = udiv i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %17, align 4
  %110 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %111 = load i32, i32* @sg_req, align 4
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @struct_size(%struct.stm32_dma_desc* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @GFP_NOWAIT, align 4
  %115 = call %struct.stm32_dma_desc* @kzalloc(i32 %113, i32 %114)
  store %struct.stm32_dma_desc* %115, %struct.stm32_dma_desc** %15, align 8
  %116 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %117 = icmp ne %struct.stm32_dma_desc* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %98
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

119:                                              ; preds = %98
  store i32 0, i32* %19, align 4
  br label %120

120:                                              ; preds = %207, %119
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %210

124:                                              ; preds = %120
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %127 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %126, i32 0, i32 3
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i64 %125, i64* %132, align 8
  %133 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %134 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %133, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = call i32 @stm32_dma_clear_reg(%struct.TYPE_6__* %139)
  %141 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %142 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %146 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %145, i32 0, i32 3
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  store i32 %144, i32* %152, align 4
  %153 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %154 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %158 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  store i32 %156, i32* %164, align 8
  %165 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %166 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %170 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %169, i32 0, i32 3
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  store i32 %168, i32* %176, align 4
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %179 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %178, i32 0, i32 3
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i64 %177, i64* %185, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %188 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %187, i32 0, i32 3
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  store i64 %186, i64* %194, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %197 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %196, i32 0, i32 3
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  store i32 %195, i32* %203, align 8
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* %9, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %9, align 8
  br label %207

207:                                              ; preds = %124
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  br label %120

210:                                              ; preds = %120
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %213 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %215 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %214, i32 0, i32 1
  store i32 1, i32* %215, align 4
  %216 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %14, align 8
  %217 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %216, i32 0, i32 0
  %218 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %15, align 8
  %219 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %218, i32 0, i32 2
  %220 = load i64, i64* %13, align 8
  %221 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %217, i32* %219, i64 %220)
  store %struct.dma_async_tx_descriptor* %221, %struct.dma_async_tx_descriptor** %7, align 8
  br label %222

222:                                              ; preds = %210, %118, %76, %66, %55, %46, %37, %28
  %223 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %223
}

declare dso_local %struct.stm32_dma_chan* @to_stm32_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_set_xfer_param(%struct.stm32_dma_chan*, i32, i32*, i64) #1

declare dso_local %struct.stm32_dma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.stm32_dma_desc*, i32, i32) #1

declare dso_local i32 @stm32_dma_clear_reg(%struct.TYPE_6__*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
