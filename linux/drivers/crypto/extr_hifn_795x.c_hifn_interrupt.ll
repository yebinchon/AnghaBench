; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.hifn_dma = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@HIFN_1_DMA_CSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"1 dmacsr: %08x, dmareg: %08x, res: %08x [%d], i: %d.%d.%d.%d, u: %d.%d.%d.%d.\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@HIFN_DMACSR_ENGINE = common dso_local global i32 0, align 4
@HIFN_0_PUISR = common dso_local global i32 0, align 4
@HIFN_DMACSR_PUBDONE = common dso_local global i32 0, align 4
@HIFN_1_PUB_STATUS = common dso_local global i32 0, align 4
@HIFN_PUBSTS_DONE = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_OVER = common dso_local global i32 0, align 4
@HIFN_DMACSR_D_OVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"overflow: r: %d, d: %d, puisr: %08x, d: %u.\0A\00", align 1
@HIFN_PUISR_DSTOVER = common dso_local global i32 0, align 4
@HIFN_DMACSR_C_ABORT = common dso_local global i32 0, align 4
@HIFN_DMACSR_S_ABORT = common dso_local global i32 0, align 4
@HIFN_DMACSR_D_ABORT = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"abort: c: %d, s: %d, d: %d, r: %d.\0A\00", align 1
@HIFN_DMACSR_C_WAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"wait on command.\0A\00", align 1
@HIFN_DMAIER_C_WAIT = common dso_local global i32 0, align 4
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hifn_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hifn_device*, align 8
  %7 = alloca %struct.hifn_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hifn_device*
  store %struct.hifn_device* %12, %struct.hifn_device** %6, align 8
  %13 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %14 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.hifn_dma*
  store %struct.hifn_dma* %16, %struct.hifn_dma** %7, align 8
  %17 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %18 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %19 = call i32 @hifn_read_1(%struct.hifn_device* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %21 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %26 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %30 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %34 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %37 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %40 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %43 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %46 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %49 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %52 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %55 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %58 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i64 %50, i32 %53, i32 %56, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %63 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %61, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %2
  %68 = load i32, i32* @IRQ_NONE, align 4
  store i32 %68, i32* %3, align 4
  br label %245

69:                                               ; preds = %2
  %70 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %71 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %74 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %72, %75
  %77 = call i32 @hifn_write_1(%struct.hifn_device* %70, i32 %71, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @HIFN_DMACSR_ENGINE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %69
  %83 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %84 = load i32, i32* @HIFN_0_PUISR, align 4
  %85 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %86 = load i32, i32* @HIFN_0_PUISR, align 4
  %87 = call i32 @hifn_read_0(%struct.hifn_device* %85, i32 %86)
  %88 = call i32 @hifn_write_0(%struct.hifn_device* %83, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %82, %69
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @HIFN_DMACSR_PUBDONE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %96 = load i32, i32* @HIFN_1_PUB_STATUS, align 4
  %97 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %98 = load i32, i32* @HIFN_1_PUB_STATUS, align 4
  %99 = call i32 @hifn_read_1(%struct.hifn_device* %97, i32 %98)
  %100 = load i32, i32* @HIFN_PUBSTS_DONE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @hifn_write_1(%struct.hifn_device* %95, i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %94, %89
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @HIFN_DMACSR_R_OVER, align 4
  %106 = load i32, i32* @HIFN_DMACSR_D_OVER, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %160

111:                                              ; preds = %103
  %112 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %113 = load i32, i32* @HIFN_0_PUISR, align 4
  %114 = call i32 @hifn_read_0(%struct.hifn_device* %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %116 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @HIFN_DMACSR_R_OVER, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @HIFN_DMACSR_D_OVER, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @HIFN_PUISR_DSTOVER, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @dev_warn(i32* %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %132, i32 %133, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @HIFN_PUISR_DSTOVER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %111
  %147 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %148 = load i32, i32* @HIFN_0_PUISR, align 4
  %149 = load i32, i32* @HIFN_PUISR_DSTOVER, align 4
  %150 = call i32 @hifn_write_0(%struct.hifn_device* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %111
  %152 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %153 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @HIFN_DMACSR_R_OVER, align 4
  %156 = load i32, i32* @HIFN_DMACSR_D_OVER, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = call i32 @hifn_write_1(%struct.hifn_device* %152, i32 %153, i32 %158)
  br label %160

160:                                              ; preds = %151, %103
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @HIFN_DMACSR_C_ABORT, align 4
  %163 = load i32, i32* @HIFN_DMACSR_S_ABORT, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @HIFN_DMACSR_D_ABORT, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @HIFN_DMACSR_R_ABORT, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %161, %168
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %160
  %173 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %174 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %173, i32 0, i32 2
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @HIFN_DMACSR_C_ABORT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @HIFN_DMACSR_S_ABORT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @HIFN_DMACSR_D_ABORT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @HIFN_DMACSR_R_ABORT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = call i32 @dev_warn(i32* %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %190, i32 %197, i32 %204)
  %206 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %207 = call i32 @hifn_reset_dma(%struct.hifn_device* %206, i32 1)
  %208 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %209 = call i32 @hifn_init_dma(%struct.hifn_device* %208)
  %210 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %211 = call i32 @hifn_init_registers(%struct.hifn_device* %210)
  br label %212

212:                                              ; preds = %172, %160
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @HIFN_DMACSR_C_WAIT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %240

217:                                              ; preds = %212
  %218 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %219 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %240

222:                                              ; preds = %217
  %223 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %224 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %223, i32 0, i32 2
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %226, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %228 = load i32, i32* @HIFN_DMAIER_C_WAIT, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %231 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %235 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %236 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %237 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @hifn_write_1(%struct.hifn_device* %234, i32 %235, i32 %238)
  br label %240

240:                                              ; preds = %222, %217, %212
  %241 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %242 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %241, i32 0, i32 1
  %243 = call i32 @tasklet_schedule(i32* %242)
  %244 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %240, %67
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @hifn_read_1(%struct.hifn_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @hifn_write_0(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @hifn_read_0(%struct.hifn_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hifn_reset_dma(%struct.hifn_device*, i32) #1

declare dso_local i32 @hifn_init_dma(%struct.hifn_device*) #1

declare dso_local i32 @hifn_init_registers(%struct.hifn_device*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
