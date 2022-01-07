; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aead_request = type { i32, i32, i64, i64 }
%struct.chcr_aead_reqctx = type { i64, i64, i64, i32 }
%struct.crypto_aead = type { i32 }

@IV = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chcr_aead_dma_map(%struct.device* %0, %struct.aead_request* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.chcr_aead_reqctx*, align 8
  %10 = alloca %struct.crypto_aead*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.aead_request* %1, %struct.aead_request** %6, align 8
  store i16 %2, i16* %7, align 2
  %13 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %14 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.chcr_aead_reqctx* %14, %struct.chcr_aead_reqctx** %9, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %10, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %18 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %20 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %23 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %21, %24
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = sub i32 0, %30
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %33, %32 ]
  %36 = add i32 %25, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %38 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %34
  store i32 0, i32* %4, align 4
  br label %157

45:                                               ; preds = %41
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %48 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* @IV, align 8
  %51 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %52 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %56 = call i64 @dma_map_single(%struct.device* %46, i32 %49, i64 %54, i32 %55)
  %57 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %58 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %61 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @dma_mapping_error(%struct.device* %59, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %45
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %157

68:                                               ; preds = %45
  %69 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %70 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %75 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IV, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %80 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %84

81:                                               ; preds = %68
  %82 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %83 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %73
  %85 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %86 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %89 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %84
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %98 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @sg_nents(i64 %99)
  %101 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %102 = call i32 @dma_map_sg(%struct.device* %93, i64 %96, i32 %100, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %92
  br label %147

106:                                              ; preds = %92
  br label %146

107:                                              ; preds = %84
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %110 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %113 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @sg_nents(i64 %114)
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i32 @dma_map_sg(%struct.device* %108, i64 %111, i32 %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %107
  br label %147

121:                                              ; preds = %107
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %124 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %127 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @sg_nents(i64 %128)
  %130 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %131 = call i32 @dma_map_sg(%struct.device* %122, i64 %125, i32 %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %121
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %137 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %140 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @sg_nents(i64 %141)
  %143 = load i32, i32* @DMA_TO_DEVICE, align 4
  %144 = call i32 @dma_unmap_sg(%struct.device* %135, i64 %138, i32 %142, i32 %143)
  br label %147

145:                                              ; preds = %121
  br label %146

146:                                              ; preds = %145, %106
  store i32 0, i32* %4, align 4
  br label %157

147:                                              ; preds = %134, %120, %105
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %9, align 8
  %150 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @IV, align 8
  %153 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %154 = call i32 @dma_unmap_single(%struct.device* %148, i64 %151, i64 %152, i32 %153)
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %147, %146, %65, %44
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i64 @dma_map_single(%struct.device*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @sg_nents(i64) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
