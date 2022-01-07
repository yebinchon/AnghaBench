; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_config_ccm_adata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_config_ccm_adata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32*, i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32 }
%struct.device = type { i32 }
%struct.aead_req_ctx = type { i32*, i32*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CCM_B0_OFFSET = common dso_local global i32 0, align 4
@CCM_A0_OFFSET = common dso_local global i32 0, align 4
@CCM_CTR_COUNT_0_OFFSET = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"illegal iv value %X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"message len overflow detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @config_ccm_adata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_ccm_adata(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.cc_aead_ctx*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.aead_req_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %17 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %16)
  store %struct.crypto_aead* %17, %struct.crypto_aead** %4, align 8
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %19 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %18)
  store %struct.cc_aead_ctx* %19, %struct.cc_aead_ctx** %5, align 8
  %20 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.device* @drvdata_to_dev(i32 %22)
  store %struct.device* %23, %struct.device** %6, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %25 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %24)
  store %struct.aead_req_ctx* %25, %struct.aead_req_ctx** %7, align 8
  %26 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %27 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @CCM_B0_OFFSET, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %11, align 8
  %42 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @CCM_A0_OFFSET, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %12, align 8
  %48 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @CCM_CTR_COUNT_0_OFFSET, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %13, align 8
  %54 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %1
  %61 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %62 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  br label %72

64:                                               ; preds = %1
  %65 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %66 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %67, %70
  br label %72

72:                                               ; preds = %64, %60
  %73 = phi i32 [ %63, %60 ], [ %71, %64 ]
  store i32 %73, i32* %14, align 4
  %74 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %78 = call i32 @memset(i32* %76, i32 0, i32 %77)
  %79 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = mul nsw i32 %82, 3
  %84 = call i32 @memset(i32* %81, i32 0, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %90, label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  %89 = icmp ugt i32 %88, 8
  br i1 %89, label %90, label %100

90:                                               ; preds = %87, %72
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %93 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %177

100:                                              ; preds = %87
  %101 = load i32*, i32** %11, align 8
  %102 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %103 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %106 = call i32 @memcpy(i32* %101, i32* %104, i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = sub i32 %107, 2
  %109 = udiv i32 %108, 2
  %110 = mul i32 8, %109
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %115 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %100
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, 64
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %118, %100
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 16
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @set_msg_len(i32* %128, i32 %129, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %122
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %2, align 4
  br label %177

138:                                              ; preds = %122
  %139 = load i32*, i32** %12, align 8
  %140 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %141 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @format_ccm_a0(i32* %139, i64 %142)
  %144 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %145 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  %146 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %147 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 15
  %150 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %151 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  %156 = sub i64 0, %155
  %157 = getelementptr inbounds i32, i32* %149, i64 %156
  %158 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %159 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, 1
  %164 = call i32 @memset(i32* %157, i32 0, i32 %163)
  %165 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %166 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 15
  store i32 1, i32* %168, align 4
  %169 = load i32*, i32** %13, align 8
  %170 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %171 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %174 = call i32 @memcpy(i32* %169, i32* %172, i32 %173)
  %175 = load i32*, i32** %13, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 15
  store i32 0, i32* %176, align 4
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %138, %134, %90
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_msg_len(i32*, i32, i32) #1

declare dso_local i32 @format_ccm_a0(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
