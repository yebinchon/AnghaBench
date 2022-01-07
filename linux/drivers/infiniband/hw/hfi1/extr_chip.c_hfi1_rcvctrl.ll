; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_rcvctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_rcvctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i64 }
%struct.hfi1_ctxtdata = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RCVCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ctxt %d op 0x%x\00", align 1
@RCV_CTXT_CTRL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_ENABLE_SMASK = common dso_local global i32 0, align 4
@RCV_HDR_ADDR = common dso_local global i32 0, align 4
@RCV_HDR_TAIL_ADDR = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_EGR_BUF_SIZE_SMASK = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_EGR_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_EGR_BUF_SIZE_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_HEAD = common dso_local global i32 0, align 4
@RCV_EGR_INDEX_HEAD = common dso_local global i32 0, align 4
@RCV_SHIFT = common dso_local global i32 0, align 4
@RCV_EGR_CTRL_EGR_CNT_MASK = common dso_local global i32 0, align 4
@RCV_EGR_CTRL_EGR_CNT_SHIFT = common dso_local global i32 0, align 4
@RCV_EGR_CTRL_EGR_BASE_INDEX_MASK = common dso_local global i32 0, align 4
@RCV_EGR_CTRL_EGR_BASE_INDEX_SHIFT = common dso_local global i32 0, align 4
@RCV_EGR_CTRL = common dso_local global i32 0, align 4
@RCV_TID_CTRL_TID_PAIR_CNT_MASK = common dso_local global i32 0, align 4
@RCV_TID_CTRL_TID_PAIR_CNT_SHIFT = common dso_local global i32 0, align 4
@RCV_TID_CTRL_TID_BASE_INDEX_MASK = common dso_local global i32 0, align 4
@RCV_TID_CTRL_TID_BASE_INDEX_SHIFT = common dso_local global i32 0, align 4
@RCV_TID_CTRL = common dso_local global i32 0, align 4
@HFI1_CTRL_CTXT = common dso_local global i64 0, align 8
@RCV_VL15 = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_TAIL_UPD_SMASK = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_ENB = common dso_local global i32 0, align 4
@IS_RCVAVAIL_START = common dso_local global i64 0, align 8
@RCV_CTXT_CTRL_INTR_AVAIL_SMASK = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TIDFLOW_ENB = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_TID_FLOW_ENABLE_SMASK = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TIDFLOW_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_ONE_PKT_EGR_ENB = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_ONE_PACKET_PER_EGR_BUFFER_SMASK = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_ONE_PKT_EGR_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_RHQ_DROP_ENB = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_RHQ_DROP_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_EGR_DROP_ENB = common dso_local global i32 0, align 4
@RCV_CTXT_CTRL_DONT_DROP_EGR_FULL_SMASK = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_EGR_DROP_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_URGENT_ENB = common dso_local global i32 0, align 4
@IS_RCVURGENT_START = common dso_local global i64 0, align 8
@HFI1_RCVCTRL_URGENT_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ctxt %d rcvctrl 0x%llx\0A\00", align 1
@RCV_CTXT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ctxt %d status %lld (blocked)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ctxt %d status %lld (%s blocked)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"still\00", align 1
@RCV_AVAIL_TIME_OUT = common dso_local global i32 0, align 4
@RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT = common dso_local global i32 0, align 4
@rcv_intr_count = common dso_local global i64 0, align 8
@RCV_HDR_HEAD_COUNTER_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_rcvctrl(%struct.hfi1_devdata* %0, i32 %1, %struct.hfi1_ctxtdata* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hfi1_ctxtdata* %2, %struct.hfi1_ctxtdata** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %12 = icmp ne %struct.hfi1_ctxtdata* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %470

14:                                               ; preds = %3
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %16 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* @RCVCTRL, align 4
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @hfi1_cdbg(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20)
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* @RCV_CTXT_CTRL, align 4
  %25 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %22, i64 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HFI1_RCVCTRL_CTXT_ENB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %156

30:                                               ; preds = %14
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RCV_CTXT_CTRL_ENABLE_SMASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %156, label %35

35:                                               ; preds = %30
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* @RCV_HDR_ADDR, align 4
  %39 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %40 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %36, i64 %37, i32 %38, i32 %41)
  %43 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %44 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @RCV_HDR_TAIL_ADDR, align 4
  %51 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %52 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %48, i64 %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %35
  %56 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %57 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %56, i32 0, i32 3
  store i32 1, i32* %57, align 8
  %58 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %59 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %61 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %64 = call i32 @rcvhdrq_size(%struct.hfi1_ctxtdata* %63)
  %65 = call i32 @memset(i32 %62, i32 0, i32 %64)
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %67 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %70 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %69, i32 0, i32 7
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @RCV_CTXT_CTRL_ENABLE_SMASK, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @RCV_CTXT_CTRL_EGR_BUF_SIZE_SMASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %79 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @encoded_size(i32 %81)
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @RCV_CTXT_CTRL_EGR_BUF_SIZE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @RCV_CTXT_CTRL_EGR_BUF_SIZE_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* @RCV_HDR_HEAD, align 4
  %93 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %90, i64 %91, i32 %92, i32 0)
  store i32 1, i32* %9, align 4
  %94 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i32, i32* @RCV_EGR_INDEX_HEAD, align 4
  %97 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %94, i64 %95, i32 %96, i32 0)
  %98 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %99 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RCV_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = load i32, i32* @RCV_EGR_CTRL_EGR_CNT_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @RCV_EGR_CTRL_EGR_CNT_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %109 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RCV_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = load i32, i32* @RCV_EGR_CTRL_EGR_BASE_INDEX_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @RCV_EGR_CTRL_EGR_BASE_INDEX_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %107, %116
  store i32 %117, i32* %8, align 4
  %118 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i32, i32* @RCV_EGR_CTRL, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %118, i64 %119, i32 %120, i32 %121)
  %123 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %124 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @RCV_SHIFT, align 4
  %127 = ashr i32 %125, %126
  %128 = load i32, i32* @RCV_TID_CTRL_TID_PAIR_CNT_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @RCV_TID_CTRL_TID_PAIR_CNT_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %133 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RCV_SHIFT, align 4
  %136 = ashr i32 %134, %135
  %137 = load i32, i32* @RCV_TID_CTRL_TID_BASE_INDEX_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @RCV_TID_CTRL_TID_BASE_INDEX_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = or i32 %131, %140
  store i32 %141, i32* %8, align 4
  %142 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i32, i32* @RCV_TID_CTRL, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %142, i64 %143, i32 %144, i32 %145)
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* @HFI1_CTRL_CTXT, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %55
  %151 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %152 = load i32, i32* @RCV_VL15, align 4
  %153 = load i64, i64* @HFI1_CTRL_CTXT, align 8
  %154 = call i32 @write_csr(%struct.hfi1_devdata* %151, i32 %152, i64 %153)
  br label %155

155:                                              ; preds = %150, %55
  br label %156

156:                                              ; preds = %155, %30, %14
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @HFI1_RCVCTRL_CTXT_DIS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %156
  %162 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %163 = load i32, i32* @RCV_VL15, align 4
  %164 = call i32 @write_csr(%struct.hfi1_devdata* %162, i32 %163, i64 0)
  %165 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %166 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %161
  %170 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load i32, i32* @RCV_HDR_TAIL_ADDR, align 4
  %173 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %174 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %170, i64 %171, i32 %172, i32 %175)
  %177 = load i32, i32* @RCV_CTXT_CTRL_TAIL_UPD_SMASK, align 4
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %169, %161
  %181 = load i32, i32* @RCV_CTXT_CTRL_ENABLE_SMASK, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %7, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %180, %156
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_ENB, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %185
  %191 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %192 = load i64, i64* @IS_RCVAVAIL_START, align 8
  %193 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %194 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = load i64, i64* @IS_RCVAVAIL_START, align 8
  %198 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %199 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = call i32 @set_intr_bits(%struct.hfi1_devdata* %191, i64 %196, i64 %201, i32 1)
  %203 = load i32, i32* @RCV_CTXT_CTRL_INTR_AVAIL_SMASK, align 4
  %204 = load i32, i32* %7, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %190, %185
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_DIS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %206
  %212 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %213 = load i64, i64* @IS_RCVAVAIL_START, align 8
  %214 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %215 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %213, %216
  %218 = load i64, i64* @IS_RCVAVAIL_START, align 8
  %219 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %220 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %218, %221
  %223 = call i32 @set_intr_bits(%struct.hfi1_devdata* %212, i64 %217, i64 %222, i32 0)
  %224 = load i32, i32* @RCV_CTXT_CTRL_INTR_AVAIL_SMASK, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %7, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %211, %206
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_ENB, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %235 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %234, i32 0, i32 8
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i32, i32* @RCV_CTXT_CTRL_TAIL_UPD_SMASK, align 4
  %240 = load i32, i32* %7, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %238, %233, %228
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_DIS, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %242
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @HFI1_RCVCTRL_CTXT_DIS, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = load i32, i32* @RCV_CTXT_CTRL_TAIL_UPD_SMASK, align 4
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %7, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %252, %247
  br label %258

258:                                              ; preds = %257, %242
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* @HFI1_RCVCTRL_TIDFLOW_ENB, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = load i32, i32* @RCV_CTXT_CTRL_TID_FLOW_ENABLE_SMASK, align 4
  %265 = load i32, i32* %7, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %7, align 4
  br label %267

267:                                              ; preds = %263, %258
  %268 = load i32, i32* %5, align 4
  %269 = load i32, i32* @HFI1_RCVCTRL_TIDFLOW_DIS, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load i32, i32* @RCV_CTXT_CTRL_TID_FLOW_ENABLE_SMASK, align 4
  %274 = xor i32 %273, -1
  %275 = load i32, i32* %7, align 4
  %276 = and i32 %275, %274
  store i32 %276, i32* %7, align 4
  br label %277

277:                                              ; preds = %272, %267
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* @HFI1_RCVCTRL_ONE_PKT_EGR_ENB, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %277
  %283 = load i32, i32* @RCV_CTXT_CTRL_EGR_BUF_SIZE_SMASK, align 4
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %7, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* @RCV_CTXT_CTRL_ONE_PACKET_PER_EGR_BUFFER_SMASK, align 4
  %288 = load i32, i32* %7, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %7, align 4
  br label %290

290:                                              ; preds = %282, %277
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* @HFI1_RCVCTRL_ONE_PKT_EGR_DIS, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load i32, i32* @RCV_CTXT_CTRL_ONE_PACKET_PER_EGR_BUFFER_SMASK, align 4
  %297 = xor i32 %296, -1
  %298 = load i32, i32* %7, align 4
  %299 = and i32 %298, %297
  store i32 %299, i32* %7, align 4
  br label %300

300:                                              ; preds = %295, %290
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* @HFI1_RCVCTRL_NO_RHQ_DROP_ENB, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %300
  %306 = load i32, i32* @RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK, align 4
  %307 = load i32, i32* %7, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %305, %300
  %310 = load i32, i32* %5, align 4
  %311 = load i32, i32* @HFI1_RCVCTRL_NO_RHQ_DROP_DIS, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load i32, i32* @RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK, align 4
  %316 = xor i32 %315, -1
  %317 = load i32, i32* %7, align 4
  %318 = and i32 %317, %316
  store i32 %318, i32* %7, align 4
  br label %319

319:                                              ; preds = %314, %309
  %320 = load i32, i32* %5, align 4
  %321 = load i32, i32* @HFI1_RCVCTRL_NO_EGR_DROP_ENB, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %319
  %325 = load i32, i32* @RCV_CTXT_CTRL_DONT_DROP_EGR_FULL_SMASK, align 4
  %326 = load i32, i32* %7, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %7, align 4
  br label %328

328:                                              ; preds = %324, %319
  %329 = load i32, i32* %5, align 4
  %330 = load i32, i32* @HFI1_RCVCTRL_NO_EGR_DROP_DIS, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load i32, i32* @RCV_CTXT_CTRL_DONT_DROP_EGR_FULL_SMASK, align 4
  %335 = xor i32 %334, -1
  %336 = load i32, i32* %7, align 4
  %337 = and i32 %336, %335
  store i32 %337, i32* %7, align 4
  br label %338

338:                                              ; preds = %333, %328
  %339 = load i32, i32* %5, align 4
  %340 = load i32, i32* @HFI1_RCVCTRL_URGENT_ENB, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %338
  %344 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %345 = load i64, i64* @IS_RCVURGENT_START, align 8
  %346 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %347 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %345, %348
  %350 = load i64, i64* @IS_RCVURGENT_START, align 8
  %351 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %352 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %350, %353
  %355 = call i32 @set_intr_bits(%struct.hfi1_devdata* %344, i64 %349, i64 %354, i32 1)
  br label %356

356:                                              ; preds = %343, %338
  %357 = load i32, i32* %5, align 4
  %358 = load i32, i32* @HFI1_RCVCTRL_URGENT_DIS, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %374

361:                                              ; preds = %356
  %362 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %363 = load i64, i64* @IS_RCVURGENT_START, align 8
  %364 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %365 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = add nsw i64 %363, %366
  %368 = load i64, i64* @IS_RCVURGENT_START, align 8
  %369 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %370 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %368, %371
  %373 = call i32 @set_intr_bits(%struct.hfi1_devdata* %362, i64 %367, i64 %372, i32 0)
  br label %374

374:                                              ; preds = %361, %356
  %375 = load i32, i32* @RCVCTRL, align 4
  %376 = load i64, i64* %10, align 8
  %377 = load i32, i32* %7, align 4
  %378 = call i32 @hfi1_cdbg(i32 %375, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %376, i32 %377)
  %379 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %380 = load i64, i64* %10, align 8
  %381 = load i32, i32* @RCV_CTXT_CTRL, align 4
  %382 = load i32, i32* %7, align 4
  %383 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %379, i64 %380, i32 %381, i32 %382)
  %384 = load i32, i32* %9, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %432

386:                                              ; preds = %374
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* @RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %432

391:                                              ; preds = %386
  %392 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %393 = load i64, i64* %10, align 8
  %394 = load i32, i32* @RCV_CTXT_STATUS, align 4
  %395 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %392, i64 %393, i32 %394)
  store i32 %395, i32* %8, align 4
  %396 = load i32, i32* %8, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %431

398:                                              ; preds = %391
  %399 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %400 = load i64, i64* %10, align 8
  %401 = load i32, i32* %8, align 4
  %402 = call i32 (%struct.hfi1_devdata*, i8*, i64, i32, ...) @dd_dev_info(%struct.hfi1_devdata* %399, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %400, i32 %401)
  %403 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %404 = load i64, i64* %10, align 8
  %405 = load i32, i32* @RCV_HDR_HEAD, align 4
  %406 = call i32 @read_uctxt_csr(%struct.hfi1_devdata* %403, i64 %404, i32 %405)
  %407 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %408 = load i64, i64* %10, align 8
  %409 = load i32, i32* @RCV_HDR_HEAD, align 4
  %410 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %407, i64 %408, i32 %409, i32 16)
  %411 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %412 = load i64, i64* %10, align 8
  %413 = load i32, i32* @RCV_HDR_HEAD, align 4
  %414 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %411, i64 %412, i32 %413, i32 0)
  %415 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %416 = load i64, i64* %10, align 8
  %417 = load i32, i32* @RCV_HDR_HEAD, align 4
  %418 = call i32 @read_uctxt_csr(%struct.hfi1_devdata* %415, i64 %416, i32 %417)
  %419 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %420 = load i64, i64* %10, align 8
  %421 = load i32, i32* @RCV_CTXT_STATUS, align 4
  %422 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %419, i64 %420, i32 %421)
  store i32 %422, i32* %8, align 4
  %423 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %424 = load i64, i64* %10, align 8
  %425 = load i32, i32* %8, align 4
  %426 = load i32, i32* %8, align 4
  %427 = icmp eq i32 %426, 0
  %428 = zext i1 %427 to i64
  %429 = select i1 %427, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %430 = call i32 (%struct.hfi1_devdata*, i8*, i64, i32, ...) @dd_dev_info(%struct.hfi1_devdata* %423, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %424, i32 %425, i8* %429)
  br label %431

431:                                              ; preds = %398, %391
  br label %432

432:                                              ; preds = %431, %386, %374
  %433 = load i32, i32* %9, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %455

435:                                              ; preds = %432
  %436 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %437 = load i64, i64* %10, align 8
  %438 = load i32, i32* @RCV_AVAIL_TIME_OUT, align 4
  %439 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %440 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %439, i32 0, i32 7
  %441 = load i64, i64* %440, align 8
  %442 = trunc i64 %441 to i32
  %443 = load i32, i32* @RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT, align 4
  %444 = shl i32 %442, %443
  %445 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %436, i64 %437, i32 %438, i32 %444)
  %446 = load i64, i64* @rcv_intr_count, align 8
  %447 = trunc i64 %446 to i32
  %448 = load i32, i32* @RCV_HDR_HEAD_COUNTER_SHIFT, align 4
  %449 = shl i32 %447, %448
  store i32 %449, i32* %8, align 4
  %450 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %451 = load i64, i64* %10, align 8
  %452 = load i32, i32* @RCV_HDR_HEAD, align 4
  %453 = load i32, i32* %8, align 4
  %454 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %450, i64 %451, i32 %452, i32 %453)
  br label %455

455:                                              ; preds = %435, %432
  %456 = load i32, i32* %5, align 4
  %457 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_DIS, align 4
  %458 = load i32, i32* @HFI1_RCVCTRL_CTXT_DIS, align 4
  %459 = or i32 %457, %458
  %460 = and i32 %456, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %455
  %463 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %464 = load i64, i64* %10, align 8
  %465 = load i32, i32* @RCV_HDR_TAIL_ADDR, align 4
  %466 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %467 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %463, i64 %464, i32 %465, i32 %468)
  br label %470

470:                                              ; preds = %13, %462, %455
  ret void
}

declare dso_local i32 @hfi1_cdbg(i32, i8*, i64, i32) #1

declare dso_local i32 @read_kctxt_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i64, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rcvhdrq_size(%struct.hfi1_ctxtdata*) #1

declare dso_local i64 @encoded_size(i32) #1

declare dso_local i32 @write_uctxt_csr(%struct.hfi1_devdata*, i64, i32, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local i32 @set_intr_bits(%struct.hfi1_devdata*, i64, i64, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i64, i32, ...) #1

declare dso_local i32 @read_uctxt_csr(%struct.hfi1_devdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
