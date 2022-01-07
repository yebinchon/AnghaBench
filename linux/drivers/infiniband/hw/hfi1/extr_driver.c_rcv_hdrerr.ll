; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_rcv_hdrerr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_rcv_hdrerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32 }
%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.hfi1_ibdev }
%struct.hfi1_ibdev = type { %struct.rvt_dev_info }
%struct.rvt_dev_info = type { i32 }
%struct.hfi1_packet = type { i32, i64, i32*, i8*, %struct.ib_grh*, %struct.ib_header* }
%struct.ib_grh = type { i64, i32 }
%struct.ib_header = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.ib_grh, i32 }
%struct.hfi1_ibport = type { i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.rvt_qp = type { i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@RHF_DC_ERR = common dso_local global i32 0, align 4
@RHF_ICRC_ERR = common dso_local global i32 0, align 4
@RHF_RCV_TYPE_BYPASS = common dso_local global i64 0, align 8
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@HFI1_LRH_BTH = common dso_local global i64 0, align 8
@HFI1_LRH_GRH = common dso_local global i64 0, align 8
@RHF_TID_ERR = common dso_local global i32 0, align 4
@IB_GRH_NEXT_HDR = common dso_local global i64 0, align 8
@IB_GRH_VERSION_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_VERSION = common dso_local global i32 0, align 4
@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_OPCODE_CNP = common dso_local global i64 0, align 8
@IB_CC_SVCTYPE_UD = common dso_local global i64 0, align 8
@IB_CC_SVCTYPE_UC = common dso_local global i64 0, align 8
@RHF_RCV_TYPE_ERR_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ctxtdata*, %struct.hfi1_pportdata*, %struct.hfi1_packet*)* @rcv_hdrerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcv_hdrerr(%struct.hfi1_ctxtdata* %0, %struct.hfi1_pportdata* %1, %struct.hfi1_packet* %2) #0 {
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca %struct.hfi1_packet*, align 8
  %7 = alloca %struct.ib_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfi1_ibport*, align 8
  %11 = alloca %struct.hfi1_devdata*, align 8
  %12 = alloca %struct.hfi1_ibdev*, align 8
  %13 = alloca %struct.rvt_dev_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ib_grh*, align 8
  %20 = alloca %struct.rvt_qp*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.rvt_qp*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %4, align 8
  store %struct.hfi1_pportdata* %1, %struct.hfi1_pportdata** %5, align 8
  store %struct.hfi1_packet* %2, %struct.hfi1_packet** %6, align 8
  %31 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %32 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %31, i32 0, i32 5
  %33 = load %struct.ib_header*, %struct.ib_header** %32, align 8
  store %struct.ib_header* %33, %struct.ib_header** %7, align 8
  %34 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %35 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @rhf_rcv_type_err(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %39 = call %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata* %38)
  store %struct.hfi1_ibport* %39, %struct.hfi1_ibport** %10, align 8
  %40 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %41 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %40, i32 0, i32 0
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %41, align 8
  store %struct.hfi1_devdata* %42, %struct.hfi1_devdata** %11, align 8
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 0
  store %struct.hfi1_ibdev* %44, %struct.hfi1_ibdev** %12, align 8
  %45 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %12, align 8
  %46 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %45, i32 0, i32 0
  store %struct.rvt_dev_info* %46, %struct.rvt_dev_info** %13, align 8
  %47 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %48 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RHF_DC_ERR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %3
  %54 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %12, align 8
  %55 = call i64 @hfi1_dbg_fault_suppress_err(%struct.hfi1_ibdev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %293

58:                                               ; preds = %53, %3
  %59 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %60 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @RHF_ICRC_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %293

66:                                               ; preds = %58
  %67 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %68 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RHF_RCV_TYPE_BYPASS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %292

73:                                               ; preds = %66
  %74 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %75 = call i64 @ib_get_lnh(%struct.ib_header* %74)
  store i64 %75, i64* %14, align 8
  %76 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %77 = call i32 @be16_to_cpu(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @HFI1_LRH_BTH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %83 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %86 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  br label %106

87:                                               ; preds = %73
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* @HFI1_LRH_GRH, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %93 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %97 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  %98 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %99 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %103 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %102, i32 0, i32 4
  store %struct.ib_grh* %101, %struct.ib_grh** %103, align 8
  br label %105

104:                                              ; preds = %87
  br label %292

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %81
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %109 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RHF_TID_ERR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %208

114:                                              ; preds = %107
  %115 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %116 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @rhf_pkt_len(i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %120 = call i32 @ib_get_dlid(%struct.ib_header* %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %121, 24
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %292

124:                                              ; preds = %114
  %125 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %126 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %125, i32 0, i32 4
  %127 = load %struct.ib_grh*, %struct.ib_grh** %126, align 8
  %128 = icmp ne %struct.ib_grh* %127, null
  br i1 %128, label %129, label %151

129:                                              ; preds = %124
  %130 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %131 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %130, i32 0, i32 4
  %132 = load %struct.ib_grh*, %struct.ib_grh** %131, align 8
  store %struct.ib_grh* %132, %struct.ib_grh** %19, align 8
  %133 = load %struct.ib_grh*, %struct.ib_grh** %19, align 8
  %134 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IB_GRH_NEXT_HDR, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %292

139:                                              ; preds = %129
  %140 = load %struct.ib_grh*, %struct.ib_grh** %19, align 8
  %141 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @be32_to_cpu(i32 %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* @IB_GRH_VERSION_SHIFT, align 4
  %146 = ashr i32 %144, %145
  %147 = load i32, i32* @IB_GRH_VERSION, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %292

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %124
  %152 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %153 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @ib_bth_get_qpn(i32* %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %207

159:                                              ; preds = %151
  %160 = call i32 (...) @rcu_read_lock()
  %161 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %13, align 8
  %162 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %163 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %162, i32 0, i32 1
  %164 = load i32, i32* %17, align 4
  %165 = call %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info* %161, %struct.TYPE_8__* %163, i32 %164)
  store %struct.rvt_qp* %165, %struct.rvt_qp** %20, align 8
  %166 = load %struct.rvt_qp*, %struct.rvt_qp** %20, align 8
  %167 = icmp ne %struct.rvt_qp* %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %159
  %169 = call i32 (...) @rcu_read_unlock()
  br label %292

170:                                              ; preds = %159
  %171 = load %struct.rvt_qp*, %struct.rvt_qp** %20, align 8
  %172 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %171, i32 0, i32 3
  %173 = load i64, i64* %21, align 8
  %174 = call i32 @spin_lock_irqsave(i32* %172, i64 %173)
  %175 = load i32*, i32** @ib_rvt_state_ops, align 8
  %176 = load %struct.rvt_qp*, %struct.rvt_qp** %20, align 8
  %177 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %170
  %185 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %186 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %170
  %191 = load %struct.rvt_qp*, %struct.rvt_qp** %20, align 8
  %192 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %200 [
    i32 131, label %195
  ]

195:                                              ; preds = %190
  %196 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %197 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %198 = load %struct.rvt_qp*, %struct.rvt_qp** %20, align 8
  %199 = call i32 @hfi1_rc_hdrerr(%struct.hfi1_ctxtdata* %196, %struct.hfi1_packet* %197, %struct.rvt_qp* %198)
  br label %201

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %195
  %202 = load %struct.rvt_qp*, %struct.rvt_qp** %20, align 8
  %203 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %202, i32 0, i32 3
  %204 = load i64, i64* %21, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  %206 = call i32 (...) @rcu_read_unlock()
  br label %207

207:                                              ; preds = %201, %151
  br label %208

208:                                              ; preds = %207, %107
  %209 = load i32, i32* %8, align 4
  switch i32 %209, label %290 [
    i32 128, label %210
  ]

210:                                              ; preds = %208
  store i8* null, i8** %22, align 8
  %211 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %212 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @rhf_use_egr_bfr(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %218 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  store i8* %219, i8** %22, align 8
  br label %220

220:                                              ; preds = %216, %210
  %221 = load i8*, i8** %22, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  br label %292

224:                                              ; preds = %220
  %225 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %226 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = call i64 @ib_bth_get_opcode(i32* %227)
  store i64 %228, i64* %23, align 8
  %229 = load i64, i64* %23, align 8
  %230 = load i64, i64* @IB_OPCODE_CNP, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %283

232:                                              ; preds = %224
  store %struct.rvt_qp* null, %struct.rvt_qp** %24, align 8
  %233 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %234 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %235 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @hfi1_9B_get_sc5(%struct.ib_header* %233, i32 %236)
  store i64 %237, i64* %30, align 8
  %238 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %239 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %238, i32 0, i32 0
  %240 = load i64*, i64** %239, align 8
  %241 = load i64, i64* %30, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %29, align 8
  %244 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %245 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @ib_bth_get_qpn(i32* %246)
  store i32 %247, i32* %25, align 4
  %248 = call i32 (...) @rcu_read_lock()
  %249 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %13, align 8
  %250 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %251 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %250, i32 0, i32 1
  %252 = load i32, i32* %25, align 4
  %253 = call %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info* %249, %struct.TYPE_8__* %251, i32 %252)
  store %struct.rvt_qp* %253, %struct.rvt_qp** %24, align 8
  %254 = load %struct.rvt_qp*, %struct.rvt_qp** %24, align 8
  %255 = icmp ne %struct.rvt_qp* %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %232
  %257 = call i32 (...) @rcu_read_unlock()
  br label %292

258:                                              ; preds = %232
  %259 = load %struct.rvt_qp*, %struct.rvt_qp** %24, align 8
  %260 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  switch i32 %262, label %272 [
    i32 129, label %263
    i32 130, label %265
  ]

263:                                              ; preds = %258
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %264 = load i64, i64* @IB_CC_SVCTYPE_UD, align 8
  store i64 %264, i64* %28, align 8
  br label %274

265:                                              ; preds = %258
  %266 = load %struct.ib_header*, %struct.ib_header** %7, align 8
  %267 = call i32 @ib_get_slid(%struct.ib_header* %266)
  store i32 %267, i32* %27, align 4
  %268 = load %struct.rvt_qp*, %struct.rvt_qp** %24, align 8
  %269 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  store i32 %270, i32* %26, align 4
  %271 = load i64, i64* @IB_CC_SVCTYPE_UC, align 8
  store i64 %271, i64* %28, align 8
  br label %274

272:                                              ; preds = %258
  %273 = call i32 (...) @rcu_read_unlock()
  br label %292

274:                                              ; preds = %265, %263
  %275 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %276 = load i64, i64* %29, align 8
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* %25, align 4
  %279 = load i32, i32* %26, align 4
  %280 = load i64, i64* %28, align 8
  %281 = call i32 @process_becn(%struct.hfi1_pportdata* %275, i64 %276, i32 %277, i32 %278, i32 %279, i64 %280)
  %282 = call i32 (...) @rcu_read_unlock()
  br label %283

283:                                              ; preds = %274, %224
  %284 = load i32, i32* @RHF_RCV_TYPE_ERR_SMASK, align 4
  %285 = xor i32 %284, -1
  %286 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %287 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %291

290:                                              ; preds = %208
  br label %291

291:                                              ; preds = %290, %283
  br label %292

292:                                              ; preds = %291, %272, %256, %223, %168, %149, %138, %123, %104, %72
  br label %293

293:                                              ; preds = %292, %65, %57
  ret void
}

declare dso_local i32 @rhf_rcv_type_err(i32) #1

declare dso_local %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata*) #1

declare dso_local i64 @hfi1_dbg_fault_suppress_err(%struct.hfi1_ibdev*) #1

declare dso_local i64 @ib_get_lnh(%struct.ib_header*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rhf_pkt_len(i32) #1

declare dso_local i32 @ib_get_dlid(%struct.ib_header*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ib_bth_get_qpn(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hfi1_rc_hdrerr(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*, %struct.rvt_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rhf_use_egr_bfr(i32) #1

declare dso_local i64 @ib_bth_get_opcode(i32*) #1

declare dso_local i64 @hfi1_9B_get_sc5(%struct.ib_header*, i32) #1

declare dso_local i32 @ib_get_slid(%struct.ib_header*) #1

declare dso_local i32 @process_becn(%struct.hfi1_pportdata*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
