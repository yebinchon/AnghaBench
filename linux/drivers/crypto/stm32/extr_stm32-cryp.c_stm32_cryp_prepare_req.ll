; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_prepare_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_prepare_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i64 }
%struct.aead_request = type { i64, i32, i32, i64 }
%struct.stm32_cryp_ctx = type { %struct.stm32_cryp* }
%struct.stm32_cryp = type { i32, i32, i32, %struct.aead_request*, i64, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.ablkcipher_request*, %struct.stm32_cryp_ctx*, i32 }
%struct.stm32_cryp_reqctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FLG_MODE_MASK = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Cannot get in_sg_len\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot get out_sg_len\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, %struct.aead_request*)* @stm32_cryp_prepare_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_prepare_req(%struct.ablkcipher_request* %0, %struct.aead_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.stm32_cryp_ctx*, align 8
  %7 = alloca %struct.stm32_cryp*, align 8
  %8 = alloca %struct.stm32_cryp_reqctx*, align 8
  %9 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %11 = icmp ne %struct.ablkcipher_request* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %14 = icmp ne %struct.aead_request* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %286

18:                                               ; preds = %12, %2
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %20 = icmp ne %struct.ablkcipher_request* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %23 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %22)
  %24 = call %struct.stm32_cryp_ctx* @crypto_ablkcipher_ctx(i32 %23)
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %27 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %26)
  %28 = call %struct.stm32_cryp_ctx* @crypto_aead_ctx(i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi %struct.stm32_cryp_ctx* [ %24, %21 ], [ %28, %25 ]
  store %struct.stm32_cryp_ctx* %30, %struct.stm32_cryp_ctx** %6, align 8
  %31 = load %struct.stm32_cryp_ctx*, %struct.stm32_cryp_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.stm32_cryp_ctx, %struct.stm32_cryp_ctx* %31, i32 0, i32 0
  %33 = load %struct.stm32_cryp*, %struct.stm32_cryp** %32, align 8
  store %struct.stm32_cryp* %33, %struct.stm32_cryp** %7, align 8
  %34 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %35 = icmp ne %struct.stm32_cryp* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %286

39:                                               ; preds = %29
  %40 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %41 = icmp ne %struct.ablkcipher_request* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %44 = call %struct.stm32_cryp_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %43)
  br label %48

45:                                               ; preds = %39
  %46 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %47 = call %struct.stm32_cryp_reqctx* @aead_request_ctx(%struct.aead_request* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi %struct.stm32_cryp_reqctx* [ %44, %42 ], [ %47, %45 ]
  store %struct.stm32_cryp_reqctx* %49, %struct.stm32_cryp_reqctx** %8, align 8
  %50 = load i32, i32* @FLG_MODE_MASK, align 4
  %51 = load %struct.stm32_cryp_reqctx*, %struct.stm32_cryp_reqctx** %8, align 8
  %52 = getelementptr inbounds %struct.stm32_cryp_reqctx, %struct.stm32_cryp_reqctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %56 = load %struct.stm32_cryp_ctx*, %struct.stm32_cryp_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.stm32_cryp_ctx, %struct.stm32_cryp_ctx* %56, i32 0, i32 0
  store %struct.stm32_cryp* %55, %struct.stm32_cryp** %57, align 8
  %58 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %59 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FLG_MODE_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load %struct.stm32_cryp_reqctx*, %struct.stm32_cryp_reqctx** %8, align 8
  %65 = getelementptr inbounds %struct.stm32_cryp_reqctx, %struct.stm32_cryp_reqctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %69 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %71 = call i64 @is_aes(%struct.stm32_cryp* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %48
  %74 = load i32, i32* @AES_BLOCK_SIZE, align 4
  br label %77

75:                                               ; preds = %48
  %76 = load i32, i32* @DES_BLOCK_SIZE, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %80 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %79, i32 0, i32 17
  store i32 %78, i32* %80, align 8
  %81 = load %struct.stm32_cryp_ctx*, %struct.stm32_cryp_ctx** %6, align 8
  %82 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %83 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %82, i32 0, i32 16
  store %struct.stm32_cryp_ctx* %81, %struct.stm32_cryp_ctx** %83, align 8
  %84 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %85 = icmp ne %struct.ablkcipher_request* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %77
  %87 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %88 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %89 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %88, i32 0, i32 15
  store %struct.ablkcipher_request* %87, %struct.ablkcipher_request** %89, align 8
  %90 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %91 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %90, i32 0, i32 3
  store %struct.aead_request* null, %struct.aead_request** %91, align 8
  %92 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %93 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %96 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %95, i32 0, i32 10
  store i64 %94, i64* %96, align 8
  %97 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %98 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %97, i32 0, i32 10
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %101 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  br label %146

102:                                              ; preds = %77
  %103 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %104 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %105 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %104, i32 0, i32 3
  store %struct.aead_request* %103, %struct.aead_request** %105, align 8
  %106 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %107 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %106, i32 0, i32 15
  store %struct.ablkcipher_request* null, %struct.ablkcipher_request** %107, align 8
  %108 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %109 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %108)
  %110 = call i64 @crypto_aead_authsize(i32 %109)
  %111 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %112 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %111, i32 0, i32 14
  store i64 %110, i64* %112, align 8
  %113 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %114 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %117 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %121 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %120, i32 0, i32 10
  store i64 %119, i64* %121, align 8
  %122 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %123 = call i64 @is_encrypt(%struct.stm32_cryp* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %102
  %126 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %127 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %126, i32 0, i32 10
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %130 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %129, i32 0, i32 14
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %134 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  br label %145

135:                                              ; preds = %102
  %136 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %137 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %136, i32 0, i32 10
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %140 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %139, i32 0, i32 14
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  %143 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %144 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %135, %125
  br label %146

146:                                              ; preds = %145, %86
  %147 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %148 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %147, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %151 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %150, i32 0, i32 13
  store i64 %149, i64* %151, align 8
  %152 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %153 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %156 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %155, i32 0, i32 12
  store i64 %154, i64* %156, align 8
  %157 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %158 = icmp ne %struct.ablkcipher_request* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %146
  %160 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %161 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  br label %167

163:                                              ; preds = %146
  %164 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %165 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i32 [ %162, %159 ], [ %166, %163 ]
  %169 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %170 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %172 = icmp ne %struct.ablkcipher_request* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %175 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  br label %181

177:                                              ; preds = %167
  %178 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %179 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi i32 [ %176, %173 ], [ %180, %177 ]
  %183 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %184 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 4
  %185 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %186 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %189 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %188, i32 0, i32 11
  store i32 %187, i32* %189, align 8
  %190 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %191 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %194 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %193, i32 0, i32 10
  %195 = load i64, i64* %194, align 8
  %196 = call i8* @sg_nents_for_len(i32 %192, i64 %195)
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %199 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %201 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %181
  %205 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %206 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dev_err(i32 %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %209 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %210 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %3, align 4
  br label %286

213:                                              ; preds = %181
  %214 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %215 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %218 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = call i8* @sg_nents_for_len(i32 %216, i64 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %223 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %225 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %213
  %229 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %230 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @dev_err(i32 %231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %233 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %234 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  store i32 %236, i32* %3, align 4
  br label %286

237:                                              ; preds = %213
  %238 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %239 = call i32 @stm32_cryp_copy_sgs(%struct.stm32_cryp* %238)
  store i32 %239, i32* %9, align 4
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %3, align 4
  br label %286

244:                                              ; preds = %237
  %245 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %246 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %245, i32 0, i32 8
  %247 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %248 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @scatterwalk_start(i32* %246, i32 %249)
  %251 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %252 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %251, i32 0, i32 5
  %253 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %254 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @scatterwalk_start(i32* %252, i32 %255)
  %257 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %258 = call i64 @is_gcm(%struct.stm32_cryp* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %244
  %261 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %262 = call i64 @is_ccm(%struct.stm32_cryp* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %282

264:                                              ; preds = %260, %244
  %265 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %266 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %265, i32 0, i32 5
  %267 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %268 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %267, i32 0, i32 3
  %269 = load %struct.aead_request*, %struct.aead_request** %268, align 8
  %270 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @scatterwalk_advance(i32* %266, i64 %271)
  %273 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %274 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %273, i32 0, i32 3
  %275 = load %struct.aead_request*, %struct.aead_request** %274, align 8
  %276 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %279 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %280, %277
  store i64 %281, i64* %279, align 8
  br label %282

282:                                              ; preds = %264, %260
  %283 = load %struct.stm32_cryp*, %struct.stm32_cryp** %7, align 8
  %284 = call i32 @stm32_cryp_hw_init(%struct.stm32_cryp* %283)
  store i32 %284, i32* %9, align 4
  %285 = load i32, i32* %9, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %282, %242, %228, %204, %36, %15
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local %struct.stm32_cryp_ctx* @crypto_ablkcipher_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.stm32_cryp_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.stm32_cryp_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.stm32_cryp_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @is_aes(%struct.stm32_cryp*) #1

declare dso_local i64 @crypto_aead_authsize(i32) #1

declare dso_local i64 @is_encrypt(%struct.stm32_cryp*) #1

declare dso_local i8* @sg_nents_for_len(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32_cryp_copy_sgs(%struct.stm32_cryp*) #1

declare dso_local i32 @scatterwalk_start(i32*, i32) #1

declare dso_local i64 @is_gcm(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ccm(%struct.stm32_cryp*) #1

declare dso_local i32 @scatterwalk_advance(i32*, i64) #1

declare dso_local i32 @stm32_cryp_hw_init(%struct.stm32_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
