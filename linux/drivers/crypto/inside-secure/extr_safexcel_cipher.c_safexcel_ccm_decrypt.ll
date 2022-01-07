; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_ccm_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_ccm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32*, i32 }
%struct.safexcel_cipher_req = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAFEXCEL_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @safexcel_ccm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_ccm_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.safexcel_cipher_req*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %5 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %6 = call %struct.safexcel_cipher_req* @aead_request_ctx(%struct.aead_request* %5)
  store %struct.safexcel_cipher_req* %6, %struct.safexcel_cipher_req** %4, align 8
  %7 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %8 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 7
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %13
  %24 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 1
  %26 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %4, align 8
  %27 = load i32, i32* @SAFEXCEL_DECRYPT, align 4
  %28 = call i32 @safexcel_queue_req(i32* %25, %struct.safexcel_cipher_req* %26, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.safexcel_cipher_req* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @safexcel_queue_req(i32*, %struct.safexcel_cipher_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
