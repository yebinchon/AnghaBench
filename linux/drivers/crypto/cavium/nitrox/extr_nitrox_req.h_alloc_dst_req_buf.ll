; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_alloc_dst_req_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_alloc_dst_req_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_kcrypt_request = type { i32, %struct.se_crypto_request }
%struct.se_crypto_request = type { i32 }

@ORH_HLEN = common dso_local global i32 0, align 4
@COMP_HLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_kcrypt_request*, i32)* @alloc_dst_req_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dst_req_buf(%struct.nitrox_kcrypt_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nitrox_kcrypt_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_crypto_request*, align 8
  store %struct.nitrox_kcrypt_request* %0, %struct.nitrox_kcrypt_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ORH_HLEN, align 4
  %9 = load i32, i32* @COMP_HLEN, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %4, align 8
  %12 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %11, i32 0, i32 1
  store %struct.se_crypto_request* %12, %struct.se_crypto_request** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %16 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @alloc_req_buf(i32 %13, i32 %14, i32 %17)
  %19 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %4, align 8
  %20 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %4, align 8
  %22 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @alloc_req_buf(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
