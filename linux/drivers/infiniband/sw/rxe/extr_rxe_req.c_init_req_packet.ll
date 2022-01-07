; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_init_req_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_init_req_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxe_qp = type { %struct.TYPE_20__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.rxe_send_wqe = type { i32, %struct.TYPE_15__, %struct.rxe_send_wr }
%struct.TYPE_15__ = type { i32 }
%struct.rxe_send_wr = type { i32, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.rxe_pkt_info = type { i32, i32, i32, i32, %struct.rxe_send_wqe*, i64, %struct.rxe_qp* }
%struct.rxe_dev = type { %struct.rxe_port }
%struct.rxe_port = type { i32* }
%struct.rxe_av = type { i32 }

@rxe_opcode = common dso_local global %struct.TYPE_11__* null, align 8
@RXE_ICRC_SIZE = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@RXE_END_MASK = common dso_local global i32 0, align 4
@RXE_SEND_MASK = common dso_local global i32 0, align 4
@RXE_WRITE_MASK = common dso_local global i32 0, align 4
@RXE_IMMDT_MASK = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@RXE_DETH_MASK = common dso_local global i32 0, align 4
@RXE_MAX_PKT_PER_ACK = common dso_local global i64 0, align 8
@RXE_RETH_MASK = common dso_local global i32 0, align 4
@RXE_IETH_MASK = common dso_local global i32 0, align 4
@RXE_ATMETH_MASK = common dso_local global i32 0, align 4
@IB_OPCODE_RC_COMPARE_SWAP = common dso_local global i32 0, align 4
@IB_OPCODE_RD_COMPARE_SWAP = common dso_local global i32 0, align 4
@GSI_QKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rxe_qp*, %struct.rxe_send_wqe*, i32, i32, %struct.rxe_pkt_info*)* @init_req_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @init_req_packet(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1, i32 %2, i32 %3, %struct.rxe_pkt_info* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rxe_qp*, align 8
  %8 = alloca %struct.rxe_send_wqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxe_pkt_info*, align 8
  %12 = alloca %struct.rxe_dev*, align 8
  %13 = alloca %struct.rxe_port*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.rxe_send_wr*, align 8
  %16 = alloca %struct.rxe_av*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %7, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.rxe_pkt_info* %4, %struct.rxe_pkt_info** %11, align 8
  %23 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %24 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.rxe_dev* @to_rdev(i32 %26)
  store %struct.rxe_dev* %27, %struct.rxe_dev** %12, align 8
  %28 = load %struct.rxe_dev*, %struct.rxe_dev** %12, align 8
  %29 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %28, i32 0, i32 0
  store %struct.rxe_port* %29, %struct.rxe_port** %13, align 8
  %30 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %31 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %30, i32 0, i32 2
  store %struct.rxe_send_wr* %31, %struct.rxe_send_wr** %15, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 0, %32
  %34 = and i32 %33, 3
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rxe_opcode, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @RXE_ICRC_SIZE, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %49 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %51 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %52 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %51, i32 0, i32 6
  store %struct.rxe_qp* %50, %struct.rxe_qp** %52, align 8
  %53 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %54 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %58 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rxe_opcode, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %66 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %69 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %71 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %73 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %74 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %73, i32 0, i32 4
  store %struct.rxe_send_wqe* %72, %struct.rxe_send_wqe** %74, align 8
  %75 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %76 = call %struct.rxe_av* @rxe_get_av(%struct.rxe_pkt_info* %75)
  store %struct.rxe_av* %76, %struct.rxe_av** %16, align 8
  %77 = load %struct.rxe_dev*, %struct.rxe_dev** %12, align 8
  %78 = load %struct.rxe_av*, %struct.rxe_av** %16, align 8
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %81 = call %struct.sk_buff* @rxe_init_packet(%struct.rxe_dev* %77, %struct.rxe_av* %78, i32 %79, %struct.rxe_pkt_info* %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %14, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %5
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %348

89:                                               ; preds = %5
  %90 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %91 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %89
  %97 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %98 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RXE_END_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %96
  %104 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %105 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RXE_SEND_MASK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %103
  %111 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %112 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RXE_WRITE_MASK, align 4
  %115 = load i32, i32* @RXE_IMMDT_MASK, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = load i32, i32* @RXE_WRITE_MASK, align 4
  %119 = load i32, i32* @RXE_IMMDT_MASK, align 4
  %120 = or i32 %118, %119
  %121 = icmp eq i32 %117, %120
  br label %122

122:                                              ; preds = %110, %103
  %123 = phi i1 [ true, %103 ], [ %121, %110 ]
  br label %124

124:                                              ; preds = %122, %96, %89
  %125 = phi i1 [ false, %96 ], [ false, %89 ], [ %123, %122 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %19, align 4
  %127 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %128 = call i64 @qp_type(%struct.rxe_qp* %127)
  %129 = load i64, i64* @IB_QPT_GSI, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = load %struct.rxe_port*, %struct.rxe_port** %13, align 8
  %133 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %136 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  %141 = load i32, i32* %140, align 4
  br label %152

142:                                              ; preds = %124
  %143 = load %struct.rxe_port*, %struct.rxe_port** %13, align 8
  %144 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %147 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  br label %152

152:                                              ; preds = %142, %131
  %153 = phi i32 [ %141, %131 ], [ %151, %142 ]
  store i32 %153, i32* %20, align 4
  %154 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %155 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @RXE_DETH_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %162 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  br label %171

166:                                              ; preds = %152
  %167 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %168 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  br label %171

171:                                              ; preds = %166, %160
  %172 = phi i32 [ %165, %160 ], [ %170, %166 ]
  store i32 %172, i32* %21, align 4
  %173 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %174 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @RXE_END_MASK, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %171
  %180 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %181 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = load i64, i64* @RXE_MAX_PKT_PER_ACK, align 8
  %186 = icmp sgt i64 %183, %185
  br label %187

187:                                              ; preds = %179, %171
  %188 = phi i1 [ true, %171 ], [ %186, %179 ]
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %22, align 4
  %190 = load i32, i32* %22, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %194 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  store i64 0, i64* %195, align 8
  br label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %198 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %199 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %22, align 4
  %206 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %207 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @bth_init(%struct.rxe_pkt_info* %197, i32 %200, i32 %201, i32 0, i32 %202, i32 %203, i32 %204, i32 %205, i32 %208)
  %210 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %211 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @RXE_RETH_MASK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %235

216:                                              ; preds = %196
  %217 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %218 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %219 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @reth_set_rkey(%struct.rxe_pkt_info* %217, i32 %222)
  %224 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %225 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %226 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @reth_set_va(%struct.rxe_pkt_info* %224, i32 %227)
  %229 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %230 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %231 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @reth_set_len(%struct.rxe_pkt_info* %229, i32 %233)
  br label %235

235:                                              ; preds = %216, %196
  %236 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %237 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @RXE_IMMDT_MASK, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %235
  %243 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %244 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %245 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @immdt_set_imm(%struct.rxe_pkt_info* %243, i32 %247)
  br label %249

249:                                              ; preds = %242, %235
  %250 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %251 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @RXE_IETH_MASK, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %249
  %257 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %258 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %259 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @ieth_set_rkey(%struct.rxe_pkt_info* %257, i32 %261)
  br label %263

263:                                              ; preds = %256, %249
  %264 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %265 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @RXE_ATMETH_MASK, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %314

270:                                              ; preds = %263
  %271 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %272 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %273 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @atmeth_set_va(%struct.rxe_pkt_info* %271, i32 %274)
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @IB_OPCODE_RC_COMPARE_SWAP, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %283, label %279

279:                                              ; preds = %270
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* @IB_OPCODE_RD_COMPARE_SWAP, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %279, %270
  %284 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %285 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %286 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @atmeth_set_swap_add(%struct.rxe_pkt_info* %284, i32 %289)
  %291 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %292 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %293 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @atmeth_set_comp(%struct.rxe_pkt_info* %291, i32 %296)
  br label %306

298:                                              ; preds = %279
  %299 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %300 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %301 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @atmeth_set_swap_add(%struct.rxe_pkt_info* %299, i32 %304)
  br label %306

306:                                              ; preds = %298, %283
  %307 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %308 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %309 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @atmeth_set_rkey(%struct.rxe_pkt_info* %307, i32 %312)
  br label %314

314:                                              ; preds = %306, %263
  %315 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %316 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @RXE_DETH_MASK, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %346

321:                                              ; preds = %314
  %322 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %323 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %331

327:                                              ; preds = %321
  %328 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %329 = load i32, i32* @GSI_QKEY, align 4
  %330 = call i32 @deth_set_qkey(%struct.rxe_pkt_info* %328, i32 %329)
  br label %339

331:                                              ; preds = %321
  %332 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %333 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %15, align 8
  %334 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @deth_set_qkey(%struct.rxe_pkt_info* %332, i32 %337)
  br label %339

339:                                              ; preds = %331, %327
  %340 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %341 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %342 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @deth_set_sqp(%struct.rxe_pkt_info* %340, i32 %344)
  br label %346

346:                                              ; preds = %339, %314
  %347 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %347, %struct.sk_buff** %6, align 8
  br label %348

348:                                              ; preds = %346, %88
  %349 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %349
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_av* @rxe_get_av(%struct.rxe_pkt_info*) #1

declare dso_local %struct.sk_buff* @rxe_init_packet(%struct.rxe_dev*, %struct.rxe_av*, i32, %struct.rxe_pkt_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @bth_init(%struct.rxe_pkt_info*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reth_set_rkey(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @reth_set_va(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @reth_set_len(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @immdt_set_imm(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @ieth_set_rkey(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @atmeth_set_va(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @atmeth_set_swap_add(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @atmeth_set_comp(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @atmeth_set_rkey(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @deth_set_qkey(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @deth_set_sqp(%struct.rxe_pkt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
