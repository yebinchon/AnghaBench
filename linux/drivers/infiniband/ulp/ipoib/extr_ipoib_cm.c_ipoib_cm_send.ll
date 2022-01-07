; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ipoib_cm_tx = type { i32, i64, i32, %struct.TYPE_4__*, %struct.ipoib_tx_buf* }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_tx_buf = type { %struct.sk_buff* }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"packet len %d (> %d) too long to send, dropping\0A\00", align 1
@IPOIB_ENCAP_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"skb could not be linearized\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"too many frags after skb linearize\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"sending packet: head 0x%x length %d connection 0x%x\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"TX ring 0x%x full, stopping kernel net queue\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"IPoIB/CM:request notify on send CQ failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"IPoIB/CM:post_send failed, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_send(%struct.net_device* %0, %struct.sk_buff* %1, %struct.ipoib_cm_tx* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipoib_cm_tx*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_tx_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ipoib_cm_tx* %2, %struct.ipoib_cm_tx** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %7, align 8
  %13 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %14 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @skb_headlen(%struct.sk_buff* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sub nsw i32 %15, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %27 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %3
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %39 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40)
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %55 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i32 @ipoib_cm_skb_too_long(%struct.net_device* %52, %struct.sk_buff* %53, i64 %58)
  br label %252

60:                                               ; preds = %3
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i64 @skb_linearize(%struct.sk_buff* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %73 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %84)
  br label %252

86:                                               ; preds = %67
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %95 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %106)
  br label %252

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108, %60
  %110 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %111 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %112 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %118 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %110, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %113, i64 %116, i32 %121)
  %123 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %124 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %123, i32 0, i32 4
  %125 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %124, align 8
  %126 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %127 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ipoib_sendq_size, align 4
  %130 = sub nsw i32 %129, 1
  %131 = and i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %125, i64 %132
  store %struct.ipoib_tx_buf* %133, %struct.ipoib_tx_buf** %8, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %8, align 8
  %136 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %135, i32 0, i32 0
  store %struct.sk_buff* %134, %struct.sk_buff** %136, align 8
  %137 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %138 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %8, align 8
  %141 = call i32 @ipoib_dma_map_tx(i32 %139, %struct.ipoib_tx_buf* %140)
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %109
  %145 = load %struct.net_device*, %struct.net_device** %4, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %150)
  br label %252

152:                                              ; preds = %109
  %153 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %154 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %157 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = load i32, i32* @ipoib_sendq_size, align 4
  %161 = sub nsw i32 %160, 1
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %152
  %164 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %165 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %166 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %165, i32 0, i32 3
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = call i32 @netif_stop_queue(%struct.net_device* %171)
  br label %173

173:                                              ; preds = %163, %152
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call i32 @skb_orphan(%struct.sk_buff* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = call i32 @skb_dst_drop(%struct.sk_buff* %176)
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = call i64 @netif_queue_stopped(%struct.net_device* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %173
  %182 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %183 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %186 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @ib_req_notify_cq(i32 %184, i32 %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %181
  %195 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %196 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %195, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %205

197:                                              ; preds = %181
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %202 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %201, i32 0, i32 2
  %203 = call i32 @napi_schedule(i32* %202)
  br label %204

204:                                              ; preds = %200, %197
  br label %205

205:                                              ; preds = %204, %194
  br label %206

206:                                              ; preds = %205, %173
  %207 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %208 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %209 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %210 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @ipoib_sendq_size, align 4
  %213 = sub nsw i32 %212, 1
  %214 = and i32 %211, %213
  %215 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %8, align 8
  %216 = call i32 @post_send(%struct.ipoib_dev_priv* %207, %struct.ipoib_cm_tx* %208, i32 %214, %struct.ipoib_tx_buf* %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %241

220:                                              ; preds = %206
  %221 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %222 = load i32, i32* %9, align 4
  %223 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %222)
  %224 = load %struct.net_device*, %struct.net_device** %4, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %230 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %8, align 8
  %231 = call i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv* %229, %struct.ipoib_tx_buf* %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %233 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %232)
  %234 = load %struct.net_device*, %struct.net_device** %4, align 8
  %235 = call i64 @netif_queue_stopped(%struct.net_device* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %220
  %238 = load %struct.net_device*, %struct.net_device** %4, align 8
  %239 = call i32 @netif_wake_queue(%struct.net_device* %238)
  br label %240

240:                                              ; preds = %237, %220
  br label %252

241:                                              ; preds = %206
  %242 = load %struct.net_device*, %struct.net_device** %4, align 8
  %243 = call i32 @netif_trans_update(%struct.net_device* %242)
  %244 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %245 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  %248 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %249 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %33, %71, %93, %144, %241, %240
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @ipoib_cm_skb_too_long(%struct.net_device*, %struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i64, i32) #1

declare dso_local i32 @ipoib_dma_map_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @post_send(%struct.ipoib_dev_priv*, %struct.ipoib_cm_tx*, i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv*, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
