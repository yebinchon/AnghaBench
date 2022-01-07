; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-des3.c_ccp_des3_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-des3.c_ccp_des3_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.ccp_des3_req_ctx = type { %struct.TYPE_12__, i32, %struct.scatterlist }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, %struct.scatterlist*, i64, i32*, i32, i32 }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CCP_DES3_MODE_ECB = common dso_local global i64 0, align 8
@CCP_DES3_MODE_CBC = common dso_local global i64 0, align 8
@DES3_EDE_BLOCK_SIZE = common dso_local global i32 0, align 4
@CCP_ENGINE_DES3 = common dso_local global i32 0, align 4
@CCP_DES3_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@CCP_DES3_ACTION_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @ccp_des3_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_des3_crypt(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccp_ctx*, align 8
  %7 = alloca %struct.ccp_des3_req_ctx*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %12 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ccp_ctx* @crypto_tfm_ctx(i32 %14)
  store %struct.ccp_ctx* %15, %struct.ccp_ctx** %6, align 8
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %17 = call %struct.ccp_des3_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %16)
  store %struct.ccp_des3_req_ctx* %17, %struct.ccp_des3_req_ctx** %7, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %194

27:                                               ; preds = %2
  %28 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CCP_DES3_MODE_ECB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CCP_DES3_MODE_CBC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35, %27
  %44 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %45 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DES3_EDE_BLOCK_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %194

54:                                               ; preds = %43, %35
  %55 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CCP_DES3_MODE_ECB, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %54
  %63 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %64 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %194

70:                                               ; preds = %62
  %71 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %75 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DES3_EDE_BLOCK_SIZE, align 4
  %78 = call i32 @memcpy(i32 %73, i32 %76, i32 %77)
  %79 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %79, i32 0, i32 2
  store %struct.scatterlist* %80, %struct.scatterlist** %8, align 8
  %81 = load i32, i32* @DES3_EDE_BLOCK_SIZE, align 4
  store i32 %81, i32* %9, align 4
  %82 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %83 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %84 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @sg_init_one(%struct.scatterlist* %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %70, %54
  %89 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %90 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %89, i32 0, i32 0
  %91 = call i32 @memset(%struct.TYPE_12__* %90, i32 0, i32 64)
  %92 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  %96 = load i32, i32* @CCP_ENGINE_DES3, align 4
  %97 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %98 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %106 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 9
  store i32 %104, i32* %109, align 4
  %110 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %111 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %116 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i64 %114, i64* %119, align 8
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %88
  %123 = load i32, i32* @CCP_DES3_ACTION_ENCRYPT, align 4
  br label %126

124:                                              ; preds = %88
  %125 = load i32, i32* @CCP_DES3_ACTION_DECRYPT, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %129 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 8
  store i32 %127, i32* %132, align 8
  %133 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %134 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %138 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 7
  store i32* %136, i32** %141, align 8
  %142 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %143 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %148 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 6
  store i64 %146, i64* %151, align 8
  %152 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %153 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %154 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 5
  store %struct.scatterlist* %152, %struct.scatterlist** %157, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  store i32 %158, i32* %163, align 8
  %164 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %165 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %168 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  store i32 %166, i32* %171, align 4
  %172 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %173 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %176 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  store i32 %174, i32* %179, align 4
  %180 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %181 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %184 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  store i32 %182, i32* %187, align 8
  %188 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %189 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %188, i32 0, i32 1
  %190 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %7, align 8
  %191 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %190, i32 0, i32 0
  %192 = call i32 @ccp_crypto_enqueue_request(%struct.TYPE_13__* %189, %struct.TYPE_12__* %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %126, %67, %51, %24
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.ccp_des3_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ccp_crypto_enqueue_request(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
