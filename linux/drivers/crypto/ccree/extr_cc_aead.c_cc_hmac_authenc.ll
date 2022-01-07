; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_hmac_authenc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_hmac_authenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32 }
%struct.aead_req_ctx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_hmac_authenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_hmac_authenc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
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
  %18 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @cc_get_data_flow(i32 %22, i32 %25, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %3
  %35 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %36 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @cc_set_hmac_desc(%struct.aead_request* %35, %struct.cc_hw_desc* %36, i32* %37)
  %39 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %40 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @cc_set_cipher_desc(%struct.aead_request* %39, %struct.cc_hw_desc* %40, i32* %41)
  %43 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %44 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @cc_proc_header_desc(%struct.aead_request* %43, %struct.cc_hw_desc* %44, i32* %45)
  %47 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @cc_proc_cipher_desc(%struct.aead_request* %47, i32 %48, %struct.cc_hw_desc* %49, i32* %50)
  %52 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %53 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @cc_proc_scheme_desc(%struct.aead_request* %52, %struct.cc_hw_desc* %53, i32* %54)
  %56 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @cc_proc_digest_desc(%struct.aead_request* %56, %struct.cc_hw_desc* %57, i32* %58)
  br label %112

60:                                               ; preds = %3
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %66 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @cc_proc_cipher(%struct.aead_request* %65, %struct.cc_hw_desc* %66, i32* %67, i32 %68)
  %70 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %71 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @cc_set_hmac_desc(%struct.aead_request* %70, %struct.cc_hw_desc* %71, i32* %72)
  %74 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %75 = load i32, i32* @DIN_HASH, align 4
  %76 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @cc_proc_authen_desc(%struct.aead_request* %74, i32 %75, %struct.cc_hw_desc* %76, i32* %77, i32 %78)
  %80 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %81 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @cc_proc_scheme_desc(%struct.aead_request* %80, %struct.cc_hw_desc* %81, i32* %82)
  %84 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %85 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @cc_proc_digest_desc(%struct.aead_request* %84, %struct.cc_hw_desc* %85, i32* %86)
  br label %112

88:                                               ; preds = %60
  %89 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %90 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @cc_set_hmac_desc(%struct.aead_request* %89, %struct.cc_hw_desc* %90, i32* %91)
  %93 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %94 = load i32, i32* @DIN_HASH, align 4
  %95 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @cc_proc_authen_desc(%struct.aead_request* %93, i32 %94, %struct.cc_hw_desc* %95, i32* %96, i32 %97)
  %99 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %100 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @cc_proc_scheme_desc(%struct.aead_request* %99, %struct.cc_hw_desc* %100, i32* %101)
  %103 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %104 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @cc_proc_cipher(%struct.aead_request* %103, %struct.cc_hw_desc* %104, i32* %105, i32 %106)
  %108 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %109 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @cc_proc_digest_desc(%struct.aead_request* %108, %struct.cc_hw_desc* %109, i32* %110)
  br label %112

112:                                              ; preds = %34, %88, %64
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @cc_get_data_flow(i32, i32, i64) #1

declare dso_local i32 @cc_set_hmac_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_set_cipher_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_header_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_cipher_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_scheme_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_digest_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_cipher(%struct.aead_request*, %struct.cc_hw_desc*, i32*, i32) #1

declare dso_local i32 @cc_proc_authen_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
