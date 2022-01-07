; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_7__*, i32, %struct.ib_recv_wr* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.rvt_qp = type { i64, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64, %struct.rvt_krwq* }
%struct.rvt_krwq = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rvt_rwqe = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ib_wc = type { i32, i32, i32, %struct.TYPE_5__* }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_FLUSH_RECV = common dso_local global i32 0, align 4
@RVT_POST_RECV_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca %struct.rvt_krwq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rvt_rwqe*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_wc, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = call %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp* %16)
  store %struct.rvt_qp* %17, %struct.rvt_qp** %8, align 8
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %19 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.rvt_krwq*, %struct.rvt_krwq** %20, align 8
  store %struct.rvt_krwq* %21, %struct.rvt_krwq** %9, align 8
  %22 = load i32*, i32** @ib_rvt_state_ops, align 8
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RVT_FLUSH_RECV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %33 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %31, %3
  %39 = phi i1 [ false, %3 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** @ib_rvt_state_ops, align 8
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %43 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RVT_POST_RECV_OK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %52 = icmp ne %struct.rvt_krwq* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50, %38
  %54 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %55 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %54, %struct.ib_recv_wr** %55, align 8
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %227

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %222, %58
  %60 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %61 = icmp ne %struct.ib_recv_wr* %60, null
  br i1 %61, label %62, label %226

62:                                               ; preds = %59
  %63 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %67 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ugt i32 %65, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %73 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %72, %struct.ib_recv_wr** %73, align 8
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %227

76:                                               ; preds = %62
  %77 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %78 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load %struct.rvt_krwq*, %struct.rvt_krwq** %79, align 8
  %81 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %80, i32 0, i32 1
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %85 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %90 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %76
  store i64 0, i64* %13, align 8
  br label %95

95:                                               ; preds = %94, %76
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %98 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @READ_ONCE(i32 %99)
  %101 = icmp eq i64 %96, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %104 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load %struct.rvt_krwq*, %struct.rvt_krwq** %105, align 8
  %107 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %106, i32 0, i32 1
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %111 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %110, %struct.ib_recv_wr** %111, align 8
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %227

114:                                              ; preds = %95
  %115 = load i32, i32* %11, align 4
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %114
  %119 = call i32 @memset(%struct.ib_wc* %15, i32 0, i32 24)
  %120 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %121 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 3
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %122, align 8
  %123 = load i32, i32* @IB_WC_RECV, align 4
  %124 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 2
  store i32 %123, i32* %124, align 8
  %125 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %130 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %132 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ibcq_to_rvtcq(i32 %134)
  %136 = call i32 @rvt_cq_enter(i32 %135, %struct.ib_wc* %15, i32 1)
  br label %214

137:                                              ; preds = %114
  %138 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %139 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %138, i32 0, i32 1
  %140 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %141 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call %struct.rvt_rwqe* @rvt_get_rwqe_ptr(%struct.TYPE_8__* %139, i64 %142)
  store %struct.rvt_rwqe* %143, %struct.rvt_rwqe** %12, align 8
  %144 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %145 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %12, align 8
  %148 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %12, align 8
  %153 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  store i32 0, i32* %14, align 4
  br label %154

154:                                              ; preds = %206, %137
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %157 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %209

160:                                              ; preds = %154
  %161 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %162 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %12, align 8
  %170 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  store i32 %168, i32* %175, align 4
  %176 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %177 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %176, i32 0, i32 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %12, align 8
  %185 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %184, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i32 %183, i32* %190, align 4
  %191 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %192 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %191, i32 0, i32 1
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %12, align 8
  %200 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %199, i32 0, i32 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  store i32 %198, i32* %205, align 4
  br label %206

206:                                              ; preds = %160
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %154

209:                                              ; preds = %154
  %210 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %211 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %210, i32 0, i32 0
  %212 = load i64, i64* %13, align 8
  %213 = call i32 @smp_store_release(i64* %211, i64 %212)
  br label %214

214:                                              ; preds = %209, %118
  %215 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %216 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load %struct.rvt_krwq*, %struct.rvt_krwq** %217, align 8
  %219 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %218, i32 0, i32 1
  %220 = load i64, i64* %10, align 8
  %221 = call i32 @spin_unlock_irqrestore(i32* %219, i64 %220)
  br label %222

222:                                              ; preds = %214
  %223 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %224 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %223, i32 0, i32 3
  %225 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %224, align 8
  store %struct.ib_recv_wr* %225, %struct.ib_recv_wr** %6, align 8
  br label %59

226:                                              ; preds = %59
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %226, %102, %71, %53
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @rvt_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @ibcq_to_rvtcq(i32) #1

declare dso_local %struct.rvt_rwqe* @rvt_get_rwqe_ptr(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @smp_store_release(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
