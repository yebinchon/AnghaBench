; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_rx_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_rx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.ib_wc = type { i32, i64, i32, i64, i32, i64, i32 }
%struct.ipoib_dev_priv = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i64, i32, %struct.net_device*, i64, i64, i32 }
%union.ib_gid = type { i32* }
%struct.ib_grh = type { %union.ib_gid, %union.ib_gid }
%struct.TYPE_9__ = type { i64 }
%struct.ipoib_header = type { i32 }

@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@IPOIB_UD_RX_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"recv completion: id %d, status: %d\0A\00", align 1
@ipoib_recvq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"recv completion event with wrid %d (> %d)\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"failed recv event (status=%d, wrid=%d vend_err %#x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"received %d bytes, SLID 0x%04x\0A\00", align 1
@IB_WC_GRH = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i64 0, align 8
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@IB_GRH_BYTES = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IB_WC_IP_CSUM_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"ipoib_ib_post_receive failed for buf %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ib_wc*)* @ipoib_ib_handle_rx_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_ib_handle_rx_wc(%struct.net_device* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca %union.ib_gid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %14)
  store %struct.ipoib_dev_priv* %15, %struct.ipoib_dev_priv** %5, align 8
  %16 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %17 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IPOIB_OP_RECV, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @IPOIB_UD_RX_SG, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ipoib_recvq_size, align 4
  %34 = icmp uge i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ipoib_recvq_size, align 4
  %42 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  store i32 1, i32* %12, align 4
  br label %307

43:                                               ; preds = %2
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %53 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_WC_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %43
  %61 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %68 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %69 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %66, %60
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %79 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %80 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %79, i32 0, i32 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv* %78, i32* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %88)
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %91 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %90, i32 0, i32 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %96, align 8
  store i32 1, i32* %12, align 4
  br label %307

97:                                               ; preds = %43
  %98 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %99 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %98, i32 0, i32 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @IPOIB_UD_RX_SG, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i32* %25, i32* %105, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @ipoib_alloc_rx_skb(%struct.net_device* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %97
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %296

125:                                              ; preds = %97
  %126 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %127 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %128 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %131 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %129, i64 %132)
  %134 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %135 = call i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv* %134, i32* %25)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %138 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @skb_put(%struct.sk_buff* %136, i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.ib_grh*
  %145 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %144, i32 0, i32 1
  store %union.ib_gid* %145, %union.ib_gid** %10, align 8
  %146 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %147 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IB_WC_GRH, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %125
  %153 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %154 = bitcast %union.ib_gid* %153 to i32**
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 255
  br i1 %158, label %159, label %163

159:                                              ; preds = %152, %125
  %160 = load i64, i64* @PACKET_HOST, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %180

163:                                              ; preds = %152
  %164 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %165 = load %struct.net_device*, %struct.net_device** %3, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 4
  %169 = call i64 @memcmp(%union.ib_gid* %164, i64 %168, i32 8)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load i64, i64* @PACKET_BROADCAST, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %179

175:                                              ; preds = %163
  %176 = load i64, i64* @PACKET_MULTICAST, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %159
  %181 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.ib_grh*
  %185 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %184, i32 0, i32 0
  store %union.ib_gid* %185, %union.ib_gid** %11, align 8
  %186 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %187 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %190 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %188, %191
  br i1 %192, label %193, label %229

193:                                              ; preds = %180
  %194 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %195 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %198 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %197, i32 0, i32 3
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %196, %201
  br i1 %202, label %203, label %229

203:                                              ; preds = %193
  store i32 1, i32* %13, align 4
  %204 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %205 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @IB_WC_GRH, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %203
  %211 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %212 = bitcast %union.ib_gid* %211 to %struct.TYPE_9__*
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %216 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %214, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %221, %210, %203
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %227 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %226)
  br label %296

228:                                              ; preds = %222
  br label %229

229:                                              ; preds = %228, %193, %180
  %230 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %231 = load i32, i32* @IB_GRH_BYTES, align 4
  %232 = call i32 @skb_pull(%struct.sk_buff* %230, i32 %231)
  %233 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %234 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to %struct.ipoib_header*
  %237 = getelementptr inbounds %struct.ipoib_header, %struct.ipoib_header* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %242 = call i32 @skb_add_pseudo_hdr(%struct.sk_buff* %241)
  %243 = load %struct.net_device*, %struct.net_device** %3, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.net_device*, %struct.net_device** %3, align 8
  %252 = getelementptr inbounds %struct.net_device, %struct.net_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %250
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 4
  %258 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %259 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @PACKET_MULTICAST, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %229
  %264 = load %struct.net_device*, %struct.net_device** %3, align 8
  %265 = getelementptr inbounds %struct.net_device, %struct.net_device* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %263, %229
  %270 = load %struct.net_device*, %struct.net_device** %3, align 8
  %271 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %272 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %271, i32 0, i32 2
  store %struct.net_device* %270, %struct.net_device** %272, align 8
  %273 = load %struct.net_device*, %struct.net_device** %3, align 8
  %274 = getelementptr inbounds %struct.net_device, %struct.net_device* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %269
  %280 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %281 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @IB_WC_IP_CSUM_OK, align 4
  %284 = and i32 %282, %283
  %285 = call i64 @likely(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %279
  %288 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %289 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %290 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 8
  br label %291

291:                                              ; preds = %287, %279, %269
  %292 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %293 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %292, i32 0, i32 1
  %294 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %295 = call i32 @napi_gro_receive(i32* %293, %struct.sk_buff* %294)
  br label %296

296:                                              ; preds = %291, %225, %119
  %297 = load %struct.net_device*, %struct.net_device** %3, align 8
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @ipoib_ib_post_receive(%struct.net_device* %297, i32 %298)
  %300 = call i64 @unlikely(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %304 = load i32, i32* %6, align 4
  %305 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %303, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %302, %296
  store i32 0, i32* %12, align 4
  br label %307

307:                                              ; preds = %306, %77, %38
  %308 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %308)
  %309 = load i32, i32* %12, align 4
  switch i32 %309, label %311 [
    i32 0, label %310
    i32 1, label %310
  ]

310:                                              ; preds = %307, %307
  ret void

311:                                              ; preds = %307
  unreachable
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv*, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ipoib_alloc_rx_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @memcmp(%union.ib_gid*, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_add_pseudo_hdr(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ipoib_ib_post_receive(%struct.net_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
