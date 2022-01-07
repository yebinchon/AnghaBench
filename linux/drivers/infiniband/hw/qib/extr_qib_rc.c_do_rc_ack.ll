; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qib_ctxtdata = type { i32 }
%struct.qib_ibport = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }
%struct.rvt_swqe = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@IB_AETH_NAK_SHIFT = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@RDMA_READ_RESPONSE_ONLY = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_LAST = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@RVT_R_RDMAR_SEQ = common dso_local global i32 0, align 4
@RVT_R_RSP_SEND = common dso_local global i32 0, align 4
@RVT_S_WAIT_FENCE = common dso_local global i32 0, align 4
@RVT_S_WAIT_ACK = common dso_local global i32 0, align 4
@RVT_S_WAIT_RDMAR = common dso_local global i32 0, align 4
@SEND_LAST = common dso_local global i32 0, align 4
@RVT_S_WAIT_RNR = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@QIB_PSN_MASK = common dso_local global i32 0, align 4
@RVT_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@IB_AETH_CREDIT_SHIFT = common dso_local global i32 0, align 4
@IB_AETH_CREDIT_MASK = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, i32, i32, i32, i32, %struct.qib_ctxtdata*)* @do_rc_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rc_ack(%struct.rvt_qp* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.qib_ctxtdata* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qib_ctxtdata*, align 8
  %14 = alloca %struct.qib_ibport*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rvt_swqe*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.qib_ctxtdata* %5, %struct.qib_ctxtdata** %13, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IB_AETH_NAK_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* %18, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %18, align 4
  br label %29

29:                                               ; preds = %26, %6
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %30, i64 %33)
  store %struct.rvt_swqe* %34, %struct.rvt_swqe** %16, align 8
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %40 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.qib_ibport* @to_iport(i32 %38, i32 %41)
  store %struct.qib_ibport* %42, %struct.qib_ibport** %14, align 8
  br label %43

43:                                               ; preds = %250, %29
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %46 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @qib_cmp24(i32 %44, i32 %47)
  store i32 %48, i32* %19, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %251

50:                                               ; preds = %43
  %51 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %52 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @RDMA_READ_RESPONSE_ONLY, align 4
  %60 = call i32 @OP(i32 %59)
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %19, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %17, align 4
  br label %490

66:                                               ; preds = %62, %57, %50
  %67 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %68 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @RDMA_READ_RESPONSE_LAST, align 4
  %76 = call i32 @OP(i32 %75)
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %103, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %78, %66
  %82 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %83 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %90 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %141

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %98 = call i32 @OP(i32 %97)
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %100, %95, %78, %73
  %104 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %105 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RVT_R_RDMAR_SEQ, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %140, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @RVT_R_RDMAR_SEQ, align 4
  %112 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %113 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %117 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %118 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @qib_restart_rc(%struct.rvt_qp* %116, i32 %120, i32 0)
  %122 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %123 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %122, i32 0, i32 13
  %124 = call i64 @list_empty(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %110
  %127 = load i32, i32* @RVT_R_RSP_SEND, align 4
  %128 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %129 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %133 = call i32 @rvt_get_qp(%struct.rvt_qp* %132)
  %134 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %135 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %134, i32 0, i32 13
  %136 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %13, align 8
  %137 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %136, i32 0, i32 0
  %138 = call i32 @list_add_tail(i32* %135, i32* %137)
  br label %139

139:                                              ; preds = %126, %110
  br label %140

140:                                              ; preds = %139, %103
  br label %490

141:                                              ; preds = %100, %88
  %142 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %143 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %150 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %148, %141
  %156 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %157 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %20, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32*, i32** %20, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %155, %148
  %165 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %166 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %165, i32 0, i32 12
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %237

169:                                              ; preds = %164
  %170 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %171 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %190, label %176

176:                                              ; preds = %169
  %177 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %178 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %190, label %183

183:                                              ; preds = %176
  %184 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %185 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %237

190:                                              ; preds = %183, %176, %169
  %191 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %192 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %191, i32 0, i32 12
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, -1
  store i64 %194, i64* %192, align 8
  %195 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %196 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @RVT_S_WAIT_FENCE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %190
  %202 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %203 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %202, i32 0, i32 12
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* @RVT_S_WAIT_FENCE, align 4
  %208 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %209 = or i32 %207, %208
  %210 = xor i32 %209, -1
  %211 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %212 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %216 = call i32 @qib_schedule_send(%struct.rvt_qp* %215)
  br label %236

217:                                              ; preds = %201, %190
  %218 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %219 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @RVT_S_WAIT_RDMAR, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %217
  %225 = load i32, i32* @RVT_S_WAIT_RDMAR, align 4
  %226 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %227 = or i32 %225, %226
  %228 = xor i32 %227, -1
  %229 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %230 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %234 = call i32 @qib_schedule_send(%struct.rvt_qp* %233)
  br label %235

235:                                              ; preds = %224, %217
  br label %236

236:                                              ; preds = %235, %206
  br label %237

237:                                              ; preds = %236, %183, %164
  %238 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %239 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %240 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %241 = call %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp* %238, %struct.rvt_swqe* %239, %struct.qib_ibport* %240)
  store %struct.rvt_swqe* %241, %struct.rvt_swqe** %16, align 8
  %242 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %243 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %246 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %244, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %237
  br label %251

250:                                              ; preds = %237
  br label %43

251:                                              ; preds = %249, %43
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @IB_AETH_NAK_SHIFT, align 4
  %254 = ashr i32 %252, %253
  switch i32 %254, label %488 [
    i32 0, label %255
    i32 1, label %336
    i32 3, label %408
  ]

255:                                              ; preds = %251
  %256 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %257 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @this_cpu_inc(i32 %260)
  %262 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %263 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %266 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %264, %267
  br i1 %268, label %269, label %284

269:                                              ; preds = %255
  %270 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %271 = call i32 @rvt_mod_retry_timer(%struct.rvt_qp* %270)
  %272 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %273 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %10, align 4
  %276 = call i32 @qib_cmp24(i32 %274, i32 %275)
  %277 = icmp sle i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %269
  %279 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %280, 1
  %282 = call i32 @reset_psn(%struct.rvt_qp* %279, i32 %281)
  br label %283

283:                                              ; preds = %278, %269
  br label %303

284:                                              ; preds = %255
  %285 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %286 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %285)
  %287 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %288 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @qib_cmp24(i32 %289, i32 %290)
  %292 = icmp sle i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %284
  %294 = load i32, i32* @SEND_LAST, align 4
  %295 = call i32 @OP(i32 %294)
  %296 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %297 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %296, i32 0, i32 6
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %10, align 4
  %299 = add nsw i32 %298, 1
  %300 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %301 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %300, i32 0, i32 5
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %293, %284
  br label %303

303:                                              ; preds = %302, %283
  %304 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %305 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %303
  %311 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %312 = xor i32 %311, -1
  %313 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %314 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %318 = call i32 @qib_schedule_send(%struct.rvt_qp* %317)
  br label %319

319:                                              ; preds = %310, %303
  %320 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @rvt_get_credit(%struct.rvt_qp* %320, i32 %321)
  %323 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %324 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %323, i32 0, i32 8
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %327 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 8
  %328 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %329 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %328, i32 0, i32 10
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %332 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %331, i32 0, i32 11
  store i32 %330, i32* %332, align 4
  %333 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %334 = load i32, i32* %10, align 4
  %335 = call i32 @update_last_psn(%struct.rvt_qp* %333, i32 %334)
  store i32 1, i32* %7, align 4
  br label %494

336:                                              ; preds = %251
  %337 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %338 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 4
  %342 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %343 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %346 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = icmp eq i64 %344, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %336
  br label %490

350:                                              ; preds = %336
  %351 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %352 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @RVT_S_WAIT_RNR, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %350
  br label %490

358:                                              ; preds = %350
  %359 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %360 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %359, i32 0, i32 7
  %361 = load i32, i32* %360, align 8
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %358
  %364 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %364, i32* %15, align 4
  br label %459

365:                                              ; preds = %358
  %366 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %367 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 4
  %369 = icmp slt i32 %368, 7
  br i1 %369, label %370, label %375

370:                                              ; preds = %365
  %371 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %372 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %371, i32 0, i32 7
  %373 = load i32, i32* %372, align 8
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %372, align 8
  br label %375

375:                                              ; preds = %370, %365
  %376 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %377 = load i32, i32* %10, align 4
  %378 = sub nsw i32 %377, 1
  %379 = call i32 @update_last_psn(%struct.rvt_qp* %376, i32 %378)
  %380 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %381 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %10, align 4
  %384 = sub nsw i32 %382, %383
  %385 = load i32, i32* @QIB_PSN_MASK, align 4
  %386 = and i32 %384, %385
  %387 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %388 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = add nsw i32 %390, %386
  store i32 %391, i32* %389, align 8
  %392 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %393 = load i32, i32* %10, align 4
  %394 = call i32 @reset_psn(%struct.rvt_qp* %392, i32 %393)
  %395 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %396 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %397 = or i32 %395, %396
  %398 = xor i32 %397, -1
  %399 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %400 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, %398
  store i32 %402, i32* %400, align 8
  %403 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %404 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %403)
  %405 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %406 = load i32, i32* %9, align 4
  %407 = call i32 @rvt_add_rnr_timer(%struct.rvt_qp* %405, i32 %406)
  store i32 0, i32* %7, align 4
  br label %494

408:                                              ; preds = %251
  %409 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %410 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %413 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %412, i32 0, i32 4
  %414 = load i64, i64* %413, align 8
  %415 = icmp eq i64 %411, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %408
  br label %490

417:                                              ; preds = %408
  %418 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %419 = load i32, i32* %10, align 4
  %420 = sub nsw i32 %419, 1
  %421 = call i32 @update_last_psn(%struct.rvt_qp* %418, i32 %420)
  %422 = load i32, i32* %9, align 4
  %423 = load i32, i32* @IB_AETH_CREDIT_SHIFT, align 4
  %424 = ashr i32 %422, %423
  %425 = load i32, i32* @IB_AETH_CREDIT_MASK, align 4
  %426 = and i32 %424, %425
  switch i32 %426, label %476 [
    i32 0, label %427
    i32 1, label %438
    i32 2, label %445
    i32 3, label %452
  ]

427:                                              ; preds = %417
  %428 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %429 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %430, align 8
  %433 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %434 = load i32, i32* %10, align 4
  %435 = call i32 @qib_restart_rc(%struct.rvt_qp* %433, i32 %434, i32 0)
  %436 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %437 = call i32 @qib_schedule_send(%struct.rvt_qp* %436)
  br label %477

438:                                              ; preds = %417
  %439 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %439, i32* %15, align 4
  %440 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %441 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %442, align 4
  br label %459

445:                                              ; preds = %417
  %446 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %446, i32* %15, align 4
  %447 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %448 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %449, align 4
  br label %459

452:                                              ; preds = %417
  %453 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %453, i32* %15, align 4
  %454 = load %struct.qib_ibport*, %struct.qib_ibport** %14, align 8
  %455 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %456, align 4
  br label %459

459:                                              ; preds = %452, %445, %438, %363
  %460 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %461 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %460, i32 0, i32 9
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %464 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = icmp eq i64 %462, %465
  br i1 %466, label %467, label %475

467:                                              ; preds = %459
  %468 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %469 = load %struct.rvt_swqe*, %struct.rvt_swqe** %16, align 8
  %470 = load i32, i32* %15, align 4
  %471 = call i32 @rvt_send_complete(%struct.rvt_qp* %468, %struct.rvt_swqe* %469, i32 %470)
  %472 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %473 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %474 = call i32 @rvt_error_qp(%struct.rvt_qp* %472, i32 %473)
  br label %475

475:                                              ; preds = %467, %459
  br label %477

476:                                              ; preds = %417
  br label %489

477:                                              ; preds = %475, %427
  %478 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %479 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %478, i32 0, i32 10
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %482 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %481, i32 0, i32 11
  store i32 %480, i32* %482, align 4
  %483 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %484 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %487 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %486, i32 0, i32 7
  store i32 %485, i32* %487, align 8
  br label %490

488:                                              ; preds = %251
  br label %489

489:                                              ; preds = %488, %476
  br label %490

490:                                              ; preds = %489, %477, %416, %357, %349, %140, %65
  %491 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %492 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %491)
  %493 = load i32, i32* %17, align 4
  store i32 %493, i32* %7, align 4
  br label %494

494:                                              ; preds = %490, %375, %319
  %495 = load i32, i32* %7, align 4
  ret i32 %495
}

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @qib_cmp24(i32, i32) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @qib_restart_rc(%struct.rvt_qp*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @qib_schedule_send(%struct.rvt_qp*) #1

declare dso_local %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp*, %struct.rvt_swqe*, %struct.qib_ibport*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @rvt_mod_retry_timer(%struct.rvt_qp*) #1

declare dso_local i32 @reset_psn(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_stop_rc_timers(%struct.rvt_qp*) #1

declare dso_local i32 @rvt_get_credit(%struct.rvt_qp*, i32) #1

declare dso_local i32 @update_last_psn(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_add_rnr_timer(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_send_complete(%struct.rvt_qp*, %struct.rvt_swqe*, i32) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
