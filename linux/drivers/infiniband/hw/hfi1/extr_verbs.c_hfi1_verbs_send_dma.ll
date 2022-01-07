; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_verbs_send_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_verbs_send_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_4__, i32, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.hfi1_qp_priv = type { i32, %struct.hfi1_ahg_info* }
%struct.hfi1_ahg_info = type { i32 }
%struct.hfi1_pkt_state = type { %struct.verbs_txreq*, i32, i32, i32, %struct.hfi1_pportdata*, %struct.hfi1_ibdev* }
%struct.verbs_txreq = type { i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_ibdev = type { i32 }

@SIZE_OF_CRC = common dso_local global i32 0, align 4
@SIZE_OF_LT = common dso_local global i32 0, align 4
@PBC_PACKET_BYPASS = common dso_local global i32 0, align 4
@PBC_INSERT_BYPASS_ICRC = common dso_local global i32 0, align 4
@PBC_DC_INFO_SHIFT = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_verbs_send_dma(%struct.rvt_qp* %0, %struct.hfi1_pkt_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.hfi1_pkt_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_qp_priv*, align 8
  %9 = alloca %struct.hfi1_ahg_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hfi1_ibdev*, align 8
  %14 = alloca %struct.hfi1_pportdata*, align 8
  %15 = alloca %struct.verbs_txreq*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.hfi1_pkt_state* %1, %struct.hfi1_pkt_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 3
  %23 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %22, align 8
  store %struct.hfi1_qp_priv* %23, %struct.hfi1_qp_priv** %8, align 8
  %24 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %25 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %24, i32 0, i32 1
  %26 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %25, align 8
  store %struct.hfi1_ahg_info* %26, %struct.hfi1_ahg_info** %9, align 8
  %27 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %28 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %27, i32 0, i32 0
  %29 = load %struct.verbs_txreq*, %struct.verbs_txreq** %28, align 8
  %30 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %33 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %32, i32 0, i32 0
  %34 = load %struct.verbs_txreq*, %struct.verbs_txreq** %33, align 8
  %35 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %38 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %37, i32 0, i32 5
  %39 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %38, align 8
  store %struct.hfi1_ibdev* %39, %struct.hfi1_ibdev** %13, align 8
  %40 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %41 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %40, i32 0, i32 4
  %42 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %41, align 8
  store %struct.hfi1_pportdata* %42, %struct.hfi1_pportdata** %14, align 8
  %43 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %44 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %16, align 4
  %46 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %47 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %46, i32 0, i32 0
  %48 = load %struct.verbs_txreq*, %struct.verbs_txreq** %47, align 8
  %49 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %3
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 2
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @hfi1_get_16b_padding(i32 %56, i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @SIZE_OF_CRC, align 4
  %63 = shl i32 %62, 2
  %64 = add nsw i32 %61, %63
  %65 = load i32, i32* @SIZE_OF_LT, align 4
  %66 = add nsw i32 %64, %65
  %67 = ashr i32 %66, 2
  store i32 %67, i32* %18, align 4
  br label %72

68:                                               ; preds = %3
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 3
  %71 = ashr i32 %70, 2
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %68, %54
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 1
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %80 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %79, i32 0, i32 0
  %81 = load %struct.verbs_txreq*, %struct.verbs_txreq** %80, align 8
  store %struct.verbs_txreq* %81, %struct.verbs_txreq** %15, align 8
  %82 = load %struct.verbs_txreq*, %struct.verbs_txreq** %15, align 8
  %83 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %82, i32 0, i32 3
  %84 = call i32 @sdma_txreq_built(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %170, label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i64 @likely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %151

92:                                               ; preds = %86
  %93 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %94 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dd_from_ibdev(i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @sc_to_vlt(i32 %97, i32 %98)
  store i32 %99, i32* %20, align 4
  %100 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %101 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %100, i32 0, i32 0
  %102 = load %struct.verbs_txreq*, %struct.verbs_txreq** %101, align 8
  %103 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %92
  %109 = load i32, i32* @PBC_PACKET_BYPASS, align 4
  %110 = load i32, i32* @PBC_INSERT_BYPASS_ICRC, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %121

114:                                              ; preds = %92
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @ib_is_sc5(i32 %115)
  %117 = load i32, i32* @PBC_DC_INFO_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %114, %108
  %122 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %125 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @create_pbc(%struct.hfi1_pportdata* %122, i32 %123, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %131 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %132 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @hfi1_dbg_should_fault_tx(%struct.rvt_qp* %130, i32 %133)
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %121
  %138 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %139 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %140 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @hfi1_fault_tx(%struct.rvt_qp* %138, i32 %141, i32 %142)
  store i32 %143, i32* %7, align 4
  br label %150

144:                                              ; preds = %121
  %145 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %146 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @update_hcrc(i32 %147, i32 %148)
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %144, %137
  br label %151

151:                                              ; preds = %150, %86
  %152 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %153 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.verbs_txreq*, %struct.verbs_txreq** %15, align 8
  %156 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load %struct.verbs_txreq*, %struct.verbs_txreq** %15, align 8
  %158 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.verbs_txreq*, %struct.verbs_txreq** %15, align 8
  %162 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @build_verbs_tx_desc(i32 %159, i32 %160, %struct.verbs_txreq* %161, %struct.hfi1_ahg_info* %162, i32 %163)
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %17, align 4
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  br label %216

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %169, %72
  %171 = load %struct.verbs_txreq*, %struct.verbs_txreq** %15, align 8
  %172 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %175 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.verbs_txreq*, %struct.verbs_txreq** %15, align 8
  %178 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %177, i32 0, i32 3
  %179 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %180 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @sdma_send_txreq(i32 %173, i32 %176, i32* %178, i32 %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp slt i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %170
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* @ECOMM, align 4
  %191 = sub nsw i32 0, %190
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %215

194:                                              ; preds = %188
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %4, align 4
  br label %232

196:                                              ; preds = %170
  %197 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %198 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @update_tx_opstats(%struct.rvt_qp* %197, %struct.hfi1_pkt_state* %198, i32 %199)
  %201 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %202 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @dd_from_ibdev(i32 %204)
  %206 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %207 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %206, i32 0, i32 0
  %208 = load %struct.verbs_txreq*, %struct.verbs_txreq** %207, align 8
  %209 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @ib_is_sc5(i32 %211)
  %213 = call i32 @trace_sdma_output_ibhdr(i32 %205, %struct.TYPE_6__* %210, i32 %212)
  %214 = load i32, i32* %17, align 4
  store i32 %214, i32* %4, align 4
  br label %232

215:                                              ; preds = %193
  store i32 0, i32* %4, align 4
  br label %232

216:                                              ; preds = %168
  %217 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %13, align 8
  %218 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %219 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %220 = call i32 @wait_kmem(%struct.hfi1_ibdev* %217, %struct.rvt_qp* %218, %struct.hfi1_pkt_state* %219)
  store i32 %220, i32* %17, align 4
  %221 = load i32, i32* %17, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %225 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %224, i32 0, i32 0
  %226 = load %struct.verbs_txreq*, %struct.verbs_txreq** %225, align 8
  %227 = call i32 @hfi1_put_txreq(%struct.verbs_txreq* %226)
  %228 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %229 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %228, i32 0, i32 0
  store %struct.verbs_txreq* null, %struct.verbs_txreq** %229, align 8
  br label %230

230:                                              ; preds = %223, %216
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %230, %215, %196, %194
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @hfi1_get_16b_padding(i32, i32) #1

declare dso_local i32 @sdma_txreq_built(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sc_to_vlt(i32, i32) #1

declare dso_local i32 @dd_from_ibdev(i32) #1

declare dso_local i32 @ib_is_sc5(i32) #1

declare dso_local i32 @create_pbc(%struct.hfi1_pportdata*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfi1_dbg_should_fault_tx(%struct.rvt_qp*, i32) #1

declare dso_local i32 @hfi1_fault_tx(%struct.rvt_qp*, i32, i32) #1

declare dso_local i32 @update_hcrc(i32, i32) #1

declare dso_local i32 @build_verbs_tx_desc(i32, i32, %struct.verbs_txreq*, %struct.hfi1_ahg_info*, i32) #1

declare dso_local i32 @sdma_send_txreq(i32, i32, i32*, i32) #1

declare dso_local i32 @update_tx_opstats(%struct.rvt_qp*, %struct.hfi1_pkt_state*, i32) #1

declare dso_local i32 @trace_sdma_output_ibhdr(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @wait_kmem(%struct.hfi1_ibdev*, %struct.rvt_qp*, %struct.hfi1_pkt_state*) #1

declare dso_local i32 @hfi1_put_txreq(%struct.verbs_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
