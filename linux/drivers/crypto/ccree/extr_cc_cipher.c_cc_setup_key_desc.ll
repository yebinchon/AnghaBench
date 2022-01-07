; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_setup_key_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_setup_key_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cipher_req_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.cc_cipher_ctx = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }

@CC_POLICY_PROTECTED_KEY = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@CC_HW_PROTECTED_KEY = common dso_local global i32 0, align 4
@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported cipher mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, %struct.cipher_req_ctx*, i32, %struct.cc_hw_desc*, i32*)* @cc_setup_key_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_setup_key_desc(%struct.crypto_tfm* %0, %struct.cipher_req_ctx* %1, i32 %2, %struct.cc_hw_desc* %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca %struct.cipher_req_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cc_hw_desc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cc_cipher_ctx*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store %struct.cipher_req_ctx* %1, %struct.cipher_req_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cc_hw_desc* %3, %struct.cc_hw_desc** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %20 = call %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %19)
  store %struct.cc_cipher_ctx* %20, %struct.cc_cipher_ctx** %11, align 8
  %21 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %22 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.device* @drvdata_to_dev(i32 %23)
  store %struct.device* %24, %struct.device** %12, align 8
  %25 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %26 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %29 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %36 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %40 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %13, align 4
  switch i32 %42, label %246 [
    i32 134, label %43
    i32 133, label %43
    i32 132, label %43
    i32 129, label %43
    i32 131, label %43
    i32 128, label %172
    i32 130, label %172
    i32 135, label %172
  ]

43:                                               ; preds = %5, %5, %5, %5, %5
  %44 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %44, i64 %47
  %49 = call i32 @hw_desc_init(%struct.cc_hw_desc* %48)
  %50 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %53
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %54, i32 %55)
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %57, i64 %60
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %61, i32 %62)
  %64 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %65 = call i32 @cc_key_type(%struct.crypto_tfm* %64)
  %66 = load i32, i32* @CC_POLICY_PROTECTED_KEY, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %43
  %69 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %69, i64 %72
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %73, i32 %74)
  %76 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %76, i64 %79
  %81 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %82 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @set_cpp_crypto_key(%struct.cc_hw_desc* %80, i32 %84)
  %86 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %87 = call i32 @cc_out_flow_mode(%struct.cc_cipher_ctx* %86)
  store i32 %87, i32* %14, align 4
  br label %161

88:                                               ; preds = %43
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @S_DIN_to_AES, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %135

92:                                               ; preds = %88
  %93 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %94 = call i32 @cc_key_type(%struct.crypto_tfm* %93)
  %95 = load i32, i32* @CC_HW_PROTECTED_KEY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %98, i64 %101
  %103 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %104 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @set_hw_crypto_key(%struct.cc_hw_desc* %102, i32 %106)
  br label %127

108:                                              ; preds = %92
  %109 = load i32, i32* %17, align 4
  %110 = icmp eq i32 %109, 24
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %17, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %18, align 4
  %117 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %117, i64 %120
  %122 = load i32, i32* @DMA_DLLI, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @NS_BIT, align 4
  %126 = call i32 @set_din_type(%struct.cc_hw_desc* %121, i32 %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %115, %97
  %128 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %128, i64 %131
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %132, i32 %133)
  br label %153

135:                                              ; preds = %88
  %136 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %136, i64 %139
  %141 = load i32, i32* @DMA_DLLI, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* @NS_BIT, align 4
  %145 = call i32 @set_din_type(%struct.cc_hw_desc* %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %146, i64 %149
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @set_key_size_des(%struct.cc_hw_desc* %150, i32 %151)
  br label %153

153:                                              ; preds = %135, %127
  %154 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %154, i64 %157
  %159 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %160 = call i32 @set_setup_mode(%struct.cc_hw_desc* %158, i32 %159)
  br label %161

161:                                              ; preds = %153, %68
  %162 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %162, i64 %165
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @set_flow_mode(%struct.cc_hw_desc* %166, i32 %167)
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %250

172:                                              ; preds = %5, %5, %5
  %173 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %173, i64 %176
  %178 = call i32 @hw_desc_init(%struct.cc_hw_desc* %177)
  %179 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %179, i64 %182
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %183, i32 %184)
  %186 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %186, i64 %189
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %190, i32 %191)
  %193 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %194 = call i32 @cc_key_type(%struct.crypto_tfm* %193)
  %195 = load i32, i32* @CC_HW_PROTECTED_KEY, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %172
  %198 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %198, i64 %201
  %203 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %204 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @set_hw_crypto_key(%struct.cc_hw_desc* %202, i32 %206)
  br label %220

208:                                              ; preds = %172
  %209 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %209, i64 %212
  %214 = load i32, i32* @DMA_DLLI, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %17, align 4
  %217 = udiv i32 %216, 2
  %218 = load i32, i32* @NS_BIT, align 4
  %219 = call i32 @set_din_type(%struct.cc_hw_desc* %213, i32 %214, i32 %215, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %208, %197
  %221 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %221, i64 %224
  %226 = load i32, i32* %17, align 4
  %227 = udiv i32 %226, 2
  %228 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %225, i32 %227)
  %229 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %230 = load i32*, i32** %10, align 8
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %229, i64 %232
  %234 = load i32, i32* %14, align 4
  %235 = call i32 @set_flow_mode(%struct.cc_hw_desc* %233, i32 %234)
  %236 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %236, i64 %239
  %241 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %242 = call i32 @set_setup_mode(%struct.cc_hw_desc* %240, i32 %241)
  %243 = load i32*, i32** %10, align 8
  %244 = load i32, i32* %243, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %243, align 4
  br label %250

246:                                              ; preds = %5
  %247 = load %struct.device*, %struct.device** %12, align 8
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @dev_err(%struct.device* %247, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %246, %220, %161
  ret void
}

declare dso_local %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_key_type(%struct.crypto_tfm*) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cpp_crypto_key(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_out_flow_mode(%struct.cc_cipher_ctx*) #1

declare dso_local i32 @set_hw_crypto_key(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_key_size_des(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
