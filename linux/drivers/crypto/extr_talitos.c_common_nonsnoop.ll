; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_common_nonsnoop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_common_nonsnoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32, i32, i64, i64, i32, i32, %struct.talitos_desc }
%struct.talitos_desc = type { i32* }
%struct.ablkcipher_request = type { i32, i64, i64 }
%struct.device = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.talitos_ctx = type { i32, i32, i32, i32, %struct.device* }
%struct.talitos_private = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.talitos_edesc*, %struct.ablkcipher_request*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*)* @common_nonsnoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_nonsnoop(%struct.talitos_edesc* %0, %struct.ablkcipher_request* %1, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %2) #0 {
  %4 = alloca %struct.talitos_edesc*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, align 8
  %7 = alloca %struct.crypto_ablkcipher*, align 8
  %8 = alloca %struct.talitos_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.talitos_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.talitos_private*, align 8
  %17 = alloca i32, align 4
  store %struct.talitos_edesc* %0, %struct.talitos_edesc** %4, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %5, align 8
  store void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %2, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %6, align 8
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %19 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %18)
  store %struct.crypto_ablkcipher* %19, %struct.crypto_ablkcipher** %7, align 8
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %21 = call %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %20)
  store %struct.talitos_ctx* %21, %struct.talitos_ctx** %8, align 8
  %22 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %22, i32 0, i32 4
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %9, align 8
  %25 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %26 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %25, i32 0, i32 6
  store %struct.talitos_desc* %26, %struct.talitos_desc** %10, align 8
  %27 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %28 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %31 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %30)
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %32)
  store %struct.talitos_private* %33, %struct.talitos_private** %16, align 8
  %34 = load %struct.talitos_private*, %struct.talitos_private** %16, align 8
  %35 = call i32 @has_ftr_sec1(%struct.talitos_private* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %37 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %41 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @to_talitos_ptr(i32* %39, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %47 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @to_talitos_ptr(i32* %49, i32 %52, i32 %55, i32 %56)
  %58 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %59 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %3
  br label %64

63:                                               ; preds = %3
  br label %64

64:                                               ; preds = %63, %62
  %65 = phi i64 [ %60, %62 ], [ 1, %63 ]
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %74 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %78 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @sg_copy_to_buffer(i64 %75, i32 %76, i32 %79, i32 %80)
  br label %102

82:                                               ; preds = %69, %64
  %83 = load %struct.device*, %struct.device** %9, align 8
  %84 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %85 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %89 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %92 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %99

97:                                               ; preds = %82
  %98 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = call i32 @dma_map_sg(%struct.device* %83, i64 %86, i32 %87, i32 %100)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %99, %72
  %103 = load %struct.device*, %struct.device** %9, align 8
  %104 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %105 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %109 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %110 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @talitos_sg_map(%struct.device* %103, i64 %106, i32 %107, %struct.talitos_edesc* %108, i32* %112, i32 %113, i32 0, i64 0)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  store i32 1, i32* %15, align 4
  br label %118

118:                                              ; preds = %117, %102
  %119 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %120 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %123 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %118
  %127 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %128 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %133

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %131
  %134 = phi i64 [ %129, %131 ], [ 1, %132 ]
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %13, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %149

141:                                              ; preds = %138, %133
  %142 = load %struct.device*, %struct.device** %9, align 8
  %143 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %144 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %148 = call i32 @dma_map_sg(%struct.device* %142, i64 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %141, %138
  br label %150

150:                                              ; preds = %149, %118
  %151 = load %struct.device*, %struct.device** %9, align 8
  %152 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %153 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %157 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %158 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %163 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  %166 = call i32 @talitos_sg_map(%struct.device* %151, i64 %154, i32 %155, %struct.talitos_edesc* %156, i32* %160, i32 %161, i32 0, i64 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %150
  store i32 1, i32* %15, align 4
  br label %170

170:                                              ; preds = %169, %150
  %171 = load %struct.device*, %struct.device** %9, align 8
  %172 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %173 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %178 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %181 = call i32 @map_single_talitos_ptr(%struct.device* %171, i32* %175, i32 %176, i32 %179, i32 %180)
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %170
  %185 = load %struct.device*, %struct.device** %9, align 8
  %186 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %187 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %190 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %193 = call i32 @dma_sync_single_for_device(%struct.device* %185, i32 %188, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %184, %170
  %195 = load %struct.device*, %struct.device** %9, align 8
  %196 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %197 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.talitos_desc*, %struct.talitos_desc** %10, align 8
  %200 = load void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %6, align 8
  %201 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %202 = call i32 @talitos_submit(%struct.device* %195, i32 %198, %struct.talitos_desc* %199, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %200, %struct.ablkcipher_request* %201)
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @EINPROGRESS, align 4
  %205 = sub nsw i32 0, %204
  %206 = icmp ne i32 %203, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %194
  %208 = load %struct.device*, %struct.device** %9, align 8
  %209 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %210 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %211 = call i32 @common_nonsnoop_unmap(%struct.device* %208, %struct.talitos_edesc* %209, %struct.ablkcipher_request* %210)
  %212 = load %struct.talitos_edesc*, %struct.talitos_edesc** %4, align 8
  %213 = call i32 @kfree(%struct.talitos_edesc* %212)
  br label %214

214:                                              ; preds = %207, %194
  %215 = load i32, i32* %14, align 4
  ret i32 %215
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @to_talitos_ptr(i32*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i64, i32, i32, i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @talitos_sg_map(%struct.device*, i64, i32, %struct.talitos_edesc*, i32*, i32, i32, i64) #1

declare dso_local i32 @map_single_talitos_ptr(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @talitos_submit(%struct.device*, i32, %struct.talitos_desc*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, %struct.ablkcipher_request*) #1

declare dso_local i32 @common_nonsnoop_unmap(%struct.device*, %struct.talitos_edesc*, %struct.ablkcipher_request*) #1

declare dso_local i32 @kfree(%struct.talitos_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
