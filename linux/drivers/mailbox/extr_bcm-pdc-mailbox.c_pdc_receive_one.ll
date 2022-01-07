; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_receive_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_receive_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i64, i64, i64*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.pdc_rx_ctx*, i32*, %struct.mbox_controller, %struct.TYPE_2__* }
%struct.pdc_rx_ctx = type { i64, i32, i32, i32*, i32* }
%struct.mbox_controller = type { %struct.mbox_chan* }
%struct.mbox_chan = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.brcm_message = type { i32*, i32 }

@BRCM_MESSAGE_SPU = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PDC %u reclaimed %d tx descriptors\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PDC %u reclaimed %d rx descriptors\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"PDC %u txin %u, txout %u, rxin %u, rxout %u, last_rx_curr %u\0A\00", align 1
@PDC_SPUM_RESP_HDR_LEN = common dso_local global i64 0, align 8
@RX_STATUS_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"SPU response length %u bytes\00", align 1
@RX_STATUS_OVERFLOW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"crypto receive overflow\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"crypto rx len = 0\00", align 1
@EIO = common dso_local global i32 0, align 4
@PDC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*)* @pdc_receive_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_receive_one(%struct.pdc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pdc_state*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mbox_controller*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca %struct.brcm_message, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.pdc_rx_ctx*, align 8
  store %struct.pdc_state* %0, %struct.pdc_state** %3, align 8
  %16 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %17 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %16, i32 0, i32 16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %4, align 8
  %20 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %21 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %20, i32 0, i32 15
  store %struct.mbox_controller* %21, %struct.mbox_controller** %5, align 8
  %22 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %23 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %22, i32 0, i32 0
  %24 = load %struct.mbox_chan*, %struct.mbox_chan** %23, align 8
  %25 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %24, i64 0
  store %struct.mbox_chan* %25, %struct.mbox_chan** %6, align 8
  %26 = load i32, i32* @BRCM_MESSAGE_SPU, align 4
  %27 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %29 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %32 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %35 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @NRXDACTIVE(i64 %30, i32 %33, i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %1
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %43 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %42, i32 0, i32 13
  %44 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %43, align 8
  %45 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %46 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %44, i64 %47
  %49 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %41, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40, %1
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %239

55:                                               ; preds = %40
  %56 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %57 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %60 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %70 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %69, i32 0, i32 14
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %73 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %78 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %77, i32 0, i32 14
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %81 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sg_nents(i32 %84)
  %86 = load i32, i32* @DMA_TO_DEVICE, align 4
  %87 = call i32 @dma_unmap_sg(%struct.device* %68, i32 %76, i32 %85, i32 %86)
  %88 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %89 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %90, %91
  %93 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %94 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %92, %95
  %97 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %98 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %101 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %10, align 8
  %105 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %103, i64 %104)
  %106 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %107 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %13, align 8
  %109 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %110 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %109, i32 0, i32 13
  %111 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %111, i64 %112
  store %struct.pdc_rx_ctx* %113, %struct.pdc_rx_ctx** %15, align 8
  %114 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %15, align 8
  %115 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %10, align 8
  %117 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %15, align 8
  %118 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %7, i32 0, i32 0
  store i32* %119, i32** %120, align 8
  %121 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %15, align 8
  %122 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %121, i32 0, i32 4
  store i32* null, i32** %122, align 8
  %123 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %15, align 8
  %124 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %11, align 8
  %126 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %15, align 8
  %127 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %15, align 8
  %131 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %15, align 8
  %134 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @sg_nents(i32 %135)
  %137 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %138 = call i32 @dma_unmap_sg(%struct.device* %129, i32 %132, i32 %136, i32 %137)
  %139 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %140 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %141, %142
  %144 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %145 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = and i64 %143, %146
  %148 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %149 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %152 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %151, i32 0, i32 12
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %10, align 8
  %156 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %154, i64 %155)
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %159 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %163 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %166 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %169 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %172 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %175 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %157, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %161, i64 %164, i32 %167, i64 %170, i32 %173, i32 %176)
  %178 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %179 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @PDC_SPUM_RESP_HDR_LEN, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %225

183:                                              ; preds = %55
  %184 = load i32*, i32** %11, align 8
  %185 = bitcast i32* %184 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %9, align 8
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* @RX_STATUS_LEN, align 8
  %189 = and i64 %187, %188
  store i64 %189, i64* %8, align 8
  %190 = load %struct.device*, %struct.device** %4, align 8
  %191 = load i64, i64* %8, align 8
  %192 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %191)
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* @RX_STATUS_OVERFLOW, align 8
  %195 = and i64 %193, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %183
  %198 = load i64, i64* %8, align 8
  %199 = icmp ne i64 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %197, %183
  %202 = phi i1 [ true, %183 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %201
  %207 = load i64, i64* %9, align 8
  %208 = load i64, i64* @RX_STATUS_OVERFLOW, align 8
  %209 = and i64 %207, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = call i32 @dev_err_ratelimited(%struct.device* %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %214 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %215 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  br label %221

218:                                              ; preds = %206
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = call i32 @dev_info_ratelimited(%struct.device* %219, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %211
  %222 = load i32, i32* @EIO, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %239

224:                                              ; preds = %201
  br label %225

225:                                              ; preds = %224, %55
  %226 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %227 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %11, align 8
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @dma_pool_free(i32 %228, i32* %229, i32 %230)
  %232 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %233 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %232, %struct.brcm_message* %7)
  %234 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %235 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %225, %221, %52
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i64 @NRXDACTIVE(i64, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*) #1

declare dso_local i32 @dev_info_ratelimited(%struct.device*, i8*) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, %struct.brcm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
