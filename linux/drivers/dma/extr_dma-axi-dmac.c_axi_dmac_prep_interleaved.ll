; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_prep_interleaved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_prep_interleaved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.dma_interleaved_template = type { i32, i64, i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.axi_dmac_chan = type { i64, i64, i32, i64 }
%struct.axi_dmac_desc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32 }

@DMA_CYCLIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.dma_interleaved_template*, i64)* @axi_dmac_prep_interleaved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @axi_dmac_prep_interleaved(%struct.dma_chan* %0, %struct.dma_interleaved_template* %1, i64 %2) #0 {
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.dma_interleaved_template*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.axi_dmac_chan*, align 8
  %9 = alloca %struct.axi_dmac_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store %struct.dma_interleaved_template* %1, %struct.dma_interleaved_template** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = call %struct.axi_dmac_chan* @to_axi_dmac_chan(%struct.dma_chan* %12)
  store %struct.axi_dmac_chan* %13, %struct.axi_dmac_chan** %8, align 8
  %14 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %15 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

19:                                               ; preds = %3
  %20 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %21 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %24 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

28:                                               ; preds = %19
  %29 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %30 = call i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %34 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %39 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %40 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @axi_dmac_check_addr(%struct.axi_dmac_chan* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %32
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %48 = call i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %52 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %57 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %58 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @axi_dmac_check_addr(%struct.axi_dmac_chan* %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55, %50
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %66 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %67 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 0
  %70 = call i64 @dmaengine_get_dst_icg(%struct.dma_interleaved_template* %65, %struct.TYPE_5__* %69)
  store i64 %70, i64* %10, align 8
  %71 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %72 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %73 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 0
  %76 = call i64 @dmaengine_get_src_icg(%struct.dma_interleaved_template* %71, %struct.TYPE_5__* %75)
  store i64 %76, i64* %11, align 8
  %77 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %78 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %127

81:                                               ; preds = %64
  %82 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %83 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %84 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @axi_dmac_check_len(%struct.axi_dmac_chan* %82, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %93 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %81
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

97:                                               ; preds = %91
  %98 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %99 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %98, i32 0, i32 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %104, %105
  %107 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %108 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ugt i64 %106, %109
  br i1 %110, label %125, label %111

111:                                              ; preds = %97
  %112 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %113 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %118, %119
  %121 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %122 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ugt i64 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %111, %97
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

126:                                              ; preds = %111
  br label %168

127:                                              ; preds = %64
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %11, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130, %127
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

134:                                              ; preds = %130
  %135 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %136 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %139 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %138, i32 0, i32 3
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = udiv i64 %137, %144
  %146 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %147 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp ult i64 %145, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

152:                                              ; preds = %134
  %153 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %154 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %155 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %161 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 %159, %162
  %164 = call i32 @axi_dmac_check_len(%struct.axi_dmac_chan* %153, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %152
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %167, %126
  %169 = call %struct.axi_dmac_desc* @axi_dmac_alloc_desc(i32 1)
  store %struct.axi_dmac_desc* %169, %struct.axi_dmac_desc** %9, align 8
  %170 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %171 = icmp ne %struct.axi_dmac_desc* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

173:                                              ; preds = %168
  %174 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %175 = call i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %200

177:                                              ; preds = %173
  %178 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %179 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %182 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 5
  store i32 %180, i32* %185, align 8
  %186 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %187 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %186, i32 0, i32 3
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %11, align 8
  %194 = add i64 %192, %193
  %195 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %196 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i64 %194, i64* %199, align 8
  br label %200

200:                                              ; preds = %177, %173
  %201 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %202 = call i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %200
  %205 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %206 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %209 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %208, i32 0, i32 2
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 4
  store i32 %207, i32* %212, align 4
  %213 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %214 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %213, i32 0, i32 3
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %10, align 8
  %221 = add i64 %219, %220
  %222 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %223 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %222, i32 0, i32 2
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store i64 %221, i64* %226, align 8
  br label %227

227:                                              ; preds = %204, %200
  %228 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %229 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %227
  %233 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %234 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %233, i32 0, i32 3
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %241 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %240, i32 0, i32 2
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  store i64 %239, i64* %244, align 8
  %245 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %246 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %249 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %248, i32 0, i32 2
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i64 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  store i32 %247, i32* %252, align 8
  br label %275

253:                                              ; preds = %227
  %254 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %255 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %254, i32 0, i32 3
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.dma_interleaved_template*, %struct.dma_interleaved_template** %6, align 8
  %261 = getelementptr inbounds %struct.dma_interleaved_template, %struct.dma_interleaved_template* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = mul nsw i32 %259, %262
  %264 = sext i32 %263 to i64
  %265 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %266 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %265, i32 0, i32 2
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  store i64 %264, i64* %269, align 8
  %270 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %271 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %270, i32 0, i32 2
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 3
  store i32 1, i32* %274, align 8
  br label %275

275:                                              ; preds = %253, %232
  %276 = load i64, i64* %7, align 8
  %277 = load i64, i64* @DMA_CYCLIC, align 8
  %278 = and i64 %276, %277
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %282 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %281, i32 0, i32 0
  store i32 1, i32* %282, align 8
  br label %283

283:                                              ; preds = %280, %275
  %284 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %8, align 8
  %285 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %284, i32 0, i32 2
  %286 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %9, align 8
  %287 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %286, i32 0, i32 1
  %288 = load i64, i64* %7, align 8
  %289 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %285, i32* %287, i64 %288)
  store %struct.dma_async_tx_descriptor* %289, %struct.dma_async_tx_descriptor** %4, align 8
  br label %290

290:                                              ; preds = %283, %172, %166, %151, %133, %125, %96, %62, %44, %27, %18
  %291 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  ret %struct.dma_async_tx_descriptor* %291
}

declare dso_local %struct.axi_dmac_chan* @to_axi_dmac_chan(%struct.dma_chan*) #1

declare dso_local i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan*) #1

declare dso_local i32 @axi_dmac_check_addr(%struct.axi_dmac_chan*, i32) #1

declare dso_local i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan*) #1

declare dso_local i64 @dmaengine_get_dst_icg(%struct.dma_interleaved_template*, %struct.TYPE_5__*) #1

declare dso_local i64 @dmaengine_get_src_icg(%struct.dma_interleaved_template*, %struct.TYPE_5__*) #1

declare dso_local i32 @axi_dmac_check_len(%struct.axi_dmac_chan*, i32) #1

declare dso_local %struct.axi_dmac_desc* @axi_dmac_alloc_desc(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
