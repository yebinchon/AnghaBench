; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_xcbc_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_xcbc_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32 }
%struct.cc_aead_ctx = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DRV_CIPHER_ECB = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@CC_AES_128_BIT_KEY_SIZE = common dso_local global i32 0, align 4
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_hw_desc*, %struct.cc_aead_ctx*)* @xcbc_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcbc_setkey(%struct.cc_hw_desc* %0, %struct.cc_aead_ctx* %1) #0 {
  %3 = alloca %struct.cc_hw_desc*, align 8
  %4 = alloca %struct.cc_aead_ctx*, align 8
  store %struct.cc_hw_desc* %0, %struct.cc_hw_desc** %3, align 8
  store %struct.cc_aead_ctx* %1, %struct.cc_aead_ctx** %4, align 8
  %5 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %6 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %5, i64 0
  %7 = call i32 @hw_desc_init(%struct.cc_hw_desc* %6)
  %8 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %9 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %8, i64 0
  %10 = load i32, i32* @DMA_DLLI, align 4
  %11 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NS_BIT, align 4
  %20 = call i32 @set_din_type(%struct.cc_hw_desc* %9, i32 %10, i64 %15, i32 %18, i32 %19)
  %21 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %22 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %21, i64 0
  %23 = load i32, i32* @DRV_CIPHER_ECB, align 4
  %24 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %22, i32 %23)
  %25 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %26 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %25, i64 0
  %27 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %28 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %26, i32 %27)
  %29 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %30 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 0
  %31 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %30, i32 %33)
  %35 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %36 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %35, i64 0
  %37 = load i32, i32* @S_DIN_to_AES, align 4
  %38 = call i32 @set_flow_mode(%struct.cc_hw_desc* %36, i32 %37)
  %39 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %40 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %39, i64 0
  %41 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %42 = call i32 @set_setup_mode(%struct.cc_hw_desc* %40, i32 %41)
  %43 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %44 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %43, i64 1
  %45 = call i32 @hw_desc_init(%struct.cc_hw_desc* %44)
  %46 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %47 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %46, i64 1
  %48 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %49 = call i32 @set_din_const(%struct.cc_hw_desc* %47, i32 16843009, i32 %48)
  %50 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %51 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 1
  %52 = load i32, i32* @DIN_AES_DOUT, align 4
  %53 = call i32 @set_flow_mode(%struct.cc_hw_desc* %51, i32 %52)
  %54 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %55 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %54, i64 1
  %56 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @AES_KEYSIZE_128, align 4
  %62 = load i32, i32* @NS_BIT, align 4
  %63 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %55, i64 %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %65 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %64, i64 2
  %66 = call i32 @hw_desc_init(%struct.cc_hw_desc* %65)
  %67 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %68 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %67, i64 2
  %69 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %70 = call i32 @set_din_const(%struct.cc_hw_desc* %68, i32 33686018, i32 %69)
  %71 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %72 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %71, i64 2
  %73 = load i32, i32* @DIN_AES_DOUT, align 4
  %74 = call i32 @set_flow_mode(%struct.cc_hw_desc* %72, i32 %73)
  %75 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %76 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %75, i64 2
  %77 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @AES_KEYSIZE_128, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* @AES_KEYSIZE_128, align 4
  %86 = load i32, i32* @NS_BIT, align 4
  %87 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %76, i64 %84, i32 %85, i32 %86, i32 0)
  %88 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %89 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %88, i64 3
  %90 = call i32 @hw_desc_init(%struct.cc_hw_desc* %89)
  %91 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %92 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %91, i64 3
  %93 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %94 = call i32 @set_din_const(%struct.cc_hw_desc* %92, i32 50529027, i32 %93)
  %95 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %96 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %95, i64 3
  %97 = load i32, i32* @DIN_AES_DOUT, align 4
  %98 = call i32 @set_flow_mode(%struct.cc_hw_desc* %96, i32 %97)
  %99 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %100 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %99, i64 3
  %101 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @AES_KEYSIZE_128, align 4
  %107 = mul nsw i32 2, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = load i32, i32* @AES_KEYSIZE_128, align 4
  %111 = load i32, i32* @NS_BIT, align 4
  %112 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %100, i64 %109, i32 %110, i32 %111, i32 0)
  ret i32 4
}

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i64, i32, i32) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
