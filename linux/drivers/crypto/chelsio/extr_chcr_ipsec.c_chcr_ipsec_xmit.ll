; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_ipsec_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_ipsec_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.ipsec_sa_entry = type { i32 }
%struct.adapter = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.sge_eth_txq* }
%struct.sge_eth_txq = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__*, i32*, i64 }
%struct.TYPE_12__ = type { %struct.ulptx_sgl*, %struct.sk_buff* }
%struct.ulptx_sgl = type { i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.sec_path = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%s: Tx ring %u full while queue awake! cred:%d %d %d flits:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chcr_ipsec_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.ipsec_sa_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.adapter*, align 8
  %18 = alloca %struct.sge_eth_txq*, align 8
  %19 = alloca %struct.port_info*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.sec_path*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %26)
  store %struct.xfrm_state* %27, %struct.xfrm_state** %6, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %20, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %292

40:                                               ; preds = %2
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ipsec_sa_entry*
  store %struct.ipsec_sa_entry* %45, %struct.ipsec_sa_entry** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %46)
  store %struct.sec_path* %47, %struct.sec_path** %22, align 8
  %48 = load %struct.sec_path*, %struct.sec_path** %22, align 8
  %49 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %127, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %292

57:                                               ; preds = %40
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call %struct.port_info* @netdev_priv(%struct.net_device* %58)
  store %struct.port_info* %59, %struct.port_info** %19, align 8
  %60 = load %struct.port_info*, %struct.port_info** %19, align 8
  %61 = getelementptr inbounds %struct.port_info, %struct.port_info* %60, i32 0, i32 1
  %62 = load %struct.adapter*, %struct.adapter** %61, align 8
  store %struct.adapter* %62, %struct.adapter** %17, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load %struct.adapter*, %struct.adapter** %17, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.port_info*, %struct.port_info** %19, align 8
  %72 = getelementptr inbounds %struct.port_info, %struct.port_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %69, i64 %75
  store %struct.sge_eth_txq* %76, %struct.sge_eth_txq** %18, align 8
  %77 = load %struct.adapter*, %struct.adapter** %17, align 8
  %78 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %79 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %78, i32 0, i32 0
  %80 = call i32 @cxgb4_reclaim_completed_tx(%struct.adapter* %77, %struct.TYPE_13__* %79, i32 1)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %7, align 8
  %83 = call i32 @calc_tx_sec_flits(%struct.sk_buff* %81, %struct.ipsec_sa_entry* %82, i32* %23)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @flits_to_desc(i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %87 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %86, i32 0, i32 0
  %88 = call i32 @txq_avail(%struct.TYPE_13__* %87)
  %89 = load i32, i32* %16, align 4
  %90 = sub i32 %88, %89
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %57
  %97 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %98 = call i32 @eth_txq_stop(%struct.sge_eth_txq* %97)
  %99 = load %struct.adapter*, %struct.adapter** %17, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %109 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %108, i32 0, i32 0
  %110 = call i32 @txq_avail(%struct.TYPE_13__* %109)
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105, i32 %106, i32 %107, i32 %110, i32 %111)
  %113 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %292

114:                                              ; preds = %57
  %115 = load i32, i32* %23, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %114
  %118 = load %struct.adapter*, %struct.adapter** %17, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i64 @cxgb4_map_skb(i32 %120, %struct.sk_buff* %121, i32* %32)
  %123 = icmp slt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %129 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  br label %53

132:                                              ; preds = %117, %114
  %133 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %134 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %138 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  store i32* %141, i32** %8, align 8
  %142 = load i32*, i32** %8, align 8
  store i32* %142, i32** %10, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32* %146, i32** %9, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = bitcast i32* %149 to i8*
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %7, align 8
  %153 = call i64 @chcr_crypto_wreq(%struct.sk_buff* %147, %struct.net_device* %148, i8* %150, i32 %151, %struct.ipsec_sa_entry* %152)
  %154 = inttoptr i64 %153 to i8*
  %155 = bitcast i8* %154 to i32*
  store i32* %155, i32** %8, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = icmp ugt i32* %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %132
  %160 = load i32*, i32** %9, align 8
  %161 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %162 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i32*
  %166 = ptrtoint i32* %160 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %13, align 4
  %171 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %172 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = bitcast i32* %174 to i8*
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr i8, i8* %175, i64 %177
  %179 = bitcast i8* %178 to i32*
  store i32* %179, i32** %9, align 8
  br label %180

180:                                              ; preds = %159, %132
  %181 = load i32*, i32** %8, align 8
  %182 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %183 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = icmp eq i32* %181, %186
  br i1 %187, label %188, label %215

188:                                              ; preds = %180
  %189 = load i32*, i32** %9, align 8
  %190 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %191 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i32*
  %195 = ptrtoint i32* %189 to i64
  %196 = ptrtoint i32* %194 to i64
  %197 = sub i64 %195, %196
  %198 = sdiv exact i64 %197, 4
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %13, align 4
  %200 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %201 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = bitcast i32* %203 to i8*
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr i8, i8* %204, i64 %206
  %208 = bitcast i8* %207 to i32*
  store i32* %208, i32** %9, align 8
  %209 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %210 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = bitcast i32* %212 to i8*
  %214 = bitcast i8* %213 to i32*
  store i32* %214, i32** %8, align 8
  br label %215

215:                                              ; preds = %188, %180
  %216 = load i32*, i32** %8, align 8
  %217 = bitcast i32* %216 to i8*
  %218 = bitcast i8* %217 to i32*
  store i32* %218, i32** %11, align 8
  %219 = load i32, i32* %23, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %215
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %224 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %223, i32 0, i32 0
  %225 = load i32*, i32** %11, align 8
  %226 = call i32 @cxgb4_inline_tx_skb(%struct.sk_buff* %222, %struct.TYPE_13__* %224, i32* %225)
  %227 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %228 = call i32 @dev_consume_skb_any(%struct.sk_buff* %227)
  br label %281

229:                                              ; preds = %215
  %230 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %231 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %232 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %231, i32 0, i32 0
  %233 = load i32*, i32** %11, align 8
  %234 = bitcast i32* %233 to i8*
  %235 = load i32*, i32** %9, align 8
  %236 = call i32 @cxgb4_write_sgl(%struct.sk_buff* %230, %struct.TYPE_13__* %232, i8* %234, i32* %235, i32 0, i32* %32)
  %237 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %238 = call i32 @skb_orphan(%struct.sk_buff* %237)
  %239 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %240 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %16, align 4
  %244 = zext i32 %243 to i64
  %245 = add i64 %242, %244
  %246 = sub i64 %245, 1
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %25, align 4
  %248 = load i32, i32* %25, align 4
  %249 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %250 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %248, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %229
  %255 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %256 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %25, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %25, align 4
  br label %261

261:                                              ; preds = %254, %229
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %264 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = load i32, i32* %25, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  store %struct.sk_buff* %262, %struct.sk_buff** %270, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = bitcast i32* %271 to %struct.ulptx_sgl*
  %273 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %274 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %275, align 8
  %277 = load i32, i32* %25, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  store %struct.ulptx_sgl* %272, %struct.ulptx_sgl** %280, align 8
  br label %281

281:                                              ; preds = %261, %221
  %282 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %283 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %282, i32 0, i32 0
  %284 = load i32, i32* %16, align 4
  %285 = call i32 @txq_advance(%struct.TYPE_13__* %283, i32 %284)
  %286 = load %struct.adapter*, %struct.adapter** %17, align 8
  %287 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %18, align 8
  %288 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %287, i32 0, i32 0
  %289 = load i32, i32* %16, align 4
  %290 = call i32 @cxgb4_ring_tx_db(%struct.adapter* %286, %struct.TYPE_13__* %288, i32 %289)
  %291 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %291, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %292

292:                                              ; preds = %281, %96, %53, %38
  %293 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %293)
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cxgb4_reclaim_completed_tx(%struct.adapter*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @calc_tx_sec_flits(%struct.sk_buff*, %struct.ipsec_sa_entry*, i32*) #1

declare dso_local i32 @flits_to_desc(i32) #1

declare dso_local i32 @txq_avail(%struct.TYPE_13__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_txq_stop(%struct.sge_eth_txq*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cxgb4_map_skb(i32, %struct.sk_buff*, i32*) #1

declare dso_local i64 @chcr_crypto_wreq(%struct.sk_buff*, %struct.net_device*, i8*, i32, %struct.ipsec_sa_entry*) #1

declare dso_local i32 @cxgb4_inline_tx_skb(%struct.sk_buff*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cxgb4_write_sgl(%struct.sk_buff*, %struct.TYPE_13__*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @txq_advance(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @cxgb4_ring_tx_db(%struct.adapter*, %struct.TYPE_13__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
