; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_xcbc_authenc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_xcbc_authenc.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_xcbc_authenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_xcbc_authenc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
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
  br i1 %33, label %34, label %56

34:                                               ; preds = %3
  %35 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %36 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @cc_set_xcbc_desc(%struct.aead_request* %35, %struct.cc_hw_desc* %36, i32* %37)
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
  %55 = call i32 @cc_proc_digest_desc(%struct.aead_request* %52, %struct.cc_hw_desc* %53, i32* %54)
  br label %100

56:                                               ; preds = %3
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %62 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @cc_proc_cipher(%struct.aead_request* %61, %struct.cc_hw_desc* %62, i32* %63, i32 %64)
  %66 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %67 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @cc_set_xcbc_desc(%struct.aead_request* %66, %struct.cc_hw_desc* %67, i32* %68)
  %70 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %71 = load i32, i32* @DIN_HASH, align 4
  %72 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @cc_proc_authen_desc(%struct.aead_request* %70, i32 %71, %struct.cc_hw_desc* %72, i32* %73, i32 %74)
  %76 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %77 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @cc_proc_digest_desc(%struct.aead_request* %76, %struct.cc_hw_desc* %77, i32* %78)
  br label %100

80:                                               ; preds = %56
  %81 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %82 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @cc_set_xcbc_desc(%struct.aead_request* %81, %struct.cc_hw_desc* %82, i32* %83)
  %85 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %86 = load i32, i32* @DIN_HASH, align 4
  %87 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @cc_proc_authen_desc(%struct.aead_request* %85, i32 %86, %struct.cc_hw_desc* %87, i32* %88, i32 %89)
  %91 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %92 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @cc_proc_cipher(%struct.aead_request* %91, %struct.cc_hw_desc* %92, i32* %93, i32 %94)
  %96 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %97 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @cc_proc_digest_desc(%struct.aead_request* %96, %struct.cc_hw_desc* %97, i32* %98)
  br label %100

100:                                              ; preds = %34, %80, %60
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @cc_get_data_flow(i32, i32, i64) #1

declare dso_local i32 @cc_set_xcbc_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_set_cipher_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_header_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_cipher_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_digest_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_cipher(%struct.aead_request*, %struct.cc_hw_desc*, i32*, i32) #1

declare dso_local i32 @cc_proc_authen_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
