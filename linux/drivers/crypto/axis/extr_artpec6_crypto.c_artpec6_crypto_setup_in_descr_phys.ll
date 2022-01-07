; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_setup_in_descr_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_setup_in_descr_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_req_common = type { %struct.artpec6_crypto_dma_descriptors* }
%struct.artpec6_crypto_dma_descriptors = type { i64, %struct.pdma_descr* }
%struct.pdma_descr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PDMA_DESCR_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"No free IN DMA descriptors available!\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_crypto_req_common*, i32, i32, i32)* @artpec6_crypto_setup_in_descr_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_setup_in_descr_phys(%struct.artpec6_crypto_req_common* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.artpec6_crypto_req_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.artpec6_crypto_dma_descriptors*, align 8
  %11 = alloca %struct.pdma_descr*, align 8
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %6, align 8
  %13 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %12, i32 0, i32 0
  %14 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %13, align 8
  store %struct.artpec6_crypto_dma_descriptors* %14, %struct.artpec6_crypto_dma_descriptors** %10, align 8
  %15 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %10, align 8
  %16 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PDMA_DESCR_COUNT, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = call i64 (...) @fault_inject_dma_descr()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %50

27:                                               ; preds = %20
  %28 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %10, align 8
  %29 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %28, i32 0, i32 1
  %30 = load %struct.pdma_descr*, %struct.pdma_descr** %29, align 8
  %31 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %10, align 8
  %32 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %30, i64 %33
  store %struct.pdma_descr* %35, %struct.pdma_descr** %11, align 8
  %36 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %37 = call i32 @memset(%struct.pdma_descr* %36, i32 0, i32 12)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %40 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %44 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %48 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %27, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @fault_inject_dma_descr(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(%struct.pdma_descr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
