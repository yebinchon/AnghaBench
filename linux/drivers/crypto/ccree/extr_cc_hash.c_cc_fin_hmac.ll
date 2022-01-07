; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_fin_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_fin_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32 }
%struct.ahash_request = type { i32 }
%struct.ahash_req_ctx = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32, i32, i32 }

@NS_BIT = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_ENABLED = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_hw_desc*, %struct.ahash_request*, i32)* @cc_fin_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_fin_hmac(%struct.cc_hw_desc* %0, %struct.ahash_request* %1, i32 %2) #0 {
  %4 = alloca %struct.cc_hw_desc*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahash_req_ctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.cc_hash_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.cc_hw_desc* %0, %struct.cc_hw_desc** %4, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %12 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %11)
  store %struct.ahash_req_ctx* %12, %struct.ahash_req_ctx** %7, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %14 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %13)
  store %struct.crypto_ahash* %14, %struct.crypto_ahash** %8, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %16 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %15)
  store %struct.cc_hash_ctx* %16, %struct.cc_hash_ctx** %9, align 8
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %18 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %19, i64 %21
  %23 = call i32 @hw_desc_init(%struct.cc_hw_desc* %22)
  %24 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %24, i64 %26
  %28 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %27, i32 %30)
  %32 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %32, i64 %34
  %36 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NS_BIT, align 4
  %41 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %35, i32 %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %42, i64 %44
  %46 = load i32, i32* @S_HASH_to_DOUT, align 4
  %47 = call i32 @set_flow_mode(%struct.cc_hw_desc* %45, i32 %46)
  %48 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %51, i64 %53
  %55 = call i32 @cc_set_endianity(i32 %50, %struct.cc_hw_desc* %54)
  %56 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %56, i64 %58
  %60 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %61 = call i32 @set_setup_mode(%struct.cc_hw_desc* %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %64, i64 %66
  %68 = call i32 @hw_desc_init(%struct.cc_hw_desc* %67)
  %69 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %69, i64 %71
  %73 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %74 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %72, i32 %75)
  %77 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %77, i64 %79
  %81 = load i32, i32* @DMA_DLLI, align 4
  %82 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NS_BIT, align 4
  %89 = call i32 @set_din_type(%struct.cc_hw_desc* %80, i32 %81, i32 %84, i32 %87, i32 %88)
  %90 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %90, i64 %92
  %94 = load i32, i32* @S_DIN_to_HASH, align 4
  %95 = call i32 @set_flow_mode(%struct.cc_hw_desc* %93, i32 %94)
  %96 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %96, i64 %98
  %100 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %101 = call i32 @set_setup_mode(%struct.cc_hw_desc* %99, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  %104 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %104, i64 %106
  %108 = call i32 @hw_desc_init(%struct.cc_hw_desc* %107)
  %109 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %109, i64 %111
  %113 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %114 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %112, i32 %115)
  %117 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %117, i64 %119
  %121 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %122 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %125 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @cc_digest_len_addr(i32 %123, i32 %126)
  %128 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %129 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @set_din_sram(%struct.cc_hw_desc* %120, i32 %127, i32 %130)
  %132 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %132, i64 %134
  %136 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %137 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %135, i32 %136)
  %138 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %138, i64 %140
  %142 = load i32, i32* @S_DIN_to_HASH, align 4
  %143 = call i32 @set_flow_mode(%struct.cc_hw_desc* %141, i32 %142)
  %144 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %144, i64 %146
  %148 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %149 = call i32 @set_setup_mode(%struct.cc_hw_desc* %147, i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  %152 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %152, i64 %154
  %156 = call i32 @hw_desc_init(%struct.cc_hw_desc* %155)
  %157 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %157, i64 %159
  %161 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %160, i32 0, i32 16777200)
  %162 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %162, i64 %164
  %166 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %165, i32 0, i32 0, i32 1)
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  %169 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %169, i64 %171
  %173 = call i32 @hw_desc_init(%struct.cc_hw_desc* %172)
  %174 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %174, i64 %176
  %178 = load i32, i32* @DMA_DLLI, align 4
  %179 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %180 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @NS_BIT, align 4
  %184 = call i32 @set_din_type(%struct.cc_hw_desc* %177, i32 %178, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %185, i64 %187
  %189 = load i32, i32* @DIN_HASH, align 4
  %190 = call i32 @set_flow_mode(%struct.cc_hw_desc* %188, i32 %189)
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_set_endianity(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_din_sram(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @cc_digest_len_addr(i32, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_no_dma(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_no_dma(%struct.cc_hw_desc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
