; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_bam_schedule_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_bam_schedule_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.dma_async_tx_descriptor = type { %struct.qup_i2c_dev*, i8* }

@QUP_BAM_INPUT_EOT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@QUP_BAM_FLUSH_STOP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get tx desc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qup_i2c_bam_cb = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get rx desc\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"normal trans timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QUP_RUN_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"change to run state timed out\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"flush timed out\0A\00", align 1
@QUP_I2C_NACK_FLAG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*)* @qup_i2c_bam_schedule_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_bam_schedule_desc(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qup_i2c_dev*, align 8
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %3, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  store i32 1, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %1
  %23 = load i32, i32* @QUP_BAM_INPUT_EOT, align 4
  %24 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %25 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %41 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @qup_sg_set_buf(i32* %39, i32* %45, i32 1, %struct.qup_i2c_dev* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %22
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %282

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53, %1
  %55 = load i32, i32* @QUP_BAM_FLUSH_STOP, align 4
  %56 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %55, i32* %64, align 4
  %65 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %66 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %74 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %81 = load i32, i32* @DMA_TO_DEVICE, align 4
  %82 = call i32 @qup_sg_set_buf(i32* %72, i32* %78, i32 %79, %struct.qup_i2c_dev* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %54
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %282

87:                                               ; preds = %54
  %88 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %89 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %93 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %98 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %99 = load i32, i32* @DMA_PREP_FENCE, align 4
  %100 = or i32 %98, %99
  %101 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %91, i32* %95, i32 %96, i32 %97, i32 %100)
  store %struct.dma_async_tx_descriptor* %101, %struct.dma_async_tx_descriptor** %4, align 8
  %102 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %103 = icmp ne %struct.dma_async_tx_descriptor* %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %87
  %105 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %106 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %256

111:                                              ; preds = %87
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** @qup_i2c_bam_cb, align 8
  %116 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %117 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %119 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %120 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %119, i32 0, i32 0
  store %struct.qup_i2c_dev* %118, %struct.qup_i2c_dev** %120, align 8
  br label %121

121:                                              ; preds = %114, %111
  %122 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %123 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @dma_submit_error(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %256

130:                                              ; preds = %121
  %131 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %132 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dma_async_issue_pending(i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %186

138:                                              ; preds = %130
  %139 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %140 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %144 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %149 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %150 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %142, i32* %146, i32 %147, i32 %148, i32 %149)
  store %struct.dma_async_tx_descriptor* %150, %struct.dma_async_tx_descriptor** %5, align 8
  %151 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %152 = icmp ne %struct.dma_async_tx_descriptor* %151, null
  br i1 %152, label %165, label %153

153:                                              ; preds = %138
  %154 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %155 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @dev_err(i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  %160 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %161 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dmaengine_terminate_all(i32 %163)
  br label %256

165:                                              ; preds = %138
  %166 = load i8*, i8** @qup_i2c_bam_cb, align 8
  %167 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %168 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %170 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %171 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %170, i32 0, i32 0
  store %struct.qup_i2c_dev* %169, %struct.qup_i2c_dev** %171, align 8
  %172 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %173 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i64 @dma_submit_error(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %165
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %6, align 4
  br label %256

180:                                              ; preds = %165
  %181 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %182 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dma_async_issue_pending(i32 %184)
  br label %186

186:                                              ; preds = %180, %130
  %187 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %188 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %187, i32 0, i32 4
  %189 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %190 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @wait_for_completion_timeout(i32* %188, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %186
  %195 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %196 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dev_err(i32 %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %199 = load i32, i32* @ETIMEDOUT, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %194, %186
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %201
  %205 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %206 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %211 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %255

214:                                              ; preds = %209, %204, %201
  %215 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %216 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %215, i32 0, i32 4
  %217 = call i32 @reinit_completion(i32* %216)
  %218 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %219 = load i32, i32* @QUP_RUN_STATE, align 4
  %220 = call i64 @qup_i2c_change_state(%struct.qup_i2c_dev* %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %214
  %223 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %224 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @dev_err(i32 %225, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %256

227:                                              ; preds = %214
  %228 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %229 = call i32 @qup_i2c_flush(%struct.qup_i2c_dev* %228)
  %230 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %231 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %230, i32 0, i32 4
  %232 = load i32, i32* @HZ, align 4
  %233 = call i32 @wait_for_completion_timeout(i32* %231, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %227
  %236 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %237 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @dev_err(i32 %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %240

240:                                              ; preds = %235, %227
  %241 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %242 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @QUP_I2C_NACK_FLAG, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load i32, i32* @ENXIO, align 4
  %249 = sub nsw i32 0, %248
  br label %253

250:                                              ; preds = %240
  %251 = load i32, i32* @EIO, align 4
  %252 = sub nsw i32 0, %251
  br label %253

253:                                              ; preds = %250, %247
  %254 = phi i32 [ %249, %247 ], [ %252, %250 ]
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %253, %209
  br label %256

256:                                              ; preds = %255, %222, %177, %153, %127, %104
  %257 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %258 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %261 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* @DMA_TO_DEVICE, align 4
  %266 = call i32 @dma_unmap_sg(i32 %259, i32* %263, i32 %264, i32 %265)
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %256
  %270 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %271 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %274 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %279 = call i32 @dma_unmap_sg(i32 %272, i32* %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %269, %256
  %281 = load i32, i32* %6, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %280, %85, %51
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32 @qup_sg_set_buf(i32*, i32*, i32, %struct.qup_i2c_dev*, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @qup_i2c_change_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @qup_i2c_flush(%struct.qup_i2c_dev*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
