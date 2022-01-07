; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_setup_out_descr_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_setup_out_descr_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_req_common = type { %struct.artpec6_crypto_dma_descriptors* }
%struct.artpec6_crypto_dma_descriptors = type { i64, %struct.pdma_descr* }
%struct.pdma_descr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PDMA_DESCR_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"No free OUT DMA descriptors available!\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_crypto_req_common*, i8*, i32, i32)* @artpec6_crypto_setup_out_descr_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_setup_out_descr_short(%struct.artpec6_crypto_req_common* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.artpec6_crypto_req_common*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.artpec6_crypto_dma_descriptors*, align 8
  %11 = alloca %struct.pdma_descr*, align 8
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %6, align 8
  store i8* %1, i8** %7, align 8
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
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 7
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %66

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %10, align 8
  %39 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %38, i32 0, i32 1
  %40 = load %struct.pdma_descr*, %struct.pdma_descr** %39, align 8
  %41 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %10, align 8
  %42 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %40, i64 %43
  store %struct.pdma_descr* %45, %struct.pdma_descr** %11, align 8
  %46 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %47 = call i32 @memset(%struct.pdma_descr* %46, i32 0, i32 16)
  %48 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %49 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %53 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %57 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.pdma_descr*, %struct.pdma_descr** %11, align 8
  %60 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @memcpy(i32 %62, i8* %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %37, %33, %23
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @fault_inject_dma_descr(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(%struct.pdma_descr*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
