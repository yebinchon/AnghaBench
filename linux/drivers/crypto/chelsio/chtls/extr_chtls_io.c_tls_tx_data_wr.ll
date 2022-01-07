; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_tls_tx_data_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_tls_tx_data_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fw_tlstx_data_wr = type { i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cpl_tx_tls_sfo = type { i32, i8*, i8*, i64, i8*, i8*, i8* }
%struct.tls_scmd = type { i32, i32 }
%struct.chtls_sock = type { i32, i32, %struct.chtls_hws, %struct.net_device* }
%struct.chtls_hws = type { i32, i32, %struct.tls_scmd, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FW_TLSTX_DATA_WR = common dso_local global i32 0, align 4
@ULP_MODE_TLS = common dso_local global i32 0, align 4
@FW_OFLD_TX_DATA_WR_ALIGNPLD_F = common dso_local global i32 0, align 4
@TCP_NAGLE_OFF = common dso_local global i32 0, align 4
@FW_OFLD_TX_DATA_WR_SHOVE_F = common dso_local global i32 0, align 4
@T6_TX_FORCE_F = common dso_local global i32 0, align 4
@CSK_TX_MORE_DATA = common dso_local global i32 0, align 4
@CHTLS_KEY_CONTEXT_DDR = common dso_local global i32 0, align 4
@CPL_TX_TLS_SFO = common dso_local global i32 0, align 4
@CPL_TX_TLS_SFO_TYPE_HEARTBEAT = common dso_local global i8 0, align 1
@TLS_HDR_TYPE_HEARTBEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32)* @tls_tx_data_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_tx_data_wr(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_tlstx_data_wr*, align 8
  %16 = alloca %struct.cpl_tx_tls_sfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tls_scmd*, align 8
  %19 = alloca i8, align 1
  %20 = alloca %struct.chtls_sock*, align 8
  %21 = alloca %struct.net_device*, align 8
  %22 = alloca %struct.chtls_hws*, align 8
  %23 = alloca %struct.tls_scmd*, align 8
  %24 = alloca %struct.adapter*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %29)
  store %struct.chtls_sock* %30, %struct.chtls_sock** %20, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @skb_ulp_tls_iv_imm(%struct.sk_buff* %31)
  store i32 %32, i32* %27, align 4
  %33 = load %struct.chtls_sock*, %struct.chtls_sock** %20, align 8
  %34 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %33, i32 0, i32 3
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  store %struct.net_device* %35, %struct.net_device** %21, align 8
  %36 = load %struct.net_device*, %struct.net_device** %21, align 8
  %37 = call %struct.adapter* @netdev2adap(%struct.net_device* %36)
  store %struct.adapter* %37, %struct.adapter** %24, align 8
  %38 = load %struct.chtls_sock*, %struct.chtls_sock** %20, align 8
  %39 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %38, i32 0, i32 2
  store %struct.chtls_hws* %39, %struct.chtls_hws** %22, align 8
  %40 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %41 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %40, i32 0, i32 2
  store %struct.tls_scmd* %41, %struct.tls_scmd** %23, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %28, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %47 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %7
  %51 = load i32, i32* %10, align 4
  br label %56

52:                                               ; preds = %7
  %53 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %54 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi i32 [ %51, %50 ], [ %55, %52 ]
  store i32 %57, i32* %10, align 4
  %58 = load %struct.adapter*, %struct.adapter** %24, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load %struct.tls_scmd*, %struct.tls_scmd** %23, align 8
  store %struct.tls_scmd* %62, %struct.tls_scmd** %18, align 8
  %63 = load %struct.tls_scmd*, %struct.tls_scmd** %18, align 8
  %64 = getelementptr inbounds %struct.tls_scmd, %struct.tls_scmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -128
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @SCMD_NUM_IVS_V(i32 %67)
  %69 = load %struct.tls_scmd*, %struct.tls_scmd** %18, align 8
  %70 = getelementptr inbounds %struct.tls_scmd, %struct.tls_scmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %74 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %73, i32 0, i32 2
  %75 = load %struct.tls_scmd*, %struct.tls_scmd** %18, align 8
  %76 = bitcast %struct.tls_scmd* %74 to i8*
  %77 = bitcast %struct.tls_scmd* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i64 @__skb_push(%struct.sk_buff* %78, i32 56)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %25, align 8
  %81 = load i8*, i8** %25, align 8
  %82 = bitcast i8* %81 to %struct.cpl_tx_tls_sfo*
  store %struct.cpl_tx_tls_sfo* %82, %struct.cpl_tx_tls_sfo** %16, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i64 @__skb_push(%struct.sk_buff* %83, i32 80)
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %25, align 8
  %86 = load i8*, i8** %25, align 8
  %87 = bitcast i8* %86 to %struct.fw_tlstx_data_wr*
  store %struct.fw_tlstx_data_wr* %87, %struct.fw_tlstx_data_wr** %15, align 8
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %56
  %91 = load i32, i32* %10, align 4
  br label %93

92:                                               ; preds = %56
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  store i32 %94, i32* %26, align 4
  %95 = load i32, i32* @FW_TLSTX_DATA_WR, align 4
  %96 = call i32 @FW_WR_OP_V(i32 %95)
  %97 = call i32 @FW_TLSTX_DATA_WR_COMPL_V(i32 1)
  %98 = or i32 %96, %97
  %99 = load i32, i32* %26, align 4
  %100 = call i32 @FW_TLSTX_DATA_WR_IMMDLEN_V(i32 %99)
  %101 = or i32 %98, %100
  %102 = call i8* @htonl(i32 %101)
  %103 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %104 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %103, i32 0, i32 9
  store i8* %102, i8** %104, align 8
  %105 = load %struct.chtls_sock*, %struct.chtls_sock** %20, align 8
  %106 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @FW_TLSTX_DATA_WR_FLOWID_V(i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @FW_TLSTX_DATA_WR_LEN16_V(i32 %109)
  %111 = or i32 %108, %110
  %112 = call i8* @htonl(i32 %111)
  %113 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %114 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %113, i32 0, i32 8
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @ULP_MODE_TLS, align 4
  %116 = call i32 @TX_ULP_MODE_V(i32 %115)
  store i32 %116, i32* %17, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = call i64 @is_sg_request(%struct.sk_buff* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %93
  %121 = load i32, i32* @FW_OFLD_TX_DATA_WR_ALIGNPLD_F, align 4
  %122 = load %struct.sock*, %struct.sock** %8, align 8
  %123 = call %struct.TYPE_9__* @tcp_sk(%struct.sock* %122)
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @TCP_NAGLE_OFF, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @FW_OFLD_TX_DATA_WR_SHOVE_F, align 4
  br label %132

132:                                              ; preds = %130, %129
  %133 = phi i32 [ 0, %129 ], [ %131, %130 ]
  %134 = or i32 %121, %133
  %135 = load i32, i32* %17, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %132, %93
  %138 = load i32, i32* @ULP_MODE_TLS, align 4
  %139 = call i32 @TX_ULP_MODE_V(i32 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %141 = call i32 @skb_urgent(%struct.sk_buff* %140)
  %142 = call i32 @TX_URG_V(i32 %141)
  %143 = or i32 %139, %142
  %144 = load i32, i32* @T6_TX_FORCE_F, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %17, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.sock*, %struct.sock** %8, align 8
  %149 = load i32, i32* @CSK_TX_MORE_DATA, align 4
  %150 = call i32 @csk_flag(%struct.sock* %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %137
  %153 = load %struct.chtls_sock*, %struct.chtls_sock** %20, align 8
  %154 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %153, i32 0, i32 0
  %155 = call i64 @skb_queue_empty(i32* %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %152, %137
  %158 = phi i1 [ false, %137 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @TX_SHOVE_V(i32 %159)
  %161 = or i32 %147, %160
  %162 = call i8* @htonl(i32 %161)
  %163 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %164 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %163, i32 0, i32 7
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @FW_TLSTX_DATA_WR_NUMIVS_V(i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @FW_TLSTX_DATA_WR_EXP_V(i32 %167)
  %169 = or i32 %166, %168
  %170 = load i32, i32* @CHTLS_KEY_CONTEXT_DDR, align 4
  %171 = call i32 @FW_TLSTX_DATA_WR_CTXLOC_V(i32 %170)
  %172 = or i32 %169, %171
  %173 = load i32, i32* %27, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @FW_TLSTX_DATA_WR_IVDSGL_V(i32 %176)
  %178 = or i32 %172, %177
  %179 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %180 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 4
  %183 = call i32 @FW_TLSTX_DATA_WR_KEYSIZE_V(i32 %182)
  %184 = or i32 %178, %183
  %185 = call i8* @htonl(i32 %184)
  %186 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %187 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %186, i32 0, i32 6
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %28, align 4
  %189 = call i8* @htonl(i32 %188)
  %190 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %191 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %193 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @htons(i32 %194)
  %196 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %197 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %196, i32 0, i32 4
  store i8* %195, i8** %197, align 8
  %198 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %199 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @FW_TLSTX_DATA_WR_ADJUSTEDPLEN_V(i32 %200)
  %202 = call i8* @htons(i32 %201)
  %203 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %204 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %206 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @FW_TLSTX_DATA_WR_EXPINPLENMAX_V(i32 %207)
  %209 = call i8* @htons(i32 %208)
  %210 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %211 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %210, i32 0, i32 2
  store i8* %209, i8** %211, align 8
  %212 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %213 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @FW_TLSTX_DATA_WR_PDUSINPLENMAX_V(i32 %214)
  %216 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %217 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 8
  %218 = load %struct.fw_tlstx_data_wr*, %struct.fw_tlstx_data_wr** %15, align 8
  %219 = getelementptr inbounds %struct.fw_tlstx_data_wr, %struct.fw_tlstx_data_wr* %218, i32 0, i32 0
  store i64 0, i64* %219, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %221 = call %struct.TYPE_10__* @ULP_SKB_CB(%struct.sk_buff* %220)
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call zeroext i8 @tls_content_type(i32 %225)
  store i8 %226, i8* %19, align 1
  %227 = load i32, i32* @CPL_TX_TLS_SFO, align 4
  %228 = call i32 @CPL_TX_TLS_SFO_OPCODE_V(i32 %227)
  %229 = load i8, i8* %19, align 1
  %230 = call i32 @CPL_TX_TLS_SFO_DATA_TYPE_V(i8 zeroext %229)
  %231 = or i32 %228, %230
  %232 = call i32 @CPL_TX_TLS_SFO_CPL_LEN_V(i32 2)
  %233 = or i32 %231, %232
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @CPL_TX_TLS_SFO_SEG_LEN_V(i32 %234)
  %236 = or i32 %233, %235
  %237 = call i8* @htonl(i32 %236)
  %238 = load %struct.cpl_tx_tls_sfo*, %struct.cpl_tx_tls_sfo** %16, align 8
  %239 = getelementptr inbounds %struct.cpl_tx_tls_sfo, %struct.cpl_tx_tls_sfo* %238, i32 0, i32 6
  store i8* %237, i8** %239, align 8
  %240 = load i32, i32* %28, align 4
  %241 = load i32, i32* %13, align 4
  %242 = sub nsw i32 %240, %241
  %243 = call i8* @htonl(i32 %242)
  %244 = load %struct.cpl_tx_tls_sfo*, %struct.cpl_tx_tls_sfo** %16, align 8
  %245 = getelementptr inbounds %struct.cpl_tx_tls_sfo, %struct.cpl_tx_tls_sfo* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  %246 = load i8, i8* %19, align 1
  %247 = zext i8 %246 to i32
  %248 = load i8, i8* @CPL_TX_TLS_SFO_TYPE_HEARTBEAT, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %157
  %252 = load i32, i32* @TLS_HDR_TYPE_HEARTBEAT, align 4
  br label %254

253:                                              ; preds = %157
  br label %254

254:                                              ; preds = %253, %251
  %255 = phi i32 [ %252, %251 ], [ 0, %253 ]
  %256 = call i32 @CPL_TX_TLS_SFO_TYPE_V(i32 %255)
  %257 = call i32 @CPL_TX_TLS_SFO_PROTOVER_V(i32 0)
  %258 = or i32 %256, %257
  %259 = call i8* @htonl(i32 %258)
  %260 = load %struct.cpl_tx_tls_sfo*, %struct.cpl_tx_tls_sfo** %16, align 8
  %261 = getelementptr inbounds %struct.cpl_tx_tls_sfo, %struct.cpl_tx_tls_sfo* %260, i32 0, i32 4
  store i8* %259, i8** %261, align 8
  %262 = load %struct.cpl_tx_tls_sfo*, %struct.cpl_tx_tls_sfo** %16, align 8
  %263 = getelementptr inbounds %struct.cpl_tx_tls_sfo, %struct.cpl_tx_tls_sfo* %262, i32 0, i32 3
  store i64 0, i64* %263, align 8
  %264 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %265 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.tls_scmd, %struct.tls_scmd* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @cpu_to_be32(i32 %267)
  %269 = load %struct.cpl_tx_tls_sfo*, %struct.cpl_tx_tls_sfo** %16, align 8
  %270 = getelementptr inbounds %struct.cpl_tx_tls_sfo, %struct.cpl_tx_tls_sfo* %269, i32 0, i32 2
  store i8* %268, i8** %270, align 8
  %271 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %272 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.tls_scmd, %struct.tls_scmd* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i8* @cpu_to_be32(i32 %274)
  %276 = load %struct.cpl_tx_tls_sfo*, %struct.cpl_tx_tls_sfo** %16, align 8
  %277 = getelementptr inbounds %struct.cpl_tx_tls_sfo, %struct.cpl_tx_tls_sfo* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  %278 = load %struct.chtls_hws*, %struct.chtls_hws** %22, align 8
  %279 = call i32 @tlstx_incr_seqnum(%struct.chtls_hws* %278)
  %280 = call i32 @cpu_to_be64(i32 %279)
  %281 = load %struct.cpl_tx_tls_sfo*, %struct.cpl_tx_tls_sfo** %16, align 8
  %282 = getelementptr inbounds %struct.cpl_tx_tls_sfo, %struct.cpl_tx_tls_sfo* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @skb_ulp_tls_iv_imm(%struct.sk_buff*) #1

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @SCMD_NUM_IVS_V(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_COMPL_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_IMMDLEN_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_FLOWID_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_LEN16_V(i32) #1

declare dso_local i32 @TX_ULP_MODE_V(i32) #1

declare dso_local i64 @is_sg_request(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @TX_URG_V(i32) #1

declare dso_local i32 @skb_urgent(%struct.sk_buff*) #1

declare dso_local i32 @TX_SHOVE_V(i32) #1

declare dso_local i32 @csk_flag(%struct.sock*, i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_NUMIVS_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_EXP_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_CTXLOC_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_IVDSGL_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_KEYSIZE_V(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_ADJUSTEDPLEN_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_EXPINPLENMAX_V(i32) #1

declare dso_local i32 @FW_TLSTX_DATA_WR_PDUSINPLENMAX_V(i32) #1

declare dso_local zeroext i8 @tls_content_type(i32) #1

declare dso_local %struct.TYPE_10__* @ULP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @CPL_TX_TLS_SFO_OPCODE_V(i32) #1

declare dso_local i32 @CPL_TX_TLS_SFO_DATA_TYPE_V(i8 zeroext) #1

declare dso_local i32 @CPL_TX_TLS_SFO_CPL_LEN_V(i32) #1

declare dso_local i32 @CPL_TX_TLS_SFO_SEG_LEN_V(i32) #1

declare dso_local i32 @CPL_TX_TLS_SFO_TYPE_V(i32) #1

declare dso_local i32 @CPL_TX_TLS_SFO_PROTOVER_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @tlstx_incr_seqnum(%struct.chtls_hws*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
