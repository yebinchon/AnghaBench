; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_rcv_hdrerr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_rcv_hdrerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32 }
%struct.qib_pportdata = type { i32, i32, %struct.qib_devdata*, %struct.qib_ibport }
%struct.qib_devdata = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rvt_dev_info }
%struct.rvt_dev_info = type { i32 }
%struct.qib_ibport = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.qib_message_header = type { i32 }
%struct.ib_header = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.ib_other_headers }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.ib_other_headers }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ib_other_headers = type { i32* }
%struct.rvt_qp = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@QLOGIC_IB_RHF_H_ICRCERR = common dso_local global i32 0, align 4
@QLOGIC_IB_RHF_H_VCRCERR = common dso_local global i32 0, align 4
@QLOGIC_IB_RHF_H_TIDERR = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@QIB_LRH_BTH = common dso_local global i32 0, align 4
@QIB_LRH_GRH = common dso_local global i32 0, align 4
@IB_GRH_NEXT_HDR = common dso_local global i64 0, align 8
@IB_GRH_VERSION_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_VERSION = common dso_local global i32 0, align 4
@RVT_QPN_MASK = common dso_local global i32 0, align 4
@QIB_MULTICAST_QPN = common dso_local global i32 0, align 4
@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@IB_NAK_PSN_ERROR = common dso_local global i32 0, align 4
@RVT_R_RSP_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, %struct.qib_pportdata*, i32, i32, i32, i32, i32*, %struct.qib_message_header*)* @qib_rcv_hdrerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_rcv_hdrerr(%struct.qib_ctxtdata* %0, %struct.qib_pportdata* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.qib_message_header* %7) #0 {
  %9 = alloca %struct.qib_ctxtdata*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.qib_message_header*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ib_header*, align 8
  %19 = alloca %struct.ib_other_headers*, align 8
  %20 = alloca %struct.qib_ibport*, align 8
  %21 = alloca %struct.qib_devdata*, align 8
  %22 = alloca %struct.rvt_dev_info*, align 8
  %23 = alloca %struct.rvt_qp*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %9, align 8
  store %struct.qib_pportdata* %1, %struct.qib_pportdata** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.qib_message_header* %7, %struct.qib_message_header** %16, align 8
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @QLOGIC_IB_RHF_H_ICRCERR, align 4
  %35 = load i32, i32* @QLOGIC_IB_RHF_H_VCRCERR, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %8
  store i32 1, i32* %17, align 4
  br label %280

40:                                               ; preds = %8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @QLOGIC_IB_RHF_H_TIDERR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %279

44:                                               ; preds = %40
  %45 = load %struct.qib_message_header*, %struct.qib_message_header** %16, align 8
  %46 = bitcast %struct.qib_message_header* %45 to %struct.ib_header*
  store %struct.ib_header* %46, %struct.ib_header** %18, align 8
  store %struct.ib_other_headers* null, %struct.ib_other_headers** %19, align 8
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %48 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %47, i32 0, i32 3
  store %struct.qib_ibport* %48, %struct.qib_ibport** %20, align 8
  %49 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %50 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %49, i32 0, i32 2
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %50, align 8
  store %struct.qib_devdata* %51, %struct.qib_devdata** %21, align 8
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %21, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store %struct.rvt_dev_info* %54, %struct.rvt_dev_info** %22, align 8
  store %struct.rvt_qp* null, %struct.rvt_qp** %23, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @qib_hdrget_length_in_bytes(i32* %55)
  store i32 %56, i32* %24, align 4
  %57 = load %struct.ib_header*, %struct.ib_header** %18, align 8
  %58 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be16_to_cpu(i32 %61)
  store i32 %62, i32* %25, align 4
  %63 = load %struct.ib_header*, %struct.ib_header** %18, align 8
  %64 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be16_to_cpu(i32 %67)
  %69 = and i32 %68, 3
  store i32 %69, i32* %26, align 4
  %70 = load i32, i32* %24, align 4
  %71 = icmp slt i32 %70, 24
  br i1 %71, label %72, label %73

72:                                               ; preds = %44
  br label %281

73:                                               ; preds = %44
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %76 = call i32 @be16_to_cpu(i32 %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %80 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %25, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %25, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %89 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %87, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %281

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i32, i32* %26, align 4
  %99 = load i32, i32* @QIB_LRH_BTH, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.ib_header*, %struct.ib_header** %18, align 8
  %103 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store %struct.ib_other_headers* %104, %struct.ib_other_headers** %19, align 8
  br label %140

105:                                              ; preds = %97
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* @QIB_LRH_GRH, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %105
  %110 = load %struct.ib_header*, %struct.ib_header** %18, align 8
  %111 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store %struct.ib_other_headers* %113, %struct.ib_other_headers** %19, align 8
  %114 = load %struct.ib_header*, %struct.ib_header** %18, align 8
  %115 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IB_GRH_NEXT_HDR, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %281

123:                                              ; preds = %109
  %124 = load %struct.ib_header*, %struct.ib_header** %18, align 8
  %125 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @be32_to_cpu(i32 %129)
  store i32 %130, i32* %31, align 4
  %131 = load i32, i32* %31, align 4
  %132 = load i32, i32* @IB_GRH_VERSION_SHIFT, align 4
  %133 = ashr i32 %131, %132
  %134 = load i32, i32* @IB_GRH_VERSION, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %281

137:                                              ; preds = %123
  br label %139

138:                                              ; preds = %105
  br label %281

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139, %101
  %141 = load %struct.ib_other_headers*, %struct.ib_other_headers** %19, align 8
  %142 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @be32_to_cpu(i32 %145)
  store i32 %146, i32* %28, align 4
  %147 = load i32, i32* %28, align 4
  %148 = ashr i32 %147, 24
  store i32 %148, i32* %28, align 4
  %149 = load %struct.ib_other_headers*, %struct.ib_other_headers** %19, align 8
  %150 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @be32_to_cpu(i32 %153)
  store i32 %154, i32* %29, align 4
  %155 = load %struct.ib_other_headers*, %struct.ib_other_headers** %19, align 8
  %156 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @be32_to_cpu(i32 %159)
  %161 = load i32, i32* @RVT_QPN_MASK, align 4
  %162 = and i32 %160, %161
  store i32 %162, i32* %27, align 4
  %163 = load i32, i32* %27, align 4
  %164 = load i32, i32* @QIB_MULTICAST_QPN, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %278

166:                                              ; preds = %140
  %167 = call i32 (...) @rcu_read_lock()
  %168 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %22, align 8
  %169 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %170 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %169, i32 0, i32 0
  %171 = load i32, i32* %27, align 4
  %172 = call %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info* %168, %struct.TYPE_12__* %170, i32 %171)
  store %struct.rvt_qp* %172, %struct.rvt_qp** %23, align 8
  %173 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %174 = icmp ne %struct.rvt_qp* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %166
  %176 = call i32 (...) @rcu_read_unlock()
  br label %281

177:                                              ; preds = %166
  %178 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %179 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %178, i32 0, i32 1
  %180 = call i32 @spin_lock(i32* %179)
  %181 = load i32*, i32** @ib_rvt_state_ops, align 8
  %182 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %183 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %177
  %191 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %192 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %273

196:                                              ; preds = %177
  %197 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %198 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  switch i32 %200, label %271 [
    i32 131, label %201
    i32 130, label %270
    i32 132, label %270
    i32 128, label %270
    i32 129, label %270
  ]

201:                                              ; preds = %196
  %202 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %203 = load %struct.ib_header*, %struct.ib_header** %18, align 8
  %204 = load i32, i32* %26, align 4
  %205 = load i32, i32* @QIB_LRH_GRH, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %209 = load %struct.ib_other_headers*, %struct.ib_other_headers** %19, align 8
  %210 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @be32_to_cpu(i32 %213)
  %215 = call i32 @qib_ruc_check_hdr(%struct.qib_ibport* %202, %struct.ib_header* %203, i32 %207, %struct.rvt_qp* %208, i32 %214)
  store i32 %215, i32* %32, align 4
  %216 = load i32, i32* %32, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %201
  br label %273

219:                                              ; preds = %201
  %220 = load i32, i32* %28, align 4
  %221 = load i32, i32* @IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %269

223:                                              ; preds = %219
  %224 = load i32, i32* %29, align 4
  %225 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %226 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @qib_cmp24(i32 %224, i32 %227)
  store i32 %228, i32* %30, align 4
  %229 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %230 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %268, label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %30, align 4
  %235 = icmp sge i32 %234, 0
  br i1 %235, label %236, label %268

236:                                              ; preds = %233
  %237 = load %struct.qib_ibport*, %struct.qib_ibport** %20, align 8
  %238 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* @IB_NAK_PSN_ERROR, align 4
  %243 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %244 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 4
  %245 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %246 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %249 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 8
  %250 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %251 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %250, i32 0, i32 2
  %252 = call i32 @list_empty(i32* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %236
  %255 = load i32, i32* @RVT_R_RSP_NAK, align 4
  %256 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %257 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %261 = call i32 @rvt_get_qp(%struct.rvt_qp* %260)
  %262 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %263 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %262, i32 0, i32 2
  %264 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %9, align 8
  %265 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %264, i32 0, i32 0
  %266 = call i32 @list_add_tail(i32* %263, i32* %265)
  br label %267

267:                                              ; preds = %254, %236
  br label %268

268:                                              ; preds = %267, %233, %223
  br label %269

269:                                              ; preds = %268, %219
  br label %272

270:                                              ; preds = %196, %196, %196, %196
  br label %271

271:                                              ; preds = %196, %270
  br label %272

272:                                              ; preds = %271, %269
  br label %273

273:                                              ; preds = %272, %218, %190
  %274 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  %275 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %274, i32 0, i32 1
  %276 = call i32 @spin_unlock(i32* %275)
  %277 = call i32 (...) @rcu_read_unlock()
  br label %278

278:                                              ; preds = %273, %140
  br label %279

279:                                              ; preds = %278, %40
  br label %280

280:                                              ; preds = %279, %39
  br label %281

281:                                              ; preds = %280, %175, %138, %136, %122, %95, %72
  %282 = load i32, i32* %17, align 4
  ret i32 %282
}

declare dso_local i32 @qib_hdrget_length_in_bytes(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qib_ruc_check_hdr(%struct.qib_ibport*, %struct.ib_header*, i32, %struct.rvt_qp*, i32) #1

declare dso_local i32 @qib_cmp24(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
