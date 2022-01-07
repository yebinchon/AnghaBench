; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_handle_rx_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_handle_rx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ipoib_cm_rx* }
%struct.ipoib_cm_rx = type { i64, i32, i32, i64, %struct.ipoib_cm_rx_buf* }
%struct.ipoib_cm_rx_buf = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device*, i64, i64, i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.ipoib_cm_rx_buf*, i32 }
%struct.ipoib_header = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@IPOIB_CM_RX_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cm recv completion: id %d, status: %d\0A\00", align 1
@ipoib_recvq_size = common dso_local global i32 0, align 4
@IPOIB_CM_RX_DRAIN_WRID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cm recv completion event with wrid %d (> %d)\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"cm recv error (status=%d, wrid=%d vend_err %#x)\0A\00", align 1
@IPOIB_CM_RX_UPDATE_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPOIB_CM_RX_UPDATE_TIME = common dso_local global i64 0, align 8
@IPOIB_CM_RX_LIVE = common dso_local global i64 0, align 8
@IPOIB_CM_COPYBREAK = common dso_local global i32 0, align 4
@IPOIB_CM_RX_RESERVE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@IPOIB_CM_HEAD_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to allocate receive buffer %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"received %d bytes, SLID 0x%04x\0A\00", align 1
@PACKET_HOST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"ipoib_cm_post_receive_srq failed for buf %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"ipoib_cm_post_receive_nonsrq failed for buf %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_handle_rx_wc(%struct.net_device* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ipoib_cm_rx_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ipoib_cm_rx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %19)
  store %struct.ipoib_dev_priv* %20, %struct.ipoib_dev_priv** %5, align 8
  %21 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IPOIB_OP_CM, align 4
  %25 = load i32, i32* @IPOIB_OP_RECV, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @IPOIB_CM_RX_SG, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %36 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ipoib_recvq_size, align 4
  %41 = icmp uge i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IPOIB_CM_RX_DRAIN_WRID, align 4
  %48 = load i32, i32* @IPOIB_OP_CM, align 4
  %49 = load i32, i32* @IPOIB_OP_RECV, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = icmp eq i32 %46, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %45
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 2
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %63 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = call i32 @list_splice_init(i32* %61, i32* %64)
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %67 = call i32 @ipoib_cm_start_rx_drain(%struct.ipoib_dev_priv* %66)
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %72 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = call i32 @queue_work(i32 %70, i32* %73)
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 2
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %84

79:                                               ; preds = %45
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @ipoib_recvq_size, align 4
  %83 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %54
  store i32 1, i32* %17, align 4
  br label %419

85:                                               ; preds = %2
  %86 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %87 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %86, i32 0, i32 5
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %89, align 8
  store %struct.ipoib_cm_rx* %90, %struct.ipoib_cm_rx** %10, align 8
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = call i32 @ipoib_cm_has_srq(%struct.net_device* %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %97 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %98, align 8
  br label %104

100:                                              ; preds = %85
  %101 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %102 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %101, i32 0, i32 4
  %103 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %102, align 8
  br label %104

104:                                              ; preds = %100, %95
  %105 = phi %struct.ipoib_cm_rx_buf* [ %99, %95 ], [ %103, %100 ]
  store %struct.ipoib_cm_rx_buf* %105, %struct.ipoib_cm_rx_buf** %6, align 8
  %106 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %106, i64 %108
  %110 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %109, i32 0, i32 1
  %111 = load %struct.sk_buff*, %struct.sk_buff** %110, align 8
  store %struct.sk_buff* %111, %struct.sk_buff** %8, align 8
  %112 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %113 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IB_WC_SUCCESS, align 4
  %116 = icmp ne i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %167

120:                                              ; preds = %104
  %121 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %122 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %123 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %127 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_dbg(%struct.ipoib_dev_priv* %121, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125, i32 %128)
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %120
  br label %381

138:                                              ; preds = %120
  %139 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %140 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %166, label %144

144:                                              ; preds = %138
  %145 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %146 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %145, i32 0, i32 2
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %150 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %149, i32 0, i32 2
  %151 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %152 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = call i32 @list_move(i32* %150, i32* %153)
  %155 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %156 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %155, i32 0, i32 2
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %160 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %163 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = call i32 @queue_work(i32 %161, i32* %164)
  br label %166

166:                                              ; preds = %144, %138
  store i32 1, i32* %17, align 4
  br label %419

167:                                              ; preds = %104
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @IPOIB_CM_RX_UPDATE_MASK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %214

176:                                              ; preds = %167
  %177 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %178 = icmp ne %struct.ipoib_cm_rx* %177, null
  br i1 %178, label %179, label %213

179:                                              ; preds = %176
  %180 = load i64, i64* @jiffies, align 8
  %181 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %182 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @IPOIB_CM_RX_UPDATE_TIME, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i64 @time_after_eq(i64 %180, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %213

188:                                              ; preds = %179
  %189 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %190 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %189, i32 0, i32 2
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @spin_lock_irqsave(i32* %190, i64 %191)
  %193 = load i64, i64* @jiffies, align 8
  %194 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %195 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %194, i32 0, i32 3
  store i64 %193, i64* %195, align 8
  %196 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %197 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @IPOIB_CM_RX_LIVE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %188
  %202 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %203 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %202, i32 0, i32 2
  %204 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %205 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = call i32 @list_move(i32* %203, i32* %206)
  br label %208

208:                                              ; preds = %201, %188
  %209 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %210 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %209, i32 0, i32 2
  %211 = load i64, i64* %11, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  br label %213

213:                                              ; preds = %208, %179, %176
  br label %214

214:                                              ; preds = %213, %167
  %215 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %216 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @IPOIB_CM_COPYBREAK, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %274

220:                                              ; preds = %214
  %221 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %222 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* @IPOIB_CM_RX_RESERVE, align 8
  %227 = add nsw i64 %225, %226
  %228 = call %struct.sk_buff* @dev_alloc_skb(i64 %227)
  store %struct.sk_buff* %228, %struct.sk_buff** %16, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %230 = icmp ne %struct.sk_buff* %229, null
  br i1 %230, label %231, label %273

231:                                              ; preds = %220
  %232 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %233 = load i64, i64* @IPOIB_CM_RX_RESERVE, align 8
  %234 = call i32 @skb_reserve(%struct.sk_buff* %232, i64 %233)
  %235 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %236 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %239 = load i32, i32* %7, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %238, i64 %240
  %242 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %248 = call i32 @ib_dma_sync_single_for_cpu(i32 %237, i32 %245, i32 %246, i32 %247)
  %249 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %250 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* %18, align 4
  %254 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %249, i64 %252, i32 %253)
  %255 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %256 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %259 = load i32, i32* %7, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %258, i64 %260
  %262 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %268 = call i32 @ib_dma_sync_single_for_device(i32 %257, i32 %265, i32 %266, i32 %267)
  %269 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %270 = load i32, i32* %18, align 4
  %271 = call i32 @skb_put(%struct.sk_buff* %269, i32 %270)
  %272 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %272, %struct.sk_buff** %8, align 8
  br label %347

273:                                              ; preds = %220
  br label %274

274:                                              ; preds = %273, %214
  %275 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %276 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = load i32, i32* @u32, align 4
  %280 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %281 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @IPOIB_CM_HEAD_SIZE, align 4
  %284 = call i64 @min_t(i32 %279, i32 %282, i32 %283)
  %285 = sub nsw i64 %278, %284
  %286 = call i32 @PAGE_ALIGN(i64 %285)
  %287 = load i32, i32* @PAGE_SIZE, align 4
  %288 = sdiv i32 %286, %287
  store i32 %288, i32* %14, align 4
  %289 = load %struct.net_device*, %struct.net_device** %3, align 8
  %290 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* @GFP_ATOMIC, align 4
  %294 = call %struct.sk_buff* @ipoib_cm_alloc_rx_skb(%struct.net_device* %289, %struct.ipoib_cm_rx_buf* %290, i32 %291, i32 %292, i32* %32, i32 %293)
  store %struct.sk_buff* %294, %struct.sk_buff** %9, align 8
  %295 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %296 = icmp ne %struct.sk_buff* %295, null
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = call i64 @unlikely(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %274
  %302 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %303 = load i32, i32* %7, align 4
  %304 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_dbg(%struct.ipoib_dev_priv* %302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %303)
  %305 = load %struct.net_device*, %struct.net_device** %3, align 8
  %306 = getelementptr inbounds %struct.net_device, %struct.net_device* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 4
  br label %381

310:                                              ; preds = %274
  %311 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %312 = load i32, i32* %14, align 4
  %313 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %314 = load i32, i32* %7, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %313, i64 %315
  %317 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv* %311, i32 %312, i32* %318)
  %320 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %321 = load i32, i32* %7, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %320, i64 %322
  %324 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %14, align 4
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 4
  %330 = trunc i64 %329 to i32
  %331 = call i32 @memcpy(i32* %325, i32* %32, i32 %330)
  %332 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %333 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %334 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %337 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %332, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %335, i32 %338)
  %340 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %341 = load i32, i32* @IPOIB_CM_HEAD_SIZE, align 4
  %342 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %343 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %346 = call i32 @skb_put_frags(%struct.sk_buff* %340, i32 %341, i32 %344, %struct.sk_buff* %345)
  br label %347

347:                                              ; preds = %310, %231
  %348 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %349 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = inttoptr i64 %350 to %struct.ipoib_header*
  %352 = getelementptr inbounds %struct.ipoib_header, %struct.ipoib_header* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %355 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %354, i32 0, i32 4
  store i32 %353, i32* %355, align 8
  %356 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %357 = call i32 @skb_add_pseudo_hdr(%struct.sk_buff* %356)
  %358 = load %struct.net_device*, %struct.net_device** %3, align 8
  %359 = getelementptr inbounds %struct.net_device, %struct.net_device* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %360, align 4
  %363 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %364 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.net_device*, %struct.net_device** %3, align 8
  %367 = getelementptr inbounds %struct.net_device, %struct.net_device* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %370, %365
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %368, align 4
  %373 = load %struct.net_device*, %struct.net_device** %3, align 8
  %374 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %375 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %374, i32 0, i32 1
  store %struct.net_device* %373, %struct.net_device** %375, align 8
  %376 = load i32, i32* @PACKET_HOST, align 4
  %377 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %378 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %377, i32 0, i32 0
  store i32 %376, i32* %378, align 8
  %379 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %380 = call i32 @netif_receive_skb(%struct.sk_buff* %379)
  br label %381

381:                                              ; preds = %347, %301, %137
  %382 = load i32, i32* %15, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %395

384:                                              ; preds = %381
  %385 = load %struct.net_device*, %struct.net_device** %3, align 8
  %386 = load i32, i32* %7, align 4
  %387 = call i32 @ipoib_cm_post_receive_srq(%struct.net_device* %385, i32 %386)
  %388 = call i64 @unlikely(i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %384
  %391 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %392 = load i32, i32* %7, align 4
  %393 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %391, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %392)
  br label %394

394:                                              ; preds = %390, %384
  br label %418

395:                                              ; preds = %381
  %396 = load %struct.net_device*, %struct.net_device** %3, align 8
  %397 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %398 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %399 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 1
  %401 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %402 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* %7, align 4
  %406 = call i32 @ipoib_cm_post_receive_nonsrq(%struct.net_device* %396, %struct.ipoib_cm_rx* %397, i32* %400, i32 %404, i32 %405)
  %407 = call i64 @unlikely(i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %395
  %410 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %411 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = add nsw i32 %412, -1
  store i32 %413, i32* %411, align 8
  %414 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %415 = load i32, i32* %7, align 4
  %416 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %414, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %415)
  br label %417

417:                                              ; preds = %409, %395
  br label %418

418:                                              ; preds = %417, %394
  store i32 0, i32* %17, align 4
  br label %419

419:                                              ; preds = %418, %166, %84
  %420 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %420)
  %421 = load i32, i32* %17, align 4
  switch i32 %421, label %423 [
    i32 0, label %422
    i32 1, label %422
  ]

422:                                              ; preds = %419, %419
  ret void

423:                                              ; preds = %419
  unreachable
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @ipoib_cm_start_rx_drain(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @ipoib_cm_has_srq(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i64 @min_t(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ipoib_cm_alloc_rx_skb(%struct.net_device*, %struct.ipoib_cm_rx_buf*, i32, i32, i32*, i32) #1

declare dso_local i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skb_put_frags(%struct.sk_buff*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_add_pseudo_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_cm_post_receive_srq(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_cm_post_receive_nonsrq(%struct.net_device*, %struct.ipoib_cm_rx*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
