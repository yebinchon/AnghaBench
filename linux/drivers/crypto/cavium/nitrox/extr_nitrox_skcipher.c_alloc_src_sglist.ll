; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_alloc_src_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_alloc_src_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32 }
%struct.nitrox_kcrypt_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @alloc_src_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_src_sglist(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nitrox_kcrypt_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %10 = call %struct.nitrox_kcrypt_request* @skcipher_request_ctx(%struct.skcipher_request* %9)
  store %struct.nitrox_kcrypt_request* %10, %struct.nitrox_kcrypt_request** %6, align 8
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %12 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sg_nents(i32 %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @alloc_src_req_buf(%struct.nitrox_kcrypt_request* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %26 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %29 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @nitrox_creq_copy_iv(i32 %27, i32 %30, i32 %31)
  %33 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %37 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %40 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nitrox_creq_set_src_sg(%struct.nitrox_kcrypt_request* %33, i32 %34, i32 %35, i32 %38, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %24, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.nitrox_kcrypt_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @alloc_src_req_buf(%struct.nitrox_kcrypt_request*, i32, i32) #1

declare dso_local i32 @nitrox_creq_copy_iv(i32, i32, i32) #1

declare dso_local i32 @nitrox_creq_set_src_sg(%struct.nitrox_kcrypt_request*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
