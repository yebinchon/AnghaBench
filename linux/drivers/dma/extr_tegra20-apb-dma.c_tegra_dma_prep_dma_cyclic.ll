; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64 }
%struct.dma_chan = type { i32 }
%struct.tegra_dma_channel = type { i64, i32, i64, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tegra_dma_desc = type { i64, %struct.dma_async_tx_descriptor, i32, i64, i64, i32 }
%struct.tegra_dma_sg_req = type { i32, i32, i32, i32, %struct.tegra_dma_desc*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid buffer/period len\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DMA slave is not configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Request not allowed when DMA running\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"buf_len is not multiple of period_len\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Req len/mem address is not correct\0A\00", align 1
@TEGRA_APBDMA_AHBSEQ_INTR_ENB = common dso_local global i64 0, align 8
@TEGRA_APBDMA_AHBSEQ_WRAP_NONE = common dso_local global i64 0, align 8
@TEGRA_APBDMA_AHBSEQ_WRAP_SHIFT = common dso_local global i64 0, align 8
@TEGRA_APBDMA_AHBSEQ_BUS_WIDTH_32 = common dso_local global i64 0, align 8
@TEGRA_APBDMA_SLAVE_ID_INVALID = common dso_local global i64 0, align 8
@TEGRA_APBDMA_CSR_FLOW = common dso_local global i64 0, align 8
@TEGRA_APBDMA_CSR_REQ_SEL_SHIFT = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@TEGRA_APBDMA_CSR_IE_EOC = common dso_local global i64 0, align 8
@TEGRA_APBDMA_APBSEQ_WRAP_WORD_1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"not enough descriptors available\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"DMA sg-req not available\0A\00", align 1
@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@handle_cont_sngl_cycle_dma_done = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"DMA configuration conflict\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i64, i64, i32, i64)* @tegra_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @tegra_dma_prep_dma_cyclic(%struct.dma_chan* %0, i32 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.tegra_dma_channel*, align 8
  %15 = alloca %struct.tegra_dma_desc*, align 8
  %16 = alloca %struct.tegra_dma_sg_req*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %27 = call %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan* %26)
  store %struct.tegra_dma_channel* %27, %struct.tegra_dma_channel** %14, align 8
  store %struct.tegra_dma_desc* null, %struct.tegra_dma_desc** %15, align 8
  store %struct.tegra_dma_sg_req* null, %struct.tegra_dma_sg_req** %16, align 8
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %23, align 4
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %6
  %35 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %36 = call i32 @tdc2dev(%struct.tegra_dma_channel* %35)
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

38:                                               ; preds = %31
  %39 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %40 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %45 = call i32 @tdc2dev(%struct.tegra_dma_channel* %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

47:                                               ; preds = %38
  %48 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %49 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %54 = call i32 @tdc2dev(%struct.tegra_dma_channel* %53)
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

56:                                               ; preds = %47
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = urem i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %63 = call i32 @tdc2dev(%struct.tegra_dma_channel* %62)
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

65:                                               ; preds = %56
  %66 = load i64, i64* %11, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 3
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %21, align 4
  %77 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %78 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %76, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %75, %71, %65
  %86 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %87 = call i32 @tdc2dev(%struct.tegra_dma_channel* %86)
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

89:                                               ; preds = %75
  %90 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @get_transfer_param(%struct.tegra_dma_channel* %90, i32 %91, i64* %19, i64* %20, i64* %17, i32* %24, i32* %25)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

95:                                               ; preds = %89
  %96 = load i64, i64* @TEGRA_APBDMA_AHBSEQ_INTR_ENB, align 8
  store i64 %96, i64* %18, align 8
  %97 = load i64, i64* @TEGRA_APBDMA_AHBSEQ_WRAP_NONE, align 8
  %98 = load i64, i64* @TEGRA_APBDMA_AHBSEQ_WRAP_SHIFT, align 8
  %99 = shl i64 %97, %98
  %100 = load i64, i64* %18, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* @TEGRA_APBDMA_AHBSEQ_BUS_WIDTH_32, align 8
  %103 = load i64, i64* %18, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %18, align 8
  %105 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %106 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TEGRA_APBDMA_SLAVE_ID_INVALID, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %95
  %111 = load i64, i64* @TEGRA_APBDMA_CSR_FLOW, align 8
  %112 = load i64, i64* %17, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %17, align 8
  %114 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %115 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TEGRA_APBDMA_CSR_REQ_SEL_SHIFT, align 8
  %118 = shl i64 %116, %117
  %119 = load i64, i64* %17, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %17, align 8
  br label %121

121:                                              ; preds = %110, %95
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i64, i64* @TEGRA_APBDMA_CSR_IE_EOC, align 8
  %128 = load i64, i64* %17, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %17, align 8
  br label %132

130:                                              ; preds = %121
  %131 = call i32 @WARN_ON_ONCE(i32 1)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

132:                                              ; preds = %126
  %133 = load i64, i64* @TEGRA_APBDMA_APBSEQ_WRAP_WORD_1, align 8
  %134 = load i64, i64* %20, align 8
  %135 = or i64 %134, %133
  store i64 %135, i64* %20, align 8
  %136 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %137 = call %struct.tegra_dma_desc* @tegra_dma_desc_get(%struct.tegra_dma_channel* %136)
  store %struct.tegra_dma_desc* %137, %struct.tegra_dma_desc** %15, align 8
  %138 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %139 = icmp ne %struct.tegra_dma_desc* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %132
  %141 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %142 = call i32 @tdc2dev(%struct.tegra_dma_channel* %141)
  %143 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

144:                                              ; preds = %132
  %145 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %146 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %145, i32 0, i32 2
  %147 = call i32 @INIT_LIST_HEAD(i32* %146)
  %148 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %149 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %148, i32 0, i32 5
  %150 = call i32 @INIT_LIST_HEAD(i32* %149)
  %151 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %152 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  %153 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %154 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %157 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %10, align 8
  store i64 %158, i64* %22, align 8
  br label %159

159:                                              ; preds = %174, %144
  %160 = load i64, i64* %22, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %229

162:                                              ; preds = %159
  %163 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %164 = call %struct.tegra_dma_sg_req* @tegra_dma_sg_req_get(%struct.tegra_dma_channel* %163)
  store %struct.tegra_dma_sg_req* %164, %struct.tegra_dma_sg_req** %16, align 8
  %165 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %166 = icmp ne %struct.tegra_dma_sg_req* %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %162
  %168 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %169 = call i32 @tdc2dev(%struct.tegra_dma_channel* %168)
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %171 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %172 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %173 = call i32 @tegra_dma_desc_put(%struct.tegra_dma_channel* %171, %struct.tegra_dma_desc* %172)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

174:                                              ; preds = %162
  %175 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %21, align 4
  %179 = call i64 @get_burst_size(%struct.tegra_dma_channel* %175, i32 %176, i32 %177, i32 %178)
  %180 = load i64, i64* %18, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %18, align 8
  %182 = load i64, i64* %19, align 8
  %183 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %184 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i64 %182, i64* %185, align 8
  %186 = load i32, i32* %23, align 4
  %187 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %188 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 8
  %190 = load i64, i64* %17, align 8
  %191 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %192 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  store i64 %190, i64* %193, align 8
  %194 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %195 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %196 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %195, i32 0, i32 5
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @tegra_dma_prep_wcount(%struct.tegra_dma_channel* %194, %struct.TYPE_6__* %196, i32 %197)
  %199 = load i64, i64* %20, align 8
  %200 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %201 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  store i64 %199, i64* %202, align 8
  %203 = load i64, i64* %18, align 8
  %204 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %205 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 4
  store i64 %203, i64* %206, align 8
  %207 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %208 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %207, i32 0, i32 0
  store i32 0, i32* %208, align 8
  %209 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %210 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %212 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %213 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %212, i32 0, i32 4
  store %struct.tegra_dma_desc* %211, %struct.tegra_dma_desc** %213, align 8
  %214 = load i32, i32* %21, align 4
  %215 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %216 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %218 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %217, i32 0, i32 3
  %219 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %220 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %219, i32 0, i32 2
  %221 = call i32 @list_add_tail(i32* %218, i32* %220)
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %22, align 8
  %225 = sub i64 %224, %223
  store i64 %225, i64* %22, align 8
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %23, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %23, align 4
  br label %159

229:                                              ; preds = %159
  %230 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %16, align 8
  %231 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %230, i32 0, i32 1
  store i32 1, i32* %231, align 4
  %232 = load i64, i64* %13, align 8
  %233 = load i64, i64* @DMA_CTRL_ACK, align 8
  %234 = and i64 %232, %233
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %229
  %237 = load i64, i64* @DMA_CTRL_ACK, align 8
  %238 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %239 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %239, i32 0, i32 0
  store i64 %237, i64* %240, align 8
  br label %241

241:                                              ; preds = %236, %229
  %242 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %243 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %241
  %247 = load i64, i64* @handle_cont_sngl_cycle_dma_done, align 8
  %248 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %249 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %248, i32 0, i32 2
  store i64 %247, i64* %249, align 8
  %250 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %251 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %250, i32 0, i32 1
  store i32 1, i32* %251, align 8
  br label %265

252:                                              ; preds = %241
  %253 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %254 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %252
  %258 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %259 = call i32 @tdc2dev(%struct.tegra_dma_channel* %258)
  %260 = call i32 @dev_err(i32 %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %261 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %14, align 8
  %262 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %263 = call i32 @tegra_dma_desc_put(%struct.tegra_dma_channel* %261, %struct.tegra_dma_desc* %262)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

264:                                              ; preds = %252
  br label %265

265:                                              ; preds = %264, %246
  %266 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %15, align 8
  %267 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %266, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %267, %struct.dma_async_tx_descriptor** %7, align 8
  br label %268

268:                                              ; preds = %265, %257, %167, %140, %130, %94, %85, %61, %52, %43, %34
  %269 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %269
}

declare dso_local %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_dma_channel*) #1

declare dso_local i64 @get_transfer_param(%struct.tegra_dma_channel*, i32, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.tegra_dma_desc* @tegra_dma_desc_get(%struct.tegra_dma_channel*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.tegra_dma_sg_req* @tegra_dma_sg_req_get(%struct.tegra_dma_channel*) #1

declare dso_local i32 @tegra_dma_desc_put(%struct.tegra_dma_channel*, %struct.tegra_dma_desc*) #1

declare dso_local i64 @get_burst_size(%struct.tegra_dma_channel*, i32, i32, i32) #1

declare dso_local i32 @tegra_dma_prep_wcount(%struct.tegra_dma_channel*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
