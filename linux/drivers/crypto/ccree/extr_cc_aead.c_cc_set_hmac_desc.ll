; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_hmac_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_hmac_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRV_HASH_SHA1 = common dso_local global i64 0, align 8
@DRV_HASH_HW_SHA1 = common dso_local global i32 0, align 4
@DRV_HASH_HW_SHA256 = common dso_local global i32 0, align 4
@CC_SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@CC_SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_set_hmac_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_set_hmac_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca i32, align 4
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
  %16 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRV_HASH_SHA1, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @DRV_HASH_HW_SHA1, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @DRV_HASH_HW_SHA256, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %9, align 4
  %27 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
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
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %42
  %44 = call i32 @hw_desc_init(%struct.cc_hw_desc* %43)
  %45 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %48, i32 %49)
  %51 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %51, i64 %53
  %55 = load i32, i32* @DMA_DLLI, align 4
  %56 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @NS_BIT, align 4
  %63 = call i32 @set_din_type(%struct.cc_hw_desc* %54, i32 %55, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %64, i64 %66
  %68 = load i32, i32* @S_DIN_to_HASH, align 4
  %69 = call i32 @set_flow_mode(%struct.cc_hw_desc* %67, i32 %68)
  %70 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %70, i64 %72
  %74 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %75 = call i32 @set_setup_mode(%struct.cc_hw_desc* %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %78, i64 %80
  %82 = call i32 @hw_desc_init(%struct.cc_hw_desc* %81)
  %83 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %83, i64 %85
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %86, i32 %87)
  %89 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %89, i64 %91
  %93 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %94 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @cc_digest_len_addr(i32 %95, i32 %96)
  %98 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @set_din_sram(%struct.cc_hw_desc* %92, i32 %97, i32 %100)
  %102 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %102, i64 %104
  %106 = load i32, i32* @S_DIN_to_HASH, align 4
  %107 = call i32 @set_flow_mode(%struct.cc_hw_desc* %105, i32 %106)
  %108 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %108, i64 %110
  %112 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %113 = call i32 @set_setup_mode(%struct.cc_hw_desc* %111, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_sram(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @cc_digest_len_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
