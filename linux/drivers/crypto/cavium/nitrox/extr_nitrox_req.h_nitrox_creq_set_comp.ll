; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_nitrox_creq_set_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_req.h_nitrox_creq_set_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_kcrypt_request = type { i64, %struct.se_crypto_request }
%struct.se_crypto_request = type { i32* }

@ORH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_kcrypt_request*)* @nitrox_creq_set_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_creq_set_comp(%struct.nitrox_kcrypt_request* %0) #0 {
  %2 = alloca %struct.nitrox_kcrypt_request*, align 8
  %3 = alloca %struct.se_crypto_request*, align 8
  store %struct.nitrox_kcrypt_request* %0, %struct.nitrox_kcrypt_request** %2, align 8
  %4 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %2, align 8
  %5 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %4, i32 0, i32 1
  store %struct.se_crypto_request* %5, %struct.se_crypto_request** %3, align 8
  %6 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %2, align 8
  %7 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ORH_HLEN, align 8
  %10 = add nsw i64 %8, %9
  %11 = inttoptr i64 %10 to i32*
  %12 = load %struct.se_crypto_request*, %struct.se_crypto_request** %3, align 8
  %13 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.se_crypto_request*, %struct.se_crypto_request** %3, align 8
  %15 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @set_comp_value(i32* %16)
  ret void
}

declare dso_local i32 @set_comp_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
