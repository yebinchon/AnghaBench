; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ipsec_esp_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ipsec_esp_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_edesc = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.talitos_ptr* }
%struct.talitos_ptr = type { i32 }
%struct.aead_request = type { i32, i64, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32 }

@DESC_HDR_TYPE_IPSEC_ESP = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.talitos_edesc*, %struct.aead_request*, i32)* @ipsec_esp_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_esp_unmap(%struct.device* %0, %struct.talitos_edesc* %1, %struct.aead_request* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.talitos_edesc*, align 8
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.talitos_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.talitos_ptr*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.talitos_edesc* %1, %struct.talitos_edesc** %6, align 8
  store %struct.aead_request* %2, %struct.aead_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %9, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %20 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %19)
  store %struct.talitos_ctx* %20, %struct.talitos_ctx** %10, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %22 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %24 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 0, %30 ], [ %32, %31 ]
  %35 = sub i32 %27, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %37 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DESC_HDR_TYPE_IPSEC_ESP, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %43 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.talitos_ptr*, %struct.talitos_ptr** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 2, i32 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %45, i64 %50
  store %struct.talitos_ptr* %51, %struct.talitos_ptr** %15, align 8
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %33
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %57 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.talitos_ptr*, %struct.talitos_ptr** %58, align 8
  %60 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %59, i64 6
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @unmap_single_talitos_ptr(%struct.device* %55, %struct.talitos_ptr* %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %33
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.talitos_ptr*, %struct.talitos_ptr** %15, align 8
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @unmap_single_talitos_ptr(%struct.device* %64, %struct.talitos_ptr* %65, i32 %66)
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %70 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %71 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %74 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %76, %77
  %79 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %80 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @talitos_sg_unmap(%struct.device* %68, %struct.talitos_edesc* %69, i32 %72, i32 %75, i32 %78, i64 %81)
  %83 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %84 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %63
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %90 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %93 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %96 = call i32 @dma_unmap_single(%struct.device* %88, i32 %91, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %63
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %97
  %101 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %102 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %105
  %108 = phi i32 [ %103, %105 ], [ 1, %106 ]
  store i32 %108, i32* %16, align 4
  %109 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %110 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %114 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %118 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = zext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = sub nsw i64 %122, %124
  %126 = call i32 @sg_pcopy_to_buffer(i32 %111, i32 %112, i32 %115, i32 %116, i64 %125)
  br label %127

127:                                              ; preds = %107, %97
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @unmap_single_talitos_ptr(%struct.device*, %struct.talitos_ptr*, i32) #1

declare dso_local i32 @talitos_sg_unmap(%struct.device*, %struct.talitos_edesc*, i32, i32, i32, i64) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
