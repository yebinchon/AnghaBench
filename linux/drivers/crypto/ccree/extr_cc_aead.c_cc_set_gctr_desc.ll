; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_gctr_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_gctr_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32 }
%struct.aead_req_ctx = type { i32, i32, i64 }

@DRV_CIPHER_GCTR = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_set_gctr_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_set_gctr_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca %struct.aead_req_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %12 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %11)
  store %struct.crypto_aead* %12, %struct.crypto_aead** %7, align 8
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %14 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %13)
  store %struct.cc_aead_ctx* %14, %struct.cc_aead_ctx** %8, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %15)
  store %struct.aead_req_ctx* %16, %struct.aead_req_ctx** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %19, i64 %21
  %23 = call i32 @hw_desc_init(%struct.cc_hw_desc* %22)
  %24 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %24, i64 %26
  %28 = load i32, i32* @DRV_CIPHER_GCTR, align 4
  %29 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %27, i32 %28)
  %30 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %30, i64 %32
  %34 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %35 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %33, i32 %34)
  %36 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %36, i64 %38
  %40 = load i32, i32* @DMA_DLLI, align 4
  %41 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NS_BIT, align 4
  %48 = call i32 @set_din_type(%struct.cc_hw_desc* %39, i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %51
  %53 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %52, i32 %55)
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %57, i64 %59
  %61 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %62 = call i32 @set_setup_mode(%struct.cc_hw_desc* %60, i32 %61)
  %63 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %63, i64 %65
  %67 = load i32, i32* @S_DIN_to_AES, align 4
  %68 = call i32 @set_flow_mode(%struct.cc_hw_desc* %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %3
  %76 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %77 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %131, label %80

80:                                               ; preds = %75
  %81 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %81, i64 %83
  %85 = call i32 @hw_desc_init(%struct.cc_hw_desc* %84)
  %86 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %86, i64 %88
  %90 = load i32, i32* @DRV_CIPHER_GCTR, align 4
  %91 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %89, i32 %90)
  %92 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %92, i64 %94
  %96 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %95, i32 %98)
  %100 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %100, i64 %102
  %104 = load i32, i32* @DMA_DLLI, align 4
  %105 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %109 = load i32, i32* @NS_BIT, align 4
  %110 = call i32 @set_din_type(%struct.cc_hw_desc* %103, i32 %104, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %111, i64 %113
  %115 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %116 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %114, i32 %115)
  %117 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %117, i64 %119
  %121 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %122 = call i32 @set_setup_mode(%struct.cc_hw_desc* %120, i32 %121)
  %123 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %123, i64 %125
  %127 = load i32, i32* @S_DIN_to_AES, align 4
  %128 = call i32 @set_flow_mode(%struct.cc_hw_desc* %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %80, %75, %3
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
