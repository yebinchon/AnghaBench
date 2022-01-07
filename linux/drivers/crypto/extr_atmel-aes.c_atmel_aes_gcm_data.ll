; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i32, {}*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.atmel_aes_gcm_ctx = type { i64, i32, i32 }
%struct.aead_request = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }

@ATMEL_AES_DMA_THRESHOLD = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@AES_ISR = common dso_local global i32 0, align 4
@AES_INT_DATARDY = common dso_local global i32 0, align 4
@AES_IER = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AES_MR = common dso_local global i32 0, align 4
@AES_MR_SMOD_MASK = common dso_local global i32 0, align 4
@AES_MR_DUALBUFF = common dso_local global i32 0, align 4
@AES_MR_SMOD_IDATAR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_data(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %11 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %13)
  store %struct.atmel_aes_gcm_ctx* %14, %struct.atmel_aes_gcm_ctx** %4, align 8
  %15 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.aead_request* @aead_request_cast(i32 %17)
  store %struct.aead_request* %18, %struct.aead_request** %5, align 8
  %19 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ATMEL_AES_DMA_THRESHOLD, align 8
  %23 = icmp sge i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %63, %1
  %26 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %25
  %31 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %32 = call i32 @AES_IDATAR(i32 0)
  %33 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %31, i32 %32, i32 %35)
  %37 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %38, align 8
  %41 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %42 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %47 = load i32, i32* @AES_ISR, align 4
  %48 = call i32 @atmel_aes_read(%struct.atmel_aes_dev* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @AES_INT_DATARDY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %30
  %54 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %54, i32 0, i32 2
  %56 = bitcast {}** %55 to i32 (%struct.atmel_aes_dev*)**
  store i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_data, i32 (%struct.atmel_aes_dev*)** %56, align 8
  %57 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %58 = load i32, i32* @AES_IER, align 4
  %59 = load i32, i32* @AES_INT_DATARDY, align 4
  %60 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @EINPROGRESS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %152

63:                                               ; preds = %30
  br label %25

64:                                               ; preds = %25
  %65 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %74 = call i32 @atmel_aes_gcm_tag_init(%struct.atmel_aes_dev* %73)
  store i32 %74, i32* %2, align 4
  br label %152

75:                                               ; preds = %64
  %76 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %80 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %83 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %78, i32 %81, i32 %84)
  store %struct.scatterlist* %85, %struct.scatterlist** %7, align 8
  %86 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %87 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %90 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %75
  %94 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  br label %106

95:                                               ; preds = %75
  %96 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %100 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %103 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %95, %93
  %107 = phi %struct.scatterlist* [ %94, %93 ], [ %105, %95 ]
  store %struct.scatterlist* %107, %struct.scatterlist** %8, align 8
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %106
  %111 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %112 = load i32, i32* @AES_MR, align 4
  %113 = call i32 @atmel_aes_read(%struct.atmel_aes_dev* %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* @AES_MR_SMOD_MASK, align 4
  %115 = load i32, i32* @AES_MR_DUALBUFF, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @AES_MR_SMOD_IDATAR0, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %124 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %110
  %129 = load i32, i32* @AES_MR_DUALBUFF, align 4
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %128, %110
  %133 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %134 = load i32, i32* @AES_MR, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %133, i32 %134, i32 %135)
  %137 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %138 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %139 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %140 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %141 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @atmel_aes_dma_start(%struct.atmel_aes_dev* %137, %struct.scatterlist* %138, %struct.scatterlist* %139, i64 %142, i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_tag_init)
  store i32 %143, i32* %2, align 4
  br label %152

144:                                              ; preds = %106
  %145 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %146 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %147 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %148 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %149 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @atmel_aes_cpu_start(%struct.atmel_aes_dev* %145, %struct.scatterlist* %146, %struct.scatterlist* %147, i64 %150, i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_tag_init)
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %144, %132, %72, %53
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local %struct.aead_request* @aead_request_cast(i32) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_IDATAR(i32) #1

declare dso_local i32 @atmel_aes_read(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @atmel_aes_write(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atmel_aes_gcm_tag_init(%struct.atmel_aes_dev*) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, i32, i32) #1

declare dso_local i32 @atmel_aes_dma_start(%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64, i32 (%struct.atmel_aes_dev*)*) #1

declare dso_local i32 @atmel_aes_cpu_start(%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64, i32 (%struct.atmel_aes_dev*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
