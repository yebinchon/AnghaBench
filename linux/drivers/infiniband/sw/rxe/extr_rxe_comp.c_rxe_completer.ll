; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_rxe_completer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_rxe_completer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, i64, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_send_wqe = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxe_pkt_info = type { i32, i32, %struct.rxe_qp*, i32 }

@QP_STATE_ERROR = common dso_local global i64 0, align 8
@QP_STATE_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"qp#%d state = %s\0A\00", align 1
@comp_state_name = common dso_local global i32* null, align 8
@wqe_state_pending = common dso_local global i32 0, align 4
@RXE_END_MASK = common dso_local global i32 0, align 4
@BTH_PSN_MASK = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@QP_STATE_READY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@wqe_state_posted = common dso_local global i32 0, align 4
@RXE_CNT_COMP_RETRY = common dso_local global i32 0, align 4
@RXE_CNT_RETRY_EXCEEDED = common dso_local global i32 0, align 4
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"qp#%d set rnr nak timer\0A\00", align 1
@AETH_TYPE_MASK = common dso_local global i32 0, align 4
@RXE_CNT_RNR_RETRY_EXCEEDED = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_completer(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca %struct.rxe_send_wqe*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rxe_pkt_info*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.rxe_qp*
  store %struct.rxe_qp* %11, %struct.rxe_qp** %4, align 8
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.rxe_dev* @to_rdev(i32 %15)
  store %struct.rxe_dev* %16, %struct.rxe_dev** %5, align 8
  store %struct.rxe_send_wqe* null, %struct.rxe_send_wqe** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store %struct.rxe_pkt_info* null, %struct.rxe_pkt_info** %8, align 8
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %18 = call i32 @rxe_add_ref(%struct.rxe_qp* %17)
  %19 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %20 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %25 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QP_STATE_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %32 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QP_STATE_RESET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %30, %23, %1
  %38 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %39 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %40 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %45 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @QP_STATE_ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %43, %37
  %51 = phi i1 [ false, %37 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @rxe_drain_resp_pkts(%struct.rxe_qp* %38, i32 %52)
  br label %434

54:                                               ; preds = %30
  %55 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %56 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %62 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %65 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  br label %71

67:                                               ; preds = %54
  %68 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %69 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %434

78:                                               ; preds = %71
  store i32 133, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %433
  %80 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %81 = call i32 @qp_num(%struct.rxe_qp* %80)
  %82 = load i32*, i32** @comp_state_name, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %433 [
    i32 133, label %89
    i32 132, label %102
    i32 140, label %106
    i32 141, label %111
    i32 131, label %116
    i32 142, label %121
    i32 128, label %126
    i32 139, label %143
    i32 138, label %148
    i32 129, label %153
    i32 137, label %206
    i32 134, label %217
    i32 135, label %265
    i32 130, label %360
    i32 136, label %410
  ]

89:                                               ; preds = %79
  %90 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %91 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %90, i32 0, i32 5
  %92 = call %struct.sk_buff* @skb_dequeue(i32* %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %7, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call %struct.rxe_pkt_info* @SKB_TO_PKT(%struct.sk_buff* %96)
  store %struct.rxe_pkt_info* %97, %struct.rxe_pkt_info** %8, align 8
  %98 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %99 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %95, %89
  store i32 132, i32* %9, align 4
  br label %433

102:                                              ; preds = %79
  %103 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %104 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %105 = call i32 @get_wqe(%struct.rxe_qp* %103, %struct.rxe_pkt_info* %104, %struct.rxe_send_wqe** %6)
  store i32 %105, i32* %9, align 4
  br label %433

106:                                              ; preds = %79
  %107 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %108 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %109 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %110 = call i32 @check_psn(%struct.rxe_qp* %107, %struct.rxe_pkt_info* %108, %struct.rxe_send_wqe* %109)
  store i32 %110, i32* %9, align 4
  br label %433

111:                                              ; preds = %79
  %112 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %113 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %114 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %115 = call i32 @check_ack(%struct.rxe_qp* %112, %struct.rxe_pkt_info* %113, %struct.rxe_send_wqe* %114)
  store i32 %115, i32* %9, align 4
  br label %433

116:                                              ; preds = %79
  %117 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %118 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %119 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %120 = call i32 @do_read(%struct.rxe_qp* %117, %struct.rxe_pkt_info* %118, %struct.rxe_send_wqe* %119)
  store i32 %120, i32* %9, align 4
  br label %433

121:                                              ; preds = %79
  %122 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %123 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %124 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %125 = call i32 @do_atomic(%struct.rxe_qp* %122, %struct.rxe_pkt_info* %123, %struct.rxe_send_wqe* %124)
  store i32 %125, i32* %9, align 4
  br label %433

126:                                              ; preds = %79
  %127 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %128 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @wqe_state_pending, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %134 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %137 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 139, i32* %9, align 4
  br label %142

141:                                              ; preds = %132, %126
  store i32 129, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %140
  br label %433

143:                                              ; preds = %79
  %144 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %145 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %146 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %147 = call i32 @complete_ack(%struct.rxe_qp* %144, %struct.rxe_pkt_info* %145, %struct.rxe_send_wqe* %146)
  store i32 %147, i32* %9, align 4
  br label %433

148:                                              ; preds = %79
  %149 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %150 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %151 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %152 = call i32 @complete_wqe(%struct.rxe_qp* %149, %struct.rxe_pkt_info* %150, %struct.rxe_send_wqe* %151)
  store i32 %152, i32* %9, align 4
  br label %433

153:                                              ; preds = %79
  %154 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %155 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @RXE_END_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %162 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i32 -1, i32* %163, align 4
  br label %171

164:                                              ; preds = %153
  %165 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %166 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %169 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %160
  %172 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %173 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %176 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @psn_compare(i32 %174, i32 %178)
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %171
  %182 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %183 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* @BTH_PSN_MASK, align 4
  %187 = and i32 %185, %186
  %188 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %189 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 %187, i32* %190, align 8
  br label %191

191:                                              ; preds = %181, %171
  %192 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %193 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %199 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  store i32 0, i32* %200, align 4
  %201 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %202 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  %204 = call i32 @rxe_run_task(i32* %203, i32 1)
  br label %205

205:                                              ; preds = %197, %191
  store i32 137, i32* %9, align 4
  br label %433

206:                                              ; preds = %79
  %207 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %208 = icmp ne %struct.rxe_pkt_info* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %211 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %210, i32 0, i32 2
  %212 = load %struct.rxe_qp*, %struct.rxe_qp** %211, align 8
  %213 = call i32 @rxe_drop_ref(%struct.rxe_qp* %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %215 = call i32 @kfree_skb(%struct.sk_buff* %214)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %216

216:                                              ; preds = %209, %206
  br label %442

217:                                              ; preds = %79
  %218 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %219 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %225 = icmp ne %struct.rxe_send_wqe* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 135, i32* %9, align 4
  br label %433

227:                                              ; preds = %223, %217
  %228 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %229 = call i32 @qp_type(%struct.rxe_qp* %228)
  %230 = load i32, i32* @IB_QPT_RC, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %264

232:                                              ; preds = %227
  %233 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %234 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @QP_STATE_READY, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %264

239:                                              ; preds = %232
  %240 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %241 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %245 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @psn_compare(i32 %243, i32 %247)
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %239
  %251 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %252 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %257 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %256, i32 0, i32 4
  %258 = load i64, i64* @jiffies, align 8
  %259 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %260 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %258, %261
  %263 = call i32 @mod_timer(i32* %257, i64 %262)
  br label %264

264:                                              ; preds = %255, %250, %239, %232, %227
  br label %434

265:                                              ; preds = %79
  %266 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %267 = icmp ne %struct.rxe_send_wqe* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %270 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @wqe_state_posted, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %268, %265
  br label %434

275:                                              ; preds = %268
  %276 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %277 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %298

281:                                              ; preds = %275
  %282 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %283 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %298, label %287

287:                                              ; preds = %281
  %288 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %289 = icmp ne %struct.rxe_pkt_info* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %292 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %291, i32 0, i32 2
  %293 = load %struct.rxe_qp*, %struct.rxe_qp** %292, align 8
  %294 = call i32 @rxe_drop_ref(%struct.rxe_qp* %293)
  %295 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %296 = call i32 @kfree_skb(%struct.sk_buff* %295)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %297

297:                                              ; preds = %290, %287
  br label %442

298:                                              ; preds = %281, %275
  %299 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %300 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %352

304:                                              ; preds = %298
  %305 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %306 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 7
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %312 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %310, %304
  %317 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %318 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %322 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @psn_compare(i32 %320, i32 %324)
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %341

327:                                              ; preds = %316
  %328 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %329 = load i32, i32* @RXE_CNT_COMP_RETRY, align 4
  %330 = call i32 @rxe_counter_inc(%struct.rxe_dev* %328, i32 %329)
  %331 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %332 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  store i32 1, i32* %333, align 8
  %334 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %335 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 3
  store i32 1, i32* %336, align 4
  %337 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %338 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 2
  %340 = call i32 @rxe_run_task(i32* %339, i32 1)
  br label %341

341:                                              ; preds = %327, %316
  %342 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %343 = icmp ne %struct.rxe_pkt_info* %342, null
  br i1 %343, label %344, label %351

344:                                              ; preds = %341
  %345 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %346 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %345, i32 0, i32 2
  %347 = load %struct.rxe_qp*, %struct.rxe_qp** %346, align 8
  %348 = call i32 @rxe_drop_ref(%struct.rxe_qp* %347)
  %349 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %350 = call i32 @kfree_skb(%struct.sk_buff* %349)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %351

351:                                              ; preds = %344, %341
  br label %442

352:                                              ; preds = %298
  %353 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %354 = load i32, i32* @RXE_CNT_RETRY_EXCEEDED, align 4
  %355 = call i32 @rxe_counter_inc(%struct.rxe_dev* %353, i32 %354)
  %356 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %357 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %358 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 4
  store i32 136, i32* %9, align 4
  br label %359

359:                                              ; preds = %352
  br label %433

360:                                              ; preds = %79
  %361 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %362 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %402

366:                                              ; preds = %360
  %367 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %368 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %370, 7
  br i1 %371, label %372, label %378

372:                                              ; preds = %366
  %373 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %374 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, -1
  store i32 %377, i32* %375, align 4
  br label %378

378:                                              ; preds = %372, %366
  %379 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %380 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 1
  store i32 1, i32* %381, align 8
  %382 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %383 = call i32 @qp_num(%struct.rxe_qp* %382)
  %384 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %383)
  %385 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %386 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %385, i32 0, i32 0
  %387 = load i64, i64* @jiffies, align 8
  %388 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %389 = call i32 @aeth_syn(%struct.rxe_pkt_info* %388)
  %390 = load i32, i32* @AETH_TYPE_MASK, align 4
  %391 = xor i32 %390, -1
  %392 = and i32 %389, %391
  %393 = call i64 @rnrnak_jiffies(i32 %392)
  %394 = add nsw i64 %387, %393
  %395 = call i32 @mod_timer(i32* %386, i64 %394)
  %396 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %397 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %396, i32 0, i32 2
  %398 = load %struct.rxe_qp*, %struct.rxe_qp** %397, align 8
  %399 = call i32 @rxe_drop_ref(%struct.rxe_qp* %398)
  %400 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %401 = call i32 @kfree_skb(%struct.sk_buff* %400)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %434

402:                                              ; preds = %360
  %403 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %404 = load i32, i32* @RXE_CNT_RNR_RETRY_EXCEEDED, align 4
  %405 = call i32 @rxe_counter_inc(%struct.rxe_dev* %403, i32 %404)
  %406 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  %407 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %408 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %407, i32 0, i32 0
  store i32 %406, i32* %408, align 4
  store i32 136, i32* %9, align 4
  br label %409

409:                                              ; preds = %402
  br label %433

410:                                              ; preds = %79
  %411 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %412 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @IB_WC_SUCCESS, align 4
  %415 = icmp eq i32 %413, %414
  %416 = zext i1 %415 to i32
  %417 = call i32 @WARN_ON_ONCE(i32 %416)
  %418 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %419 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %420 = call i32 @do_complete(%struct.rxe_qp* %418, %struct.rxe_send_wqe* %419)
  %421 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %422 = call i32 @rxe_qp_error(%struct.rxe_qp* %421)
  %423 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %424 = icmp ne %struct.rxe_pkt_info* %423, null
  br i1 %424, label %425, label %432

425:                                              ; preds = %410
  %426 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %8, align 8
  %427 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %426, i32 0, i32 2
  %428 = load %struct.rxe_qp*, %struct.rxe_qp** %427, align 8
  %429 = call i32 @rxe_drop_ref(%struct.rxe_qp* %428)
  %430 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %431 = call i32 @kfree_skb(%struct.sk_buff* %430)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %432

432:                                              ; preds = %425, %410
  br label %434

433:                                              ; preds = %79, %409, %359, %226, %205, %148, %143, %142, %121, %116, %111, %106, %102, %101
  br label %79

434:                                              ; preds = %432, %378, %274, %264, %77, %50
  %435 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %436 = ptrtoint %struct.sk_buff* %435 to i32
  %437 = call i32 @WARN_ON_ONCE(i32 %436)
  %438 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %439 = call i32 @rxe_drop_ref(%struct.rxe_qp* %438)
  %440 = load i32, i32* @EAGAIN, align 4
  %441 = sub nsw i32 0, %440
  store i32 %441, i32* %2, align 4
  br label %448

442:                                              ; preds = %351, %297, %216
  %443 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %444 = ptrtoint %struct.sk_buff* %443 to i32
  %445 = call i32 @WARN_ON_ONCE(i32 %444)
  %446 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %447 = call i32 @rxe_drop_ref(%struct.rxe_qp* %446)
  store i32 0, i32* %2, align 4
  br label %448

448:                                              ; preds = %442, %434
  %449 = load i32, i32* %2, align 4
  ret i32 %449
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i32 @rxe_add_ref(%struct.rxe_qp*) #1

declare dso_local i32 @rxe_drain_resp_pkts(%struct.rxe_qp*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @qp_num(%struct.rxe_qp*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.rxe_pkt_info* @SKB_TO_PKT(%struct.sk_buff*) #1

declare dso_local i32 @get_wqe(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe**) #1

declare dso_local i32 @check_psn(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @check_ack(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @do_read(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @do_atomic(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @complete_ack(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @complete_wqe(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @psn_compare(i32, i32) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @rxe_counter_inc(%struct.rxe_dev*, i32) #1

declare dso_local i64 @rnrnak_jiffies(i32) #1

declare dso_local i32 @aeth_syn(%struct.rxe_pkt_info*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @do_complete(%struct.rxe_qp*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @rxe_qp_error(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
