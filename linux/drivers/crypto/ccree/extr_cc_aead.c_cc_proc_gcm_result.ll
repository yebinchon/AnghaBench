; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_gcm_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_gcm_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32, i32 }
%struct.aead_req_ctx = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i64 0, align 8
@DMA_DLLI = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@DRV_HASH_HW_GHASH = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@DRV_CIPHER_GCTR = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE1 = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_proc_gcm_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_gcm_result(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca %struct.aead_req_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %7, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %15 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  store %struct.cc_aead_ctx* %15, %struct.cc_aead_ctx** %8, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %17 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %16)
  store %struct.aead_req_ctx* %17, %struct.aead_req_ctx** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DRV_CRYPTO_DIRECTION_DECRYPT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %35, i64 %37
  %39 = call i32 @hw_desc_init(%struct.cc_hw_desc* %38)
  %40 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %42
  %44 = load i32, i32* @DMA_DLLI, align 4
  %45 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %49 = load i32, i32* @NS_BIT, align 4
  %50 = call i32 @set_din_type(%struct.cc_hw_desc* %43, i32 %44, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %51, i64 %53
  %55 = load i32, i32* @DIN_HASH, align 4
  %56 = call i32 @set_flow_mode(%struct.cc_hw_desc* %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %59, i64 %61
  %63 = call i32 @hw_desc_init(%struct.cc_hw_desc* %62)
  %64 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %64, i64 %66
  %68 = load i32, i32* @DRV_HASH_HW_GHASH, align 4
  %69 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %67, i32 %68)
  %70 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %70, i64 %72
  %74 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %73, i32 0, i32 16777200)
  %75 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %75, i64 %77
  %79 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %80 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = load i32, i32* @NS_BIT, align 4
  %84 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %78, i32 %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %85, i64 %87
  %89 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %90 = call i32 @set_setup_mode(%struct.cc_hw_desc* %88, i32 %89)
  %91 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %91, i64 %93
  %95 = load i32, i32* @S_HASH_to_DOUT, align 4
  %96 = call i32 @set_flow_mode(%struct.cc_hw_desc* %94, i32 %95)
  %97 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %97, i64 %99
  %101 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %100)
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %104, i64 %106
  %108 = call i32 @hw_desc_init(%struct.cc_hw_desc* %107)
  %109 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %109, i64 %111
  %113 = load i32, i32* @DRV_CIPHER_GCTR, align 4
  %114 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %112, i32 %113)
  %115 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %115, i64 %117
  %119 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %120 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %118, i32 %121)
  %123 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %123, i64 %125
  %127 = load i32, i32* @DMA_DLLI, align 4
  %128 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %129 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %132 = load i32, i32* @NS_BIT, align 4
  %133 = call i32 @set_din_type(%struct.cc_hw_desc* %126, i32 %127, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %134, i64 %136
  %138 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %139 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %137, i32 %138)
  %140 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %140, i64 %142
  %144 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %145 = call i32 @set_setup_mode(%struct.cc_hw_desc* %143, i32 %144)
  %146 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %147 = load i32, i32* %11, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %146, i64 %148
  %150 = load i32, i32* @S_DIN_to_AES, align 4
  %151 = call i32 @set_flow_mode(%struct.cc_hw_desc* %149, i32 %150)
  %152 = load i32, i32* %11, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %11, align 4
  %154 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %154, i64 %156
  %158 = call i32 @hw_desc_init(%struct.cc_hw_desc* %157)
  %159 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %160 = load i32, i32* %11, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %159, i64 %161
  %163 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %162, i32 0, i32 16777200)
  %164 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %164, i64 %166
  %168 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %167, i32 0, i32 0, i32 1)
  %169 = load i32, i32* %11, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %11, align 4
  %171 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %172 = load i32, i32* %11, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %171, i64 %173
  %175 = call i32 @hw_desc_init(%struct.cc_hw_desc* %174)
  %176 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %177 = load i32, i32* %11, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %176, i64 %178
  %180 = load i32, i32* @DRV_CIPHER_GCTR, align 4
  %181 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %179, i32 %180)
  %182 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %183 = load i32, i32* %11, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %182, i64 %184
  %186 = load i32, i32* @DMA_DLLI, align 4
  %187 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %188 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %191 = load i32, i32* @NS_BIT, align 4
  %192 = call i32 @set_din_type(%struct.cc_hw_desc* %185, i32 %186, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %194 = load i32, i32* %11, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %193, i64 %195
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %199 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @NS_BIT, align 4
  %202 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %196, i32 %197, i32 %200, i32 %201, i32 1)
  %203 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %204 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %207 = load i32, i32* %11, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %206, i64 %208
  %210 = call i32 @set_queue_last_ind(i32 %205, %struct.cc_hw_desc* %209)
  %211 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %212 = load i32, i32* %11, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %211, i64 %213
  %215 = load i32, i32* @DIN_AES_DOUT, align 4
  %216 = call i32 @set_flow_mode(%struct.cc_hw_desc* %214, i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32*, i32** %6, align 8
  store i32 %219, i32* %220, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_no_dma(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_aes_not_hash_mode(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_dout_no_dma(%struct.cc_hw_desc*, i32, i32, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
