; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_common_nonsnoop_hash_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_common_nonsnoop_hash_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_edesc = type { %struct.talitos_desc, i64, i32, i64 }
%struct.talitos_desc = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ahash_request = type { i32 }
%struct.talitos_ahash_req_ctx = type { i64, i64 }
%struct.talitos_private = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@TALITOS_DESC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.talitos_edesc*, %struct.ahash_request*)* @common_nonsnoop_hash_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_nonsnoop_hash_unmap(%struct.device* %0, %struct.talitos_edesc* %1, %struct.ahash_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.talitos_edesc*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %8 = alloca %struct.talitos_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.talitos_desc*, align 8
  %11 = alloca %struct.talitos_desc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.talitos_edesc* %1, %struct.talitos_edesc** %5, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %6, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %13 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.talitos_ahash_req_ctx* %13, %struct.talitos_ahash_req_ctx** %7, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %14)
  store %struct.talitos_private* %15, %struct.talitos_private** %8, align 8
  %16 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %17 = call i32 @has_ftr_sec1(%struct.talitos_private* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %19 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %18, i32 0, i32 0
  store %struct.talitos_desc* %19, %struct.talitos_desc** %10, align 8
  %20 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %21 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %24 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = inttoptr i64 %26 to %struct.talitos_desc*
  store %struct.talitos_desc* %27, %struct.talitos_desc** %11, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %30 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 5
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = call i32 @unmap_single_talitos_ptr(%struct.device* %28, %struct.TYPE_3__* %33, i32 %34)
  %36 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %37 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %3
  %41 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %42 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.talitos_desc*, %struct.talitos_desc** %11, align 8
  %48 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %46, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %40
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.talitos_desc*, %struct.talitos_desc** %11, align 8
  %57 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 5
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = call i32 @unmap_single_talitos_ptr(%struct.device* %55, %struct.TYPE_3__* %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %40, %3
  %63 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %70 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @talitos_sg_unmap(%struct.device* %68, %struct.talitos_edesc* %69, i64 %72, i32* null, i32 0, i32 0)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %76 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 1
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @from_talitos_ptr_len(%struct.TYPE_3__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %86 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 1
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @unmap_single_talitos_ptr(%struct.device* %84, %struct.TYPE_3__* %89, i32 %90)
  br label %106

92:                                               ; preds = %74
  %93 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %94 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.talitos_desc*, %struct.talitos_desc** %11, align 8
  %100 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 1
  %103 = load i32, i32* @DMA_TO_DEVICE, align 4
  %104 = call i32 @unmap_single_talitos_ptr(%struct.device* %98, %struct.TYPE_3__* %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %92
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %7, align 8
  %111 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %117 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 3
  %120 = load i32, i32* @DMA_TO_DEVICE, align 4
  %121 = call i32 @unmap_single_talitos_ptr(%struct.device* %115, %struct.TYPE_3__* %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %109, %106
  %123 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %124 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %130 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %133 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %136 = call i32 @dma_unmap_single(%struct.device* %128, i32 %131, i64 %134, i32 %135)
  br label %137

137:                                              ; preds = %127, %122
  %138 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %139 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %146 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @be32_to_cpu(i64 %148)
  %150 = load i64, i64* @TALITOS_DESC_SIZE, align 8
  %151 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %152 = call i32 @dma_unmap_single(%struct.device* %144, i32 %149, i64 %150, i32 %151)
  br label %153

153:                                              ; preds = %143, %137
  ret void
}

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @unmap_single_talitos_ptr(%struct.device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @talitos_sg_unmap(%struct.device*, %struct.talitos_edesc*, i64, i32*, i32, i32) #1

declare dso_local i64 @from_talitos_ptr_len(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
