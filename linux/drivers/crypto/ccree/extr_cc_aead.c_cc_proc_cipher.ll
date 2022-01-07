; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.aead_req_ctx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*, i32)* @cc_proc_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_cipher(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.cc_hw_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aead_req_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %13 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %12)
  store %struct.aead_req_ctx* %13, %struct.aead_req_ctx** %9, align 8
  %14 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %15 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %57

25:                                               ; preds = %4
  %26 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %27 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %28 = call i32 @cc_set_cipher_desc(%struct.aead_request* %26, %struct.cc_hw_desc* %27, i32* %11)
  %29 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %32 = call i32 @cc_proc_cipher_desc(%struct.aead_request* %29, i32 %30, %struct.cc_hw_desc* %31, i32* %11)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %25
  %37 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %37, i64 %39
  %41 = call i32 @hw_desc_init(%struct.cc_hw_desc* %40)
  %42 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %42, i64 %44
  %46 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %45, i32 0, i32 16777200)
  %47 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %47, i64 %49
  %51 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %50, i32 0, i32 0, i32 1)
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %36, %25
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %24
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @cc_set_cipher_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_cipher_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_din_no_dma(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_no_dma(%struct.cc_hw_desc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
