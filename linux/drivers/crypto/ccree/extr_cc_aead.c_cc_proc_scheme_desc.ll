; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_scheme_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_scheme_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.cc_aead_handle* }
%struct.cc_aead_handle = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DRV_HASH_SHA1 = common dso_local global i64 0, align 8
@DRV_HASH_HW_SHA1 = common dso_local global i32 0, align 4
@DRV_HASH_HW_SHA256 = common dso_local global i32 0, align 4
@CC_SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@CC_SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE1 = common dso_local global i32 0, align 4
@DO_PAD = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@HASH_DIGEST_RESULT_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_ENABLED = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_proc_scheme_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_scheme_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca %struct.cc_aead_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %7, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %16 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.cc_aead_ctx* %16, %struct.cc_aead_ctx** %8, align 8
  %17 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %20, align 8
  store %struct.cc_aead_handle* %21, %struct.cc_aead_handle** %9, align 8
  %22 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRV_HASH_SHA1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @DRV_HASH_HW_SHA1, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @DRV_HASH_HW_SHA256, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %10, align 4
  %33 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DRV_HASH_SHA1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @CC_SHA1_DIGEST_SIZE, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @CC_SHA256_DIGEST_SIZE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %46, i64 %48
  %50 = call i32 @hw_desc_init(%struct.cc_hw_desc* %49)
  %51 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %51, i64 %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %54, i32 %55)
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %57, i64 %59
  %61 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %9, align 8
  %62 = getelementptr inbounds %struct.cc_aead_handle, %struct.cc_aead_handle* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @set_dout_sram(%struct.cc_hw_desc* %60, i32 %63, i32 %66)
  %68 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %68, i64 %70
  %72 = load i32, i32* @S_HASH_to_DOUT, align 4
  %73 = call i32 @set_flow_mode(%struct.cc_hw_desc* %71, i32 %72)
  %74 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %74, i64 %76
  %78 = load i32, i32* @SETUP_WRITE_STATE1, align 4
  %79 = call i32 @set_setup_mode(%struct.cc_hw_desc* %77, i32 %78)
  %80 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %80, i64 %82
  %84 = load i32, i32* @DO_PAD, align 4
  %85 = call i32 @set_cipher_do(%struct.cc_hw_desc* %83, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %88, i64 %90
  %92 = call i32 @hw_desc_init(%struct.cc_hw_desc* %91)
  %93 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %93, i64 %95
  %97 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %9, align 8
  %98 = getelementptr inbounds %struct.cc_aead_handle, %struct.cc_aead_handle* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @set_dout_sram(%struct.cc_hw_desc* %96, i32 %99, i32 %100)
  %102 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %102, i64 %104
  %106 = load i32, i32* @S_HASH_to_DOUT, align 4
  %107 = call i32 @set_flow_mode(%struct.cc_hw_desc* %105, i32 %106)
  %108 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %108, i64 %110
  %112 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %113 = call i32 @set_setup_mode(%struct.cc_hw_desc* %111, i32 %112)
  %114 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %114, i64 %116
  %118 = load i32, i32* @HASH_DIGEST_RESULT_LITTLE_ENDIAN, align 4
  %119 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %117, i32 %118)
  %120 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %120, i64 %122
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %123, i32 %124)
  %126 = load i32, i32* %12, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %129 = load i32, i32* %12, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %128, i64 %130
  %132 = call i32 @hw_desc_init(%struct.cc_hw_desc* %131)
  %133 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %134 = load i32, i32* %12, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %133, i64 %135
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %136, i32 %137)
  %139 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %140 = load i32, i32* %12, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %139, i64 %141
  %143 = load i32, i32* @DMA_DLLI, align 4
  %144 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %145 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = zext i32 %149 to i64
  %151 = add nsw i64 %148, %150
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @NS_BIT, align 4
  %154 = call i32 @set_din_type(%struct.cc_hw_desc* %142, i32 %143, i64 %151, i32 %152, i32 %153)
  %155 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %155, i64 %157
  %159 = load i32, i32* @S_DIN_to_HASH, align 4
  %160 = call i32 @set_flow_mode(%struct.cc_hw_desc* %158, i32 %159)
  %161 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %162 = load i32, i32* %12, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %161, i64 %163
  %165 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %166 = call i32 @set_setup_mode(%struct.cc_hw_desc* %164, i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %12, align 4
  %169 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %170 = load i32, i32* %12, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %169, i64 %171
  %173 = call i32 @hw_desc_init(%struct.cc_hw_desc* %172)
  %174 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %175 = load i32, i32* %12, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %174, i64 %176
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %177, i32 %178)
  %180 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %181 = load i32, i32* %12, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %180, i64 %182
  %184 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %185 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %184, i32 0, i32 2
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @cc_digest_len_addr(%struct.TYPE_6__* %186, i32 %187)
  %189 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %190 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @set_din_sram(%struct.cc_hw_desc* %183, i32 %188, i32 %191)
  %193 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %194 = load i32, i32* %12, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %193, i64 %195
  %197 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %198 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %196, i32 %197)
  %199 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %200 = load i32, i32* %12, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %199, i64 %201
  %203 = load i32, i32* @S_DIN_to_HASH, align 4
  %204 = call i32 @set_flow_mode(%struct.cc_hw_desc* %202, i32 %203)
  %205 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %206 = load i32, i32* %12, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %205, i64 %207
  %209 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %210 = call i32 @set_setup_mode(%struct.cc_hw_desc* %208, i32 %209)
  %211 = load i32, i32* %12, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %12, align 4
  %213 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %214 = load i32, i32* %12, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %213, i64 %215
  %217 = call i32 @hw_desc_init(%struct.cc_hw_desc* %216)
  %218 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %219 = load i32, i32* %12, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %218, i64 %220
  %222 = load %struct.cc_aead_handle*, %struct.cc_aead_handle** %9, align 8
  %223 = getelementptr inbounds %struct.cc_aead_handle, %struct.cc_aead_handle* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @set_din_sram(%struct.cc_hw_desc* %221, i32 %224, i32 %225)
  %227 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %228 = load i32, i32* %12, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %227, i64 %229
  %231 = load i32, i32* @DIN_HASH, align 4
  %232 = call i32 @set_flow_mode(%struct.cc_hw_desc* %230, i32 %231)
  %233 = load i32, i32* %12, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32*, i32** %6, align 8
  store i32 %235, i32* %236, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_dout_sram(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_do(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i64, i32, i32) #1

declare dso_local i32 @set_din_sram(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @cc_digest_len_addr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
