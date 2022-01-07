; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_do_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hfi1_qp_priv = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hfi1_pkt_state = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_8__*, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@loopback = common dso_local global i32 0, align 4
@SEND_RESCHED_TIMEOUT = common dso_local global i8* null, align 8
@HFI1_S_ANY_WAIT_IO = common dso_local global i32 0, align 4
@IOWAIT_PENDING_IB = common dso_local global i32 0, align 4
@RVT_S_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HFI1_S_TID_BUSY_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_do_send(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pkt_state, align 8
  %6 = alloca %struct.hfi1_qp_priv*, align 8
  %7 = alloca i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %9 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %8, i32 0, i32 6
  %10 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  store %struct.hfi1_qp_priv* %10, %struct.hfi1_qp_priv** %6, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @to_idev(i32 %14)
  %16 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 10
  store i32 %15, i32* %16, align 4
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @to_iport(i32 %20, i32 %23)
  %25 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 9
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_8__* @ppd_from_ibp(i32 %27)
  %29 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 6
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %33 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %32, i32 0, i32 1
  %34 = call i32 @iowait_get_ib_work(i32* %33)
  %35 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 5
  store i32 %34, i32* %35, align 8
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @trace_hfi1_rc_do_send(%struct.rvt_qp* %36, i32 %37)
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %40 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %98 [
    i32 129, label %43
    i32 128, label %71
  ]

43:                                               ; preds = %2
  %44 = load i32, i32* @loopback, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %43
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 3
  %49 = call i32 @rdma_ah_get_dlid(i32* %48)
  %50 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 6
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  %56 = xor i32 %55, -1
  %57 = and i32 %49, %56
  %58 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 6
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %65 = call i32 @rvt_ruc_loopback(%struct.rvt_qp* %64)
  br label %227

66:                                               ; preds = %46, %43
  store i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)* @hfi1_make_rc_req, i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)** %7, align 8
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  br label %102

71:                                               ; preds = %2
  %72 = load i32, i32* @loopback, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %71
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %76 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %75, i32 0, i32 3
  %77 = call i32 @rdma_ah_get_dlid(i32* %76)
  %78 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 6
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  %85 = and i32 %77, %84
  %86 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 6
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %74
  %92 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %93 = call i32 @rvt_ruc_loopback(%struct.rvt_qp* %92)
  br label %227

94:                                               ; preds = %74, %71
  store i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)* @hfi1_make_uc_req, i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)** %7, align 8
  %95 = load i8*, i8** @SEND_RESCHED_TIMEOUT, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  br label %102

98:                                               ; preds = %2
  store i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)* @hfi1_make_ud_req, i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)** %7, align 8
  %99 = load i8*, i8** @SEND_RESCHED_TIMEOUT, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %94, %66
  %103 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %104 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @spin_lock_irqsave(i32* %104, i32 %106)
  %108 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %109 = call i32 @hfi1_send_ok(%struct.rvt_qp* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %102
  %112 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %113 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HFI1_S_ANY_WAIT_IO, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %120 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %119, i32 0, i32 1
  %121 = load i32, i32* @IOWAIT_PENDING_IB, align 4
  %122 = call i32 @iowait_set_flag(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %111
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %125 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @spin_unlock_irqrestore(i32* %125, i32 %127)
  br label %227

129:                                              ; preds = %102
  %130 = load i32, i32* @RVT_S_BUSY, align 4
  %131 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %132 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 8
  %138 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  %139 = load i64, i64* @jiffies, align 8
  %140 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  %144 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 8
  store i64 %143, i64* %144, align 8
  %145 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %146 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = icmp ne %struct.TYPE_6__* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %129
  %150 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %151 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  br label %164

155:                                              ; preds = %129
  %156 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 6
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @cpumask_of_node(i32 %161)
  %163 = call i32 @cpumask_first(i32 %162)
  br label %164

164:                                              ; preds = %155, %149
  %165 = phi i32 [ %154, %149 ], [ %163, %155 ]
  %166 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 7
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 2
  store i32 0, i32* %167, align 8
  %168 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @get_waiting_verbs_txreq(i32 %169)
  %171 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 4
  store i64 %170, i64* %171, align 8
  br label %172

172:                                              ; preds = %211, %164
  %173 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %210

176:                                              ; preds = %172
  %177 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %178 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @HFI1_S_TID_BUSY_SET, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = load i32, i32* @RVT_S_BUSY, align 4
  %185 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %186 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %183, %176
  %190 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %191 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @spin_unlock_irqrestore(i32* %191, i32 %193)
  %195 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %196 = call i64 @hfi1_verbs_send(%struct.rvt_qp* %195, %struct.hfi1_pkt_state* %5)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %227

199:                                              ; preds = %189
  %200 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %201 = call i64 @hfi1_schedule_send_yield(%struct.rvt_qp* %200, %struct.hfi1_pkt_state* %5, i32 0)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %227

204:                                              ; preds = %199
  %205 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %206 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @spin_lock_irqsave(i32* %206, i32 %208)
  br label %210

210:                                              ; preds = %204, %172
  br label %211

211:                                              ; preds = %210
  %212 = load i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)*, i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)** %7, align 8
  %213 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %214 = call i32 %212(%struct.rvt_qp* %213, %struct.hfi1_pkt_state* %5)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %172, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %220 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %219, i32 0, i32 1
  %221 = call i32 @iowait_starve_clear(i32 %218, i32* %220)
  %222 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %223 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %5, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @spin_unlock_irqrestore(i32* %223, i32 %225)
  br label %227

227:                                              ; preds = %216, %203, %198, %123, %91, %63
  ret void
}

declare dso_local i32 @to_idev(i32) #1

declare dso_local i32 @to_iport(i32, i32) #1

declare dso_local %struct.TYPE_8__* @ppd_from_ibp(i32) #1

declare dso_local i32 @iowait_get_ib_work(i32*) #1

declare dso_local i32 @trace_hfi1_rc_do_send(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rdma_ah_get_dlid(i32*) #1

declare dso_local i32 @rvt_ruc_loopback(%struct.rvt_qp*) #1

declare dso_local i32 @hfi1_make_rc_req(%struct.rvt_qp*, %struct.hfi1_pkt_state*) #1

declare dso_local i32 @hfi1_make_uc_req(%struct.rvt_qp*, %struct.hfi1_pkt_state*) #1

declare dso_local i32 @hfi1_make_ud_req(%struct.rvt_qp*, %struct.hfi1_pkt_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @hfi1_send_ok(%struct.rvt_qp*) #1

declare dso_local i32 @iowait_set_flag(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i64 @get_waiting_verbs_txreq(i32) #1

declare dso_local i64 @hfi1_verbs_send(%struct.rvt_qp*, %struct.hfi1_pkt_state*) #1

declare dso_local i64 @hfi1_schedule_send_yield(%struct.rvt_qp*, %struct.hfi1_pkt_state*, i32) #1

declare dso_local i32 @iowait_starve_clear(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
