; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.axi_dma_desc = type { %struct.TYPE_12__, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.axi_dma_chan = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64*, i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"%s: memcpy: src: %pad dst: %pad length: %zd flags: %#lx\00", align 1
@CH_CTL_H_LLI_VALID = common dso_local global i64 0, align 8
@CH_CTL_H_ARLEN_EN = common dso_local global i64 0, align 8
@CH_CTL_H_ARLEN_POS = common dso_local global i64 0, align 8
@CH_CTL_H_AWLEN_EN = common dso_local global i64 0, align 8
@CH_CTL_H_AWLEN_POS = common dso_local global i64 0, align 8
@DWAXIDMAC_BURST_TRANS_LEN_4 = common dso_local global i64 0, align 8
@CH_CTL_L_DST_MSIZE_POS = common dso_local global i64 0, align 8
@CH_CTL_L_SRC_MSIZE_POS = common dso_local global i64 0, align 8
@CH_CTL_L_DST_WIDTH_POS = common dso_local global i64 0, align 8
@CH_CTL_L_SRC_WIDTH_POS = common dso_local global i64 0, align 8
@DWAXIDMAC_CH_CTL_L_INC = common dso_local global i64 0, align 8
@CH_CTL_L_DST_INC_POS = common dso_local global i64 0, align 8
@CH_CTL_L_SRC_INC_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)* @dma_chan_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @dma_chan_prep_dma_memcpy(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.axi_dma_desc*, align 8
  %13 = alloca %struct.axi_dma_desc*, align 8
  %14 = alloca %struct.axi_dma_desc*, align 8
  %15 = alloca %struct.axi_dma_chan*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.axi_dma_desc* null, %struct.axi_dma_desc** %12, align 8
  store %struct.axi_dma_desc* null, %struct.axi_dma_desc** %13, align 8
  store %struct.axi_dma_desc* null, %struct.axi_dma_desc** %14, align 8
  %23 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %24 = call %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan* %23)
  store %struct.axi_dma_chan* %24, %struct.axi_dma_chan** %15, align 8
  store i32 0, i32* %21, align 4
  %25 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %26 = call i32 @chan2dev(%struct.axi_dma_chan* %25)
  %27 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %28 = call i32 @axi_chan_name(%struct.axi_dma_chan* %27)
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %28, i64* %9, i64* %8, i64 %29, i64 %30)
  %32 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %33 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %42 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %17, align 8
  br label %46

46:                                               ; preds = %181, %5
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %192

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %18, align 8
  %51 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %18, align 8
  %55 = call i64 @axi_chan_get_xfer_width(%struct.axi_dma_chan* %51, i64 %52, i64 %53, i64 %54)
  store i64 %55, i64* %19, align 8
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = lshr i64 %56, %57
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i64, i64* %17, align 8
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %19, align 8
  %66 = shl i64 %64, %65
  store i64 %66, i64* %18, align 8
  br label %67

67:                                               ; preds = %62, %49
  %68 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %69 = call %struct.axi_dma_desc* @axi_desc_get(%struct.axi_dma_chan* %68)
  store %struct.axi_dma_desc* %69, %struct.axi_dma_desc** %13, align 8
  %70 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %71 = icmp ne %struct.axi_dma_desc* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %209

77:                                               ; preds = %67
  %78 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @write_desc_sar(%struct.axi_dma_desc* %78, i64 %79)
  %81 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @write_desc_dar(%struct.axi_dma_desc* %81, i64 %82)
  %84 = load i64, i64* %16, align 8
  %85 = sub i64 %84, 1
  %86 = call i8* @cpu_to_le32(i64 %85)
  %87 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %88 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load i64, i64* @CH_CTL_H_LLI_VALID, align 8
  store i64 %90, i64* %20, align 8
  %91 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %92 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %77
  %102 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %103 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %102, i32 0, i32 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %22, align 8
  %111 = load i64, i64* @CH_CTL_H_ARLEN_EN, align 8
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* @CH_CTL_H_ARLEN_POS, align 8
  %114 = shl i64 %112, %113
  %115 = or i64 %111, %114
  %116 = load i64, i64* @CH_CTL_H_AWLEN_EN, align 8
  %117 = or i64 %115, %116
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* @CH_CTL_H_AWLEN_POS, align 8
  %120 = shl i64 %118, %119
  %121 = or i64 %117, %120
  %122 = load i64, i64* %20, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %20, align 8
  br label %124

124:                                              ; preds = %101, %77
  %125 = load i64, i64* %20, align 8
  %126 = call i8* @cpu_to_le32(i64 %125)
  %127 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %128 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load i64, i64* @DWAXIDMAC_BURST_TRANS_LEN_4, align 8
  %131 = load i64, i64* @CH_CTL_L_DST_MSIZE_POS, align 8
  %132 = shl i64 %130, %131
  %133 = load i64, i64* @DWAXIDMAC_BURST_TRANS_LEN_4, align 8
  %134 = load i64, i64* @CH_CTL_L_SRC_MSIZE_POS, align 8
  %135 = shl i64 %133, %134
  %136 = or i64 %132, %135
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* @CH_CTL_L_DST_WIDTH_POS, align 8
  %139 = shl i64 %137, %138
  %140 = or i64 %136, %139
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* @CH_CTL_L_SRC_WIDTH_POS, align 8
  %143 = shl i64 %141, %142
  %144 = or i64 %140, %143
  %145 = load i64, i64* @DWAXIDMAC_CH_CTL_L_INC, align 8
  %146 = load i64, i64* @CH_CTL_L_DST_INC_POS, align 8
  %147 = shl i64 %145, %146
  %148 = or i64 %144, %147
  %149 = load i64, i64* @DWAXIDMAC_CH_CTL_L_INC, align 8
  %150 = load i64, i64* @CH_CTL_L_SRC_INC_POS, align 8
  %151 = shl i64 %149, %150
  %152 = or i64 %148, %151
  store i64 %152, i64* %20, align 8
  %153 = load i64, i64* %20, align 8
  %154 = call i8* @cpu_to_le32(i64 %153)
  %155 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %156 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  %158 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %159 = call i32 @set_desc_src_master(%struct.axi_dma_desc* %158)
  %160 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %161 = call i32 @set_desc_dest_master(%struct.axi_dma_desc* %160)
  %162 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %12, align 8
  %163 = icmp ne %struct.axi_dma_desc* %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %124
  %165 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  store %struct.axi_dma_desc* %165, %struct.axi_dma_desc** %12, align 8
  br label %181

166:                                              ; preds = %124
  %167 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %168 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %167, i32 0, i32 1
  %169 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %12, align 8
  %170 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %169, i32 0, i32 1
  %171 = call i32 @list_add_tail(i32* %168, i32* %170)
  %172 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %14, align 8
  %173 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %174 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %21, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @write_desc_llp(%struct.axi_dma_desc* %172, i32 %179)
  br label %181

181:                                              ; preds = %166, %164
  %182 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  store %struct.axi_dma_desc* %182, %struct.axi_dma_desc** %14, align 8
  %183 = load i64, i64* %18, align 8
  %184 = load i64, i64* %10, align 8
  %185 = sub i64 %184, %183
  store i64 %185, i64* %10, align 8
  %186 = load i64, i64* %18, align 8
  %187 = load i64, i64* %8, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %8, align 8
  %189 = load i64, i64* %18, align 8
  %190 = load i64, i64* %9, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* %9, align 8
  br label %46

192:                                              ; preds = %46
  %193 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %12, align 8
  %194 = icmp ne %struct.axi_dma_desc* %193, null
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i64 @unlikely(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %216

200:                                              ; preds = %192
  %201 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %13, align 8
  %202 = call i32 @set_desc_last(%struct.axi_dma_desc* %201)
  %203 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %15, align 8
  %204 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %203, i32 0, i32 1
  %205 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %12, align 8
  %206 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %205, i32 0, i32 0
  %207 = load i64, i64* %11, align 8
  %208 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %204, %struct.TYPE_12__* %206, i64 %207)
  store %struct.dma_async_tx_descriptor* %208, %struct.dma_async_tx_descriptor** %6, align 8
  br label %216

209:                                              ; preds = %76
  %210 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %12, align 8
  %211 = icmp ne %struct.axi_dma_desc* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %12, align 8
  %214 = call i32 @axi_desc_put(%struct.axi_dma_desc* %213)
  br label %215

215:                                              ; preds = %212, %209
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %216

216:                                              ; preds = %215, %200, %199
  %217 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %217
}

declare dso_local %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64*, i64*, i64, i64) #1

declare dso_local i32 @chan2dev(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

declare dso_local i64 @axi_chan_get_xfer_width(%struct.axi_dma_chan*, i64, i64, i64) #1

declare dso_local %struct.axi_dma_desc* @axi_desc_get(%struct.axi_dma_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_desc_sar(%struct.axi_dma_desc*, i64) #1

declare dso_local i32 @write_desc_dar(%struct.axi_dma_desc*, i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @set_desc_src_master(%struct.axi_dma_desc*) #1

declare dso_local i32 @set_desc_dest_master(%struct.axi_dma_desc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_desc_llp(%struct.axi_dma_desc*, i32) #1

declare dso_local i32 @set_desc_last(%struct.axi_dma_desc*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @axi_desc_put(%struct.axi_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
