; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_map_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_map_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_req_ctx = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.cc_hash_ctx = type { i32, i64, i64, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Mapping digest len %d B at va=%pK for DMA failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Mapped digest %d B at va=%pK to dma=%pad\0A\00", align 1
@DRV_CIPHER_XCBC_MAC = common dso_local global i64 0, align 8
@HASH_MAX_LEN_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Mapping digest len %u B at va=%pK for DMA failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Mapped digest len %u B at va=%pK to dma=%pad\0A\00", align 1
@DRV_HASH_NULL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"Mapping opad digest %d B at va=%pK for DMA failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Mapped opad digest %d B at va=%pK to dma=%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*)* @cc_map_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_map_req(%struct.device* %0, %struct.ahash_req_ctx* %1, %struct.cc_hash_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ahash_req_ctx*, align 8
  %7 = alloca %struct.cc_hash_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ahash_req_ctx* %1, %struct.ahash_req_ctx** %6, align 8
  store %struct.cc_hash_ctx* %2, %struct.cc_hash_ctx** %7, align 8
  %9 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %10 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %20 = call i8* @dma_map_single(%struct.device* %12, i32 %15, i32 %18, i32 %19)
  %21 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @dma_mapping_error(%struct.device* %23, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %172

40:                                               ; preds = %3
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %48, i32 0, i32 0
  %50 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47, i8** %49)
  %51 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DRV_CIPHER_XCBC_MAC, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %40
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HASH_MAX_LEN_SIZE, align 4
  %62 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %63 = call i8* @dma_map_single(%struct.device* %57, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @dma_mapping_error(%struct.device* %66, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %56
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* @HASH_MAX_LEN_SIZE, align 4
  %75 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %76 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77)
  br label %152

79:                                               ; preds = %56
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i32, i32* @HASH_MAX_LEN_SIZE, align 4
  %82 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %85, i32 0, i32 1
  %87 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84, i8** %86)
  br label %88

88:                                               ; preds = %79, %40
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %135

91:                                               ; preds = %88
  %92 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DRV_HASH_NULL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %91
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %100 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %103 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %106 = call i8* @dma_map_single(%struct.device* %98, i32 %101, i32 %104, i32 %105)
  %107 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %108 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %111 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @dma_mapping_error(%struct.device* %109, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %97
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %118 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %121 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %122)
  br label %136

124:                                              ; preds = %97
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %127 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %130 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %133 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %132, i32 0, i32 2
  %134 = call i32 @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %131, i8** %133)
  br label %135

135:                                              ; preds = %124, %91, %88
  store i32 0, i32* %4, align 4
  br label %172

136:                                              ; preds = %115
  %137 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.device*, %struct.device** %5, align 8
  %143 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %144 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* @HASH_MAX_LEN_SIZE, align 4
  %147 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %148 = call i32 @dma_unmap_single(%struct.device* %142, i8* %145, i32 %146, i32 %147)
  %149 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %150 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %149, i32 0, i32 1
  store i8* null, i8** %150, align 8
  br label %151

151:                                              ; preds = %141, %136
  br label %152

152:                                              ; preds = %151, %72
  %153 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %154 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %160 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %163 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %166 = call i32 @dma_unmap_single(%struct.device* %158, i8* %161, i32 %164, i32 %165)
  %167 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %168 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %167, i32 0, i32 0
  store i8* null, i8** %168, align 8
  br label %169

169:                                              ; preds = %157, %152
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %169, %135, %29
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i8* @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8**) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
