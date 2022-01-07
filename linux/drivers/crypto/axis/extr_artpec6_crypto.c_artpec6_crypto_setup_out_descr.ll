; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_setup_out_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_setup_out_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_req_common = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_crypto_req_common*, i8*, i32, i32, i32)* @artpec6_crypto_setup_out_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_setup_out_descr(%struct.artpec6_crypto_req_common* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.artpec6_crypto_req_common*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp ult i32 %17, 7
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @artpec6_crypto_setup_out_descr_short(%struct.artpec6_crypto_req_common* %20, i8* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %41

25:                                               ; preds = %16, %5
  %26 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @artpec6_crypto_dma_map_single(%struct.artpec6_crypto_req_common* %26, i8* %27, i32 %28, i32 %29, i32* %13)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @artpec6_crypto_setup_out_descr_phys(%struct.artpec6_crypto_req_common* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %33, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @artpec6_crypto_setup_out_descr_short(%struct.artpec6_crypto_req_common*, i8*, i32, i32) #1

declare dso_local i32 @artpec6_crypto_dma_map_single(%struct.artpec6_crypto_req_common*, i8*, i32, i32, i32*) #1

declare dso_local i32 @artpec6_crypto_setup_out_descr_phys(%struct.artpec6_crypto_req_common*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
