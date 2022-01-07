; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_done_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_done_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__*, i32*, i32*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.omap_aes_reqctx = type { i64 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@FLAGS_OUT_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@FLAGS_ASSOC_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@FLAGS_IN_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"GCM decryption: Tag Message is wrong\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_aes_dev*)* @omap_aes_gcm_done_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_aes_gcm_done_task(%struct.omap_aes_dev* %0) #0 {
  %2 = alloca %struct.omap_aes_dev*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_aes_reqctx*, align 8
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %11 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %14 = call i32 @ALIGN(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %16 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %19 = call i32 @ALIGN(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %21 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %20, i32 0, i32 6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call %struct.omap_aes_reqctx* @aead_request_ctx(%struct.TYPE_2__* %22)
  store %struct.omap_aes_reqctx* %23, %struct.omap_aes_reqctx** %9, align 8
  %24 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %25 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %30 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %1
  %34 = phi i1 [ false, %1 ], [ %32, %28 ]
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %39 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %42 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %45 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_sync_sg_for_device(i32 %40, i32* %43, i32 %46, i32 %47)
  %49 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %50 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %53 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %52, i32 0, i32 11
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %56 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_sg(i32 %51, i32* %54, i32 %57, i32 %58)
  %60 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %61 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %64 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %67 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_unmap_sg(i32 %62, i32* %65, i32 %68, i32 %69)
  %71 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %72 = call i32 @omap_aes_crypt_dma_stop(%struct.omap_aes_dev* %71)
  %73 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %74 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %77 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %80 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %79, i32 0, i32 6
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %85 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FLAGS_OUT_DATA_ST_SHIFT, align 4
  %88 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %89 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @omap_crypto_cleanup(i32* %75, i32* %78, i32 %83, i32 %86, i32 %87, i32 %90)
  %92 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %93 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %33
  %99 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %9, align 8
  %100 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %103 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %102, i32 0, i32 6
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %108 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %111 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %110, i32 0, i32 6
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %109, %114
  %116 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %117 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @scatterwalk_map_and_copy(i64 %101, i32 %106, i32 %115, i32 %118, i32 1)
  br label %120

120:                                              ; preds = %98, %33
  %121 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %122 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @FLAGS_ASSOC_DATA_ST_SHIFT, align 4
  %127 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %128 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @omap_crypto_cleanup(i32* %124, i32* null, i32 0, i32 %125, i32 %126, i32 %129)
  %131 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %132 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @FLAGS_IN_DATA_ST_SHIFT, align 4
  %139 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %140 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @omap_crypto_cleanup(i32* %136, i32* null, i32 0, i32 %137, i32 %138, i32 %141)
  %143 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %144 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %179, label %149

149:                                              ; preds = %120
  %150 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %9, align 8
  %151 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i64*
  store i64* %153, i64** %3, align 8
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %175, %149
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %157 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %154
  %161 = load i64*, i64** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %169 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* @EBADMSG, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %167, %160
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %154

178:                                              ; preds = %154
  br label %179

179:                                              ; preds = %178, %120
  %180 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @omap_aes_gcm_finish_req(%struct.omap_aes_dev* %180, i32 %181)
  %183 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %184 = call i32 @omap_aes_gcm_handle_queue(%struct.omap_aes_dev* %183, i32* null)
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.omap_aes_reqctx* @aead_request_ctx(%struct.TYPE_2__*) #1

declare dso_local i32 @dma_sync_sg_for_device(i32, i32*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @omap_aes_crypt_dma_stop(%struct.omap_aes_dev*) #1

declare dso_local i32 @omap_crypto_cleanup(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @omap_aes_gcm_finish_req(%struct.omap_aes_dev*, i32) #1

declare dso_local i32 @omap_aes_gcm_handle_queue(%struct.omap_aes_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
