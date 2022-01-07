; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_hmac_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_hmac_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32 }
%struct.cc_aead_ctx = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cc_hmac_s }
%struct.cc_hmac_s = type { i64, i32 }

@HMAC_IPAD_CONST = common dso_local global i32 0, align 4
@HMAC_OPAD_CONST = common dso_local global i32 0, align 4
@DRV_HASH_SHA1 = common dso_local global i64 0, align 8
@DRV_HASH_HW_SHA1 = common dso_local global i32 0, align 4
@DRV_HASH_HW_SHA256 = common dso_local global i32 0, align 4
@CC_SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@CC_SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE1 = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_hw_desc*, %struct.cc_aead_ctx*)* @hmac_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_setkey(%struct.cc_hw_desc* %0, %struct.cc_aead_ctx* %1) #0 {
  %3 = alloca %struct.cc_hw_desc*, align 8
  %4 = alloca %struct.cc_aead_ctx*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cc_hmac_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cc_hw_desc* %0, %struct.cc_hw_desc** %3, align 8
  store %struct.cc_aead_ctx* %1, %struct.cc_aead_ctx** %4, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %13 = load i32, i32* @HMAC_IPAD_CONST, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @HMAC_OPAD_CONST, align 4
  store i32 %15, i32* %14, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRV_HASH_SHA1, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @DRV_HASH_HW_SHA1, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @DRV_HASH_HW_SHA256, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %7, align 4
  %27 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DRV_HASH_SHA1, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @CC_SHA1_DIGEST_SIZE, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @CC_SHA256_DIGEST_SIZE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %8, align 4
  %38 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.cc_hmac_s* %40, %struct.cc_hmac_s** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %232, %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %235

44:                                               ; preds = %41
  %45 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %45, i64 %47
  %49 = call i32 @hw_desc_init(%struct.cc_hw_desc* %48)
  %50 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %52
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %53, i32 %54)
  %56 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %56, i64 %58
  %60 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @cc_larval_digest_addr(i32 %62, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @set_din_sram(%struct.cc_hw_desc* %59, i32 %66, i32 %67)
  %69 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %69, i64 %71
  %73 = load i32, i32* @S_DIN_to_HASH, align 4
  %74 = call i32 @set_flow_mode(%struct.cc_hw_desc* %72, i32 %73)
  %75 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %75, i64 %77
  %79 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %80 = call i32 @set_setup_mode(%struct.cc_hw_desc* %78, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %83, i64 %85
  %87 = call i32 @hw_desc_init(%struct.cc_hw_desc* %86)
  %88 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %88, i64 %90
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %91, i32 %92)
  %94 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %94, i64 %96
  %98 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @set_din_const(%struct.cc_hw_desc* %97, i32 0, i32 %100)
  %102 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %102, i64 %104
  %106 = load i32, i32* @S_DIN_to_HASH, align 4
  %107 = call i32 @set_flow_mode(%struct.cc_hw_desc* %105, i32 %106)
  %108 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %108, i64 %110
  %112 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %113 = call i32 @set_setup_mode(%struct.cc_hw_desc* %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %116, i64 %118
  %120 = call i32 @hw_desc_init(%struct.cc_hw_desc* %119)
  %121 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %121, i64 %123
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @set_xor_val(%struct.cc_hw_desc* %124, i32 %128)
  %130 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %130, i64 %132
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %133, i32 %134)
  %136 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %136, i64 %138
  %140 = load i32, i32* @S_DIN_to_HASH, align 4
  %141 = call i32 @set_flow_mode(%struct.cc_hw_desc* %139, i32 %140)
  %142 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %142, i64 %144
  %146 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %147 = call i32 @set_setup_mode(%struct.cc_hw_desc* %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %10, align 4
  %150 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %150, i64 %152
  %154 = call i32 @hw_desc_init(%struct.cc_hw_desc* %153)
  %155 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %156 = load i32, i32* %10, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %155, i64 %157
  %159 = load i32, i32* @DMA_DLLI, align 4
  %160 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %9, align 8
  %161 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %164 = load i32, i32* @NS_BIT, align 4
  %165 = call i32 @set_din_type(%struct.cc_hw_desc* %158, i32 %159, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %166, i64 %168
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %169, i32 %170)
  %172 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %173 = load i32, i32* %10, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %172, i64 %174
  %176 = call i32 @set_xor_active(%struct.cc_hw_desc* %175)
  %177 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %178 = load i32, i32* %10, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %177, i64 %179
  %181 = load i32, i32* @DIN_HASH, align 4
  %182 = call i32 @set_flow_mode(%struct.cc_hw_desc* %180, i32 %181)
  %183 = load i32, i32* %10, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %10, align 4
  %185 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %186 = load i32, i32* %10, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %185, i64 %187
  %189 = call i32 @hw_desc_init(%struct.cc_hw_desc* %188)
  %190 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %191 = load i32, i32* %10, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %190, i64 %192
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %193, i32 %194)
  %196 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %197 = load i32, i32* %10, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %196, i64 %198
  %200 = load %struct.cc_hmac_s*, %struct.cc_hmac_s** %9, align 8
  %201 = getelementptr inbounds %struct.cc_hmac_s, %struct.cc_hmac_s* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = zext i32 %203 to i64
  %205 = add nsw i64 %202, %204
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @NS_BIT, align 4
  %208 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %199, i64 %205, i32 %206, i32 %207, i32 0)
  %209 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %210 = load i32, i32* %10, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %209, i64 %211
  %213 = load i32, i32* @S_HASH_to_DOUT, align 4
  %214 = call i32 @set_flow_mode(%struct.cc_hw_desc* %212, i32 %213)
  %215 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %216 = load i32, i32* %10, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %215, i64 %217
  %219 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %220 = call i32 @set_setup_mode(%struct.cc_hw_desc* %218, i32 %219)
  %221 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %222 = load i32, i32* %10, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %221, i64 %223
  %225 = load i32, i32* @HASH_PADDING_DISABLED, align 4
  %226 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %224, i32 %225)
  %227 = load i32, i32* %10, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %6, align 4
  %231 = add i32 %230, %229
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %44
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %41

235:                                              ; preds = %41
  %236 = load i32, i32* %10, align 4
  ret i32 %236
}

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_sram(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @cc_larval_digest_addr(i32, i64) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_xor_val(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_xor_active(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i64, i32, i32, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
