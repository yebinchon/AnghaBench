; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_xcbc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_xcbc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CC_AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@DRV_CIPHER_XCBC_MAC = common dso_local global i32 0, align 4
@DESC_DIRECTION_ENCRYPT_ENCRYPT = common dso_local global i32 0, align 4
@CC_AES_128_BIT_KEY_SIZE = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE1 = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_set_xcbc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_set_xcbc_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %7, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %13 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.cc_aead_ctx* %13, %struct.cc_aead_ctx** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %16, i64 %18
  %20 = call i32 @hw_desc_init(%struct.cc_hw_desc* %19)
  %21 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %21, i64 %23
  %25 = load i32, i32* @CC_AES_BLOCK_SIZE, align 4
  %26 = call i32 @set_din_const(%struct.cc_hw_desc* %24, i32 0, i32 %25)
  %27 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %27, i64 %29
  %31 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %32 = call i32 @set_setup_mode(%struct.cc_hw_desc* %30, i32 %31)
  %33 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %35
  %37 = load i32, i32* @DRV_CIPHER_XCBC_MAC, align 4
  %38 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %36, i32 %37)
  %39 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %39, i64 %41
  %43 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %44 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %42, i32 %43)
  %45 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %45, i64 %47
  %49 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %50 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %48, i32 %49)
  %51 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %51, i64 %53
  %55 = load i32, i32* @S_DIN_to_HASH, align 4
  %56 = call i32 @set_flow_mode(%struct.cc_hw_desc* %54, i32 %55)
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %57, i64 %59
  %61 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %60)
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %64, i64 %66
  %68 = call i32 @hw_desc_init(%struct.cc_hw_desc* %67)
  %69 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %69, i64 %71
  %73 = load i32, i32* @DMA_DLLI, align 4
  %74 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @AES_KEYSIZE_128, align 4
  %80 = load i32, i32* @NS_BIT, align 4
  %81 = call i32 @set_din_type(%struct.cc_hw_desc* %72, i32 %73, i64 %78, i32 %79, i32 %80)
  %82 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %82, i64 %84
  %86 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %87 = call i32 @set_setup_mode(%struct.cc_hw_desc* %85, i32 %86)
  %88 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %88, i64 %90
  %92 = load i32, i32* @DRV_CIPHER_XCBC_MAC, align 4
  %93 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %91, i32 %92)
  %94 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %94, i64 %96
  %98 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %99 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %97, i32 %98)
  %100 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %100, i64 %102
  %104 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %105 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %103, i32 %104)
  %106 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %106, i64 %108
  %110 = load i32, i32* @S_DIN_to_HASH, align 4
  %111 = call i32 @set_flow_mode(%struct.cc_hw_desc* %109, i32 %110)
  %112 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %112, i64 %114
  %116 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %115)
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %119, i64 %121
  %123 = call i32 @hw_desc_init(%struct.cc_hw_desc* %122)
  %124 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %124, i64 %126
  %128 = load i32, i32* @DMA_DLLI, align 4
  %129 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %130 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @AES_KEYSIZE_128, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  %137 = load i32, i32* @AES_KEYSIZE_128, align 4
  %138 = load i32, i32* @NS_BIT, align 4
  %139 = call i32 @set_din_type(%struct.cc_hw_desc* %127, i32 %128, i64 %136, i32 %137, i32 %138)
  %140 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %140, i64 %142
  %144 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %145 = call i32 @set_setup_mode(%struct.cc_hw_desc* %143, i32 %144)
  %146 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %146, i64 %148
  %150 = load i32, i32* @DRV_CIPHER_XCBC_MAC, align 4
  %151 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %149, i32 %150)
  %152 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %152, i64 %154
  %156 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %157 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %155, i32 %156)
  %158 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %159 = load i32, i32* %9, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %158, i64 %160
  %162 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %163 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %161, i32 %162)
  %164 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %165 = load i32, i32* %9, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %164, i64 %166
  %168 = load i32, i32* @S_DIN_to_HASH, align 4
  %169 = call i32 @set_flow_mode(%struct.cc_hw_desc* %167, i32 %168)
  %170 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %171 = load i32, i32* %9, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %170, i64 %172
  %174 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %173)
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %9, align 4
  %177 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %178 = load i32, i32* %9, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %177, i64 %179
  %181 = call i32 @hw_desc_init(%struct.cc_hw_desc* %180)
  %182 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %183 = load i32, i32* %9, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %182, i64 %184
  %186 = load i32, i32* @DMA_DLLI, align 4
  %187 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %188 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @AES_KEYSIZE_128, align 4
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %191, %194
  %196 = load i32, i32* @AES_KEYSIZE_128, align 4
  %197 = load i32, i32* @NS_BIT, align 4
  %198 = call i32 @set_din_type(%struct.cc_hw_desc* %185, i32 %186, i64 %195, i32 %196, i32 %197)
  %199 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %200 = load i32, i32* %9, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %199, i64 %201
  %203 = load i32, i32* @SETUP_LOAD_STATE2, align 4
  %204 = call i32 @set_setup_mode(%struct.cc_hw_desc* %202, i32 %203)
  %205 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %206 = load i32, i32* %9, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %205, i64 %207
  %209 = load i32, i32* @DRV_CIPHER_XCBC_MAC, align 4
  %210 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %208, i32 %209)
  %211 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %212 = load i32, i32* %9, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %211, i64 %213
  %215 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %216 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %214, i32 %215)
  %217 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %218 = load i32, i32* %9, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %217, i64 %219
  %221 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %222 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %220, i32 %221)
  %223 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %224 = load i32, i32* %9, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %223, i64 %225
  %227 = load i32, i32* @S_DIN_to_HASH, align 4
  %228 = call i32 @set_flow_mode(%struct.cc_hw_desc* %226, i32 %227)
  %229 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %230 = load i32, i32* %9, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %229, i64 %231
  %233 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %232)
  %234 = load i32, i32* %9, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load i32*, i32** %6, align 8
  store i32 %236, i32* %237, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_aes_not_hash_mode(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
