; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_txe_csrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_txe_csrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@SEND_CTRL = common dso_local global i64 0, align 8
@SEND_HIGH_PRIORITY_LIMIT = common dso_local global i64 0, align 8
@SEND_PIO_ERR_MASK = common dso_local global i64 0, align 8
@SEND_PIO_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_DMA_ERR_MASK = common dso_local global i64 0, align 8
@SEND_DMA_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_EGRESS_ERR_MASK = common dso_local global i64 0, align 8
@SEND_EGRESS_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_BTH_QP = common dso_local global i64 0, align 8
@SEND_STATIC_RATE_CONTROL = common dso_local global i64 0, align 8
@SEND_SC2VLT0 = common dso_local global i64 0, align 8
@SEND_SC2VLT1 = common dso_local global i64 0, align 8
@SEND_SC2VLT2 = common dso_local global i64 0, align 8
@SEND_SC2VLT3 = common dso_local global i64 0, align 8
@SEND_LEN_CHECK0 = common dso_local global i64 0, align 8
@SEND_LEN_CHECK1 = common dso_local global i64 0, align 8
@SEND_ERR_MASK = common dso_local global i64 0, align 8
@SEND_ERR_CLEAR = common dso_local global i64 0, align 8
@VL_ARB_LOW_PRIO_TABLE_SIZE = common dso_local global i32 0, align 4
@SEND_LOW_PRIORITY_LIST = common dso_local global i64 0, align 8
@VL_ARB_HIGH_PRIO_TABLE_SIZE = common dso_local global i32 0, align 4
@SEND_HIGH_PRIORITY_LIST = common dso_local global i64 0, align 8
@NUM_CONTEXTS_PER_SET = common dso_local global i32 0, align 4
@SEND_CONTEXT_SET_CTRL = common dso_local global i64 0, align 8
@TXE_NUM_32_BIT_COUNTER = common dso_local global i32 0, align 4
@SEND_COUNTER_ARRAY32 = common dso_local global i64 0, align 8
@TXE_NUM_64_BIT_COUNTER = common dso_local global i32 0, align 4
@SEND_COUNTER_ARRAY64 = common dso_local global i64 0, align 8
@SEND_CM_CTRL = common dso_local global i64 0, align 8
@SEND_CM_CTRL_RESETCSR = common dso_local global i64 0, align 8
@SEND_CM_GLOBAL_CREDIT = common dso_local global i64 0, align 8
@SEND_CM_GLOBAL_CREDIT_RESETCSR = common dso_local global i64 0, align 8
@SEND_CM_TIMER_CTRL = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE0_TO3 = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE4_TO7 = common dso_local global i64 0, align 8
@SEND_CM_REMOTE_AU_TABLE0_TO3 = common dso_local global i64 0, align 8
@SEND_CM_REMOTE_AU_TABLE4_TO7 = common dso_local global i64 0, align 8
@TXE_NUM_DATA_VL = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_VL = common dso_local global i64 0, align 8
@SEND_CM_CREDIT_VL15 = common dso_local global i64 0, align 8
@SEND_EGRESS_ERR_INFO = common dso_local global i64 0, align 8
@SEND_CTXT_CTRL = common dso_local global i32 0, align 4
@SEND_CTXT_CREDIT_CTRL = common dso_local global i32 0, align 4
@SEND_CTXT_CREDIT_RETURN_ADDR = common dso_local global i32 0, align 4
@SEND_CTXT_CREDIT_FORCE = common dso_local global i32 0, align 4
@SEND_CTXT_ERR_MASK = common dso_local global i32 0, align 4
@SEND_CTXT_ERR_CLEAR = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_VL = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_JOB_KEY = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_PARTITION_KEY = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_SLID = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_OPCODE = common dso_local global i32 0, align 4
@SEND_DMA_CTRL = common dso_local global i32 0, align 4
@SEND_DMA_BASE_ADDR = common dso_local global i32 0, align 4
@SEND_DMA_LEN_GEN = common dso_local global i32 0, align 4
@SEND_DMA_TAIL = common dso_local global i32 0, align 4
@SEND_DMA_HEAD_ADDR = common dso_local global i32 0, align 4
@SEND_DMA_PRIORITY_THLD = common dso_local global i32 0, align 4
@SEND_DMA_RELOAD_CNT = common dso_local global i32 0, align 4
@SEND_DMA_DESC_CNT = common dso_local global i32 0, align 4
@SEND_DMA_ENG_ERR_MASK = common dso_local global i32 0, align 4
@SEND_DMA_ENG_ERR_CLEAR = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_VL = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_JOB_KEY = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_PARTITION_KEY = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_SLID = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_OPCODE = common dso_local global i32 0, align 4
@SEND_DMA_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @reset_txe_csrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_txe_csrs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %5 = load i64, i64* @SEND_CTRL, align 8
  %6 = call i32 @write_csr(%struct.hfi1_devdata* %4, i64 %5, i64 0)
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %8 = call i32 @__cm_reset(%struct.hfi1_devdata* %7, i32 0)
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %10 = load i64, i64* @SEND_HIGH_PRIORITY_LIMIT, align 8
  %11 = call i32 @write_csr(%struct.hfi1_devdata* %9, i64 %10, i64 0)
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %13 = call i32 @pio_reset_all(%struct.hfi1_devdata* %12)
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %15 = load i64, i64* @SEND_PIO_ERR_MASK, align 8
  %16 = call i32 @write_csr(%struct.hfi1_devdata* %14, i64 %15, i64 0)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %18 = load i64, i64* @SEND_PIO_ERR_CLEAR, align 8
  %19 = call i32 @write_csr(%struct.hfi1_devdata* %17, i64 %18, i64 -1)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %21 = load i64, i64* @SEND_DMA_ERR_MASK, align 8
  %22 = call i32 @write_csr(%struct.hfi1_devdata* %20, i64 %21, i64 0)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %24 = load i64, i64* @SEND_DMA_ERR_CLEAR, align 8
  %25 = call i32 @write_csr(%struct.hfi1_devdata* %23, i64 %24, i64 -1)
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = load i64, i64* @SEND_EGRESS_ERR_MASK, align 8
  %28 = call i32 @write_csr(%struct.hfi1_devdata* %26, i64 %27, i64 0)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %30 = load i64, i64* @SEND_EGRESS_ERR_CLEAR, align 8
  %31 = call i32 @write_csr(%struct.hfi1_devdata* %29, i64 %30, i64 -1)
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %33 = load i64, i64* @SEND_BTH_QP, align 8
  %34 = call i32 @write_csr(%struct.hfi1_devdata* %32, i64 %33, i64 0)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %36 = load i64, i64* @SEND_STATIC_RATE_CONTROL, align 8
  %37 = call i32 @write_csr(%struct.hfi1_devdata* %35, i64 %36, i64 0)
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %39 = load i64, i64* @SEND_SC2VLT0, align 8
  %40 = call i32 @write_csr(%struct.hfi1_devdata* %38, i64 %39, i64 0)
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %42 = load i64, i64* @SEND_SC2VLT1, align 8
  %43 = call i32 @write_csr(%struct.hfi1_devdata* %41, i64 %42, i64 0)
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %45 = load i64, i64* @SEND_SC2VLT2, align 8
  %46 = call i32 @write_csr(%struct.hfi1_devdata* %44, i64 %45, i64 0)
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %48 = load i64, i64* @SEND_SC2VLT3, align 8
  %49 = call i32 @write_csr(%struct.hfi1_devdata* %47, i64 %48, i64 0)
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %51 = load i64, i64* @SEND_LEN_CHECK0, align 8
  %52 = call i32 @write_csr(%struct.hfi1_devdata* %50, i64 %51, i64 0)
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %54 = load i64, i64* @SEND_LEN_CHECK1, align 8
  %55 = call i32 @write_csr(%struct.hfi1_devdata* %53, i64 %54, i64 0)
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %57 = load i64, i64* @SEND_ERR_MASK, align 8
  %58 = call i32 @write_csr(%struct.hfi1_devdata* %56, i64 %57, i64 0)
  %59 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %60 = load i64, i64* @SEND_ERR_CLEAR, align 8
  %61 = call i32 @write_csr(%struct.hfi1_devdata* %59, i64 %60, i64 -1)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %74, %1
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @VL_ARB_LOW_PRIO_TABLE_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %68 = load i64, i64* @SEND_LOW_PRIORITY_LIST, align 8
  %69 = load i32, i32* %3, align 4
  %70 = mul nsw i32 8, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @write_csr(%struct.hfi1_devdata* %67, i64 %72, i64 0)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %62

77:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @VL_ARB_HIGH_PRIO_TABLE_SIZE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %84 = load i64, i64* @SEND_HIGH_PRIORITY_LIST, align 8
  %85 = load i32, i32* %3, align 4
  %86 = mul nsw i32 8, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @write_csr(%struct.hfi1_devdata* %83, i64 %88, i64 0)
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %78

93:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %109, %93
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %97 = call i32 @chip_send_contexts(%struct.hfi1_devdata* %96)
  %98 = load i32, i32* @NUM_CONTEXTS_PER_SET, align 4
  %99 = sdiv i32 %97, %98
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %103 = load i64, i64* @SEND_CONTEXT_SET_CTRL, align 8
  %104 = load i32, i32* %3, align 4
  %105 = mul nsw i32 8, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %103, %106
  %108 = call i32 @write_csr(%struct.hfi1_devdata* %102, i64 %107, i64 0)
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %94

112:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %125, %112
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @TXE_NUM_32_BIT_COUNTER, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %119 = load i64, i64* @SEND_COUNTER_ARRAY32, align 8
  %120 = load i32, i32* %3, align 4
  %121 = mul nsw i32 8, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %119, %122
  %124 = call i32 @write_csr(%struct.hfi1_devdata* %118, i64 %123, i64 0)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %113

128:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %141, %128
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @TXE_NUM_64_BIT_COUNTER, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %135 = load i64, i64* @SEND_COUNTER_ARRAY64, align 8
  %136 = load i32, i32* %3, align 4
  %137 = mul nsw i32 8, %136
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %135, %138
  %140 = call i32 @write_csr(%struct.hfi1_devdata* %134, i64 %139, i64 0)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %129

144:                                              ; preds = %129
  %145 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %146 = load i64, i64* @SEND_CM_CTRL, align 8
  %147 = load i64, i64* @SEND_CM_CTRL_RESETCSR, align 8
  %148 = call i32 @write_csr(%struct.hfi1_devdata* %145, i64 %146, i64 %147)
  %149 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %150 = load i64, i64* @SEND_CM_GLOBAL_CREDIT, align 8
  %151 = load i64, i64* @SEND_CM_GLOBAL_CREDIT_RESETCSR, align 8
  %152 = call i32 @write_csr(%struct.hfi1_devdata* %149, i64 %150, i64 %151)
  %153 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %154 = load i64, i64* @SEND_CM_TIMER_CTRL, align 8
  %155 = call i32 @write_csr(%struct.hfi1_devdata* %153, i64 %154, i64 0)
  %156 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %157 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE0_TO3, align 8
  %158 = call i32 @write_csr(%struct.hfi1_devdata* %156, i64 %157, i64 0)
  %159 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %160 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE4_TO7, align 8
  %161 = call i32 @write_csr(%struct.hfi1_devdata* %159, i64 %160, i64 0)
  %162 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %163 = load i64, i64* @SEND_CM_REMOTE_AU_TABLE0_TO3, align 8
  %164 = call i32 @write_csr(%struct.hfi1_devdata* %162, i64 %163, i64 0)
  %165 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %166 = load i64, i64* @SEND_CM_REMOTE_AU_TABLE4_TO7, align 8
  %167 = call i32 @write_csr(%struct.hfi1_devdata* %165, i64 %166, i64 0)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %180, %144
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %174 = load i64, i64* @SEND_CM_CREDIT_VL, align 8
  %175 = load i32, i32* %3, align 4
  %176 = mul nsw i32 8, %175
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %174, %177
  %179 = call i32 @write_csr(%struct.hfi1_devdata* %173, i64 %178, i64 0)
  br label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %168

183:                                              ; preds = %168
  %184 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %185 = load i64, i64* @SEND_CM_CREDIT_VL15, align 8
  %186 = call i32 @write_csr(%struct.hfi1_devdata* %184, i64 %185, i64 0)
  %187 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %188 = load i64, i64* @SEND_EGRESS_ERR_INFO, align 8
  %189 = call i32 @write_csr(%struct.hfi1_devdata* %187, i64 %188, i64 -1)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %244, %183
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %193 = call i32 @chip_send_contexts(%struct.hfi1_devdata* %192)
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %247

195:                                              ; preds = %190
  %196 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @SEND_CTXT_CTRL, align 4
  %199 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %196, i32 %197, i32 %198, i64 0)
  %200 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* @SEND_CTXT_CREDIT_CTRL, align 4
  %203 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %200, i32 %201, i32 %202, i64 0)
  %204 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @SEND_CTXT_CREDIT_RETURN_ADDR, align 4
  %207 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %204, i32 %205, i32 %206, i64 0)
  %208 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* @SEND_CTXT_CREDIT_FORCE, align 4
  %211 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %208, i32 %209, i32 %210, i64 0)
  %212 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* @SEND_CTXT_ERR_MASK, align 4
  %215 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %212, i32 %213, i32 %214, i64 0)
  %216 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* @SEND_CTXT_ERR_CLEAR, align 4
  %219 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %216, i32 %217, i32 %218, i64 -1)
  %220 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* @SEND_CTXT_CHECK_ENABLE, align 4
  %223 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %220, i32 %221, i32 %222, i64 0)
  %224 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* @SEND_CTXT_CHECK_VL, align 4
  %227 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %224, i32 %225, i32 %226, i64 0)
  %228 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %229 = load i32, i32* %3, align 4
  %230 = load i32, i32* @SEND_CTXT_CHECK_JOB_KEY, align 4
  %231 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %228, i32 %229, i32 %230, i64 0)
  %232 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* @SEND_CTXT_CHECK_PARTITION_KEY, align 4
  %235 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %232, i32 %233, i32 %234, i64 0)
  %236 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* @SEND_CTXT_CHECK_SLID, align 4
  %239 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %236, i32 %237, i32 %238, i64 0)
  %240 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %241 = load i32, i32* %3, align 4
  %242 = load i32, i32* @SEND_CTXT_CHECK_OPCODE, align 4
  %243 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %240, i32 %241, i32 %242, i64 0)
  br label %244

244:                                              ; preds = %195
  %245 = load i32, i32* %3, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %3, align 4
  br label %190

247:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %322, %247
  %249 = load i32, i32* %3, align 4
  %250 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %251 = call i32 @chip_sdma_engines(%struct.hfi1_devdata* %250)
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %325

253:                                              ; preds = %248
  %254 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %255 = load i32, i32* %3, align 4
  %256 = load i32, i32* @SEND_DMA_CTRL, align 4
  %257 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %254, i32 %255, i32 %256, i64 0)
  %258 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %259 = load i32, i32* %3, align 4
  %260 = load i32, i32* @SEND_DMA_BASE_ADDR, align 4
  %261 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %258, i32 %259, i32 %260, i64 0)
  %262 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %263 = load i32, i32* %3, align 4
  %264 = load i32, i32* @SEND_DMA_LEN_GEN, align 4
  %265 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %262, i32 %263, i32 %264, i64 0)
  %266 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %267 = load i32, i32* %3, align 4
  %268 = load i32, i32* @SEND_DMA_TAIL, align 4
  %269 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %266, i32 %267, i32 %268, i64 0)
  %270 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %271 = load i32, i32* %3, align 4
  %272 = load i32, i32* @SEND_DMA_HEAD_ADDR, align 4
  %273 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %270, i32 %271, i32 %272, i64 0)
  %274 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %275 = load i32, i32* %3, align 4
  %276 = load i32, i32* @SEND_DMA_PRIORITY_THLD, align 4
  %277 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %274, i32 %275, i32 %276, i64 0)
  %278 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %279 = load i32, i32* %3, align 4
  %280 = load i32, i32* @SEND_DMA_RELOAD_CNT, align 4
  %281 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %278, i32 %279, i32 %280, i64 0)
  %282 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* @SEND_DMA_DESC_CNT, align 4
  %285 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %282, i32 %283, i32 %284, i64 0)
  %286 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %287 = load i32, i32* %3, align 4
  %288 = load i32, i32* @SEND_DMA_ENG_ERR_MASK, align 4
  %289 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %286, i32 %287, i32 %288, i64 0)
  %290 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %291 = load i32, i32* %3, align 4
  %292 = load i32, i32* @SEND_DMA_ENG_ERR_CLEAR, align 4
  %293 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %290, i32 %291, i32 %292, i64 -1)
  %294 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* @SEND_DMA_CHECK_ENABLE, align 4
  %297 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %294, i32 %295, i32 %296, i64 0)
  %298 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %299 = load i32, i32* %3, align 4
  %300 = load i32, i32* @SEND_DMA_CHECK_VL, align 4
  %301 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %298, i32 %299, i32 %300, i64 0)
  %302 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %303 = load i32, i32* %3, align 4
  %304 = load i32, i32* @SEND_DMA_CHECK_JOB_KEY, align 4
  %305 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %302, i32 %303, i32 %304, i64 0)
  %306 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* @SEND_DMA_CHECK_PARTITION_KEY, align 4
  %309 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %306, i32 %307, i32 %308, i64 0)
  %310 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %311 = load i32, i32* %3, align 4
  %312 = load i32, i32* @SEND_DMA_CHECK_SLID, align 4
  %313 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %310, i32 %311, i32 %312, i64 0)
  %314 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %315 = load i32, i32* %3, align 4
  %316 = load i32, i32* @SEND_DMA_CHECK_OPCODE, align 4
  %317 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %314, i32 %315, i32 %316, i64 0)
  %318 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %319 = load i32, i32* %3, align 4
  %320 = load i32, i32* @SEND_DMA_MEMORY, align 4
  %321 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %318, i32 %319, i32 %320, i64 0)
  br label %322

322:                                              ; preds = %253
  %323 = load i32, i32* %3, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %3, align 4
  br label %248

325:                                              ; preds = %248
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i64) #1

declare dso_local i32 @__cm_reset(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @pio_reset_all(%struct.hfi1_devdata*) #1

declare dso_local i32 @chip_send_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i64) #1

declare dso_local i32 @chip_sdma_engines(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
