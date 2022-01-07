; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_nitrox_creq_set_dst_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_nitrox_creq_set_dst_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_kcrypt_request = type { i8*, i32, %struct.se_crypto_request }
%struct.se_crypto_request = type { i8*, i8*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@ORH_HLEN = common dso_local global i32 0, align 4
@COMP_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_kcrypt_request*, i32, i32, %struct.scatterlist*, i32)* @nitrox_creq_set_dst_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_creq_set_dst_sg(%struct.nitrox_kcrypt_request* %0, i32 %1, i32 %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca %struct.nitrox_kcrypt_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.se_crypto_request*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i8*, align 8
  store %struct.nitrox_kcrypt_request* %0, %struct.nitrox_kcrypt_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %15 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %14, i32 0, i32 2
  store %struct.se_crypto_request* %15, %struct.se_crypto_request** %11, align 8
  %16 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %17 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %20 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.scatterlist* @nitrox_creq_dst_sg(i32 %21)
  %23 = load %struct.se_crypto_request*, %struct.se_crypto_request** %11, align 8
  %24 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %23, i32 0, i32 2
  store %struct.scatterlist* %22, %struct.scatterlist** %24, align 8
  %25 = load %struct.se_crypto_request*, %struct.se_crypto_request** %11, align 8
  %26 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %25, i32 0, i32 2
  %27 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  store %struct.scatterlist* %27, %struct.scatterlist** %12, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @sg_init_table(%struct.scatterlist* %28, i32 %29)
  %31 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %32 = load %struct.se_crypto_request*, %struct.se_crypto_request** %11, align 8
  %33 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @ORH_HLEN, align 4
  %36 = call %struct.scatterlist* @create_single_sg(%struct.scatterlist* %31, i8* %34, i32 %35)
  store %struct.scatterlist* %36, %struct.scatterlist** %12, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.scatterlist* @create_single_sg(%struct.scatterlist* %37, i8* %38, i32 %39)
  store %struct.scatterlist* %40, %struct.scatterlist** %12, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %42 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.scatterlist* @create_multi_sg(%struct.scatterlist* %41, %struct.scatterlist* %42, i32 %43)
  store %struct.scatterlist* %44, %struct.scatterlist** %12, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %46 = load %struct.se_crypto_request*, %struct.se_crypto_request** %11, align 8
  %47 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @COMP_HLEN, align 4
  %50 = call %struct.scatterlist* @create_single_sg(%struct.scatterlist* %45, i8* %48, i32 %49)
  ret void
}

declare dso_local %struct.scatterlist* @nitrox_creq_dst_sg(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.scatterlist* @create_single_sg(%struct.scatterlist*, i8*, i32) #1

declare dso_local %struct.scatterlist* @create_multi_sg(%struct.scatterlist*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
