; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64, i8* }
%struct.ib_ah = type { i32 }
%struct.ipoib_dev_priv = type { i32, i64, i32, i32, i32, %struct.TYPE_6__, i32, %struct.ipoib_tx_buf* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ipoib_tx_buf = type { %struct.sk_buff* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"linear data too small\0A\00", align 1
@IPOIB_ENCAP_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"packet len %d (> %d) too long to send, dropping\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"skb could not be linearized\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many frags after skb linearize\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"sending packet, length=%d address=%p dqpn=0x%06x\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IB_SEND_IP_CSUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"TX ring full, stopping kernel net queue\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"request notify on send CQ failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"post_send failed, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_send(%struct.net_device* %0, %struct.sk_buff* %1, %struct.ib_ah* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ib_ah*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipoib_dev_priv*, align 8
  %11 = alloca %struct.ipoib_tx_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ib_ah* %2, %struct.ib_ah** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %16)
  store %struct.ipoib_dev_priv* %17, %struct.ipoib_dev_priv** %10, align 8
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i32 @skb_headlen(%struct.sk_buff* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sub nsw i32 %20, %26
  store i32 %27, i32* %15, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i64 @skb_is_gso(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @skb_transport_offset(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @tcp_hdrlen(%struct.sk_buff* %34)
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %14, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @skb_pull(%struct.sk_buff* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %31
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %50 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %61)
  store i32 -1, i32* %5, align 4
  br label %301

63:                                               ; preds = %31
  br label %105

64:                                               ; preds = %4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %72 = add nsw i64 %70, %71
  %73 = icmp sgt i64 %67, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %64
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %83 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %86)
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %101 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ipoib_cm_skb_too_long(%struct.net_device* %98, %struct.sk_buff* %99, i64 %102)
  store i32 -1, i32* %5, align 4
  br label %301

104:                                              ; preds = %64
  store i8* null, i8** %14, align 8
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %63
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %154

112:                                              ; preds = %105
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = call i64 @skb_linearize(%struct.sk_buff* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %118 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.net_device*, %struct.net_device** %6, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %129)
  store i32 -1, i32* %5, align 4
  br label %301

131:                                              ; preds = %112
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ugt i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %131
  %139 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %140 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %152 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %151)
  store i32 -1, i32* %5, align 4
  br label %301

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153, %105
  %155 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %155, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %158, %struct.ib_ah* %159, i32 %160)
  %162 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %163 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %162, i32 0, i32 7
  %164 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %163, align 8
  %165 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %166 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ipoib_sendq_size, align 4
  %169 = sub nsw i32 %168, 1
  %170 = and i32 %167, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %164, i64 %171
  store %struct.ipoib_tx_buf* %172, %struct.ipoib_tx_buf** %11, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %11, align 8
  %175 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %174, i32 0, i32 0
  store %struct.sk_buff* %173, %struct.sk_buff** %175, align 8
  %176 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %177 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %11, align 8
  %180 = call i32 @ipoib_dma_map_tx(i32 %178, %struct.ipoib_tx_buf* %179)
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %154
  %184 = load %struct.net_device*, %struct.net_device** %6, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %189)
  store i32 -1, i32* %5, align 4
  br label %301

191:                                              ; preds = %154
  %192 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = load i32, i32* @IB_SEND_IP_CSUM, align 4
  %199 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %200 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %198
  store i32 %204, i32* %202, align 4
  br label %214

205:                                              ; preds = %191
  %206 = load i32, i32* @IB_SEND_IP_CSUM, align 4
  %207 = xor i32 %206, -1
  %208 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %209 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, %207
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %205, %197
  %215 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %216 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %219 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %217, %220
  %222 = load i32, i32* @ipoib_sendq_size, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %214
  %226 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %227 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %228 = load %struct.net_device*, %struct.net_device** %6, align 8
  %229 = call i32 @netif_stop_queue(%struct.net_device* %228)
  br label %230

230:                                              ; preds = %225, %214
  %231 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %232 = call i32 @skb_orphan(%struct.sk_buff* %231)
  %233 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %234 = call i32 @skb_dst_drop(%struct.sk_buff* %233)
  %235 = load %struct.net_device*, %struct.net_device** %6, align 8
  %236 = call i64 @netif_queue_stopped(%struct.net_device* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %230
  %239 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %240 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %243 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %244 = or i32 %242, %243
  %245 = call i64 @ib_req_notify_cq(i32 %241, i32 %244)
  %246 = icmp slt i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %238
  %248 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %249 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %248, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %250

250:                                              ; preds = %247, %238
  br label %251

251:                                              ; preds = %250, %230
  %252 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %253 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %254 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ipoib_sendq_size, align 4
  %257 = sub nsw i32 %256, 1
  %258 = and i32 %255, %257
  %259 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %11, align 8
  %262 = load i8*, i8** %14, align 8
  %263 = load i32, i32* %12, align 4
  %264 = call i32 @post_send(%struct.ipoib_dev_priv* %252, i32 %258, %struct.ib_ah* %259, i32 %260, %struct.ipoib_tx_buf* %261, i8* %262, i32 %263)
  store i32 %264, i32* %13, align 4
  %265 = load i32, i32* %13, align 4
  %266 = call i64 @unlikely(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %251
  %269 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %270 = load i32, i32* %13, align 4
  %271 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %270)
  %272 = load %struct.net_device*, %struct.net_device** %6, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %278 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %11, align 8
  %279 = call i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv* %277, %struct.ipoib_tx_buf* %278)
  %280 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %281 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %280)
  %282 = load %struct.net_device*, %struct.net_device** %6, align 8
  %283 = call i64 @netif_queue_stopped(%struct.net_device* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %268
  %286 = load %struct.net_device*, %struct.net_device** %6, align 8
  %287 = call i32 @netif_wake_queue(%struct.net_device* %286)
  br label %288

288:                                              ; preds = %285, %268
  store i32 0, i32* %13, align 4
  br label %299

289:                                              ; preds = %251
  %290 = load %struct.net_device*, %struct.net_device** %6, align 8
  %291 = call i32 @netif_trans_update(%struct.net_device* %290)
  %292 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %293 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  store i32 %294, i32* %13, align 4
  %295 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %296 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %289, %288
  %300 = load i32, i32* %13, align 4
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %299, %183, %138, %116, %77, %48
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_cm_skb_too_long(%struct.net_device*, %struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i64, %struct.ib_ah*, i32) #1

declare dso_local i32 @ipoib_dma_map_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @post_send(%struct.ipoib_dev_priv*, i32, %struct.ib_ah*, i32, %struct.ipoib_tx_buf*, i8*, i32) #1

declare dso_local i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv*, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
