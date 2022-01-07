; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_terminate_in_descrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_terminate_in_descrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_req_common = type { %struct.artpec6_crypto_dma_descriptors* }
%struct.artpec6_crypto_dma_descriptors = type { i32, %struct.pdma_descr* }
%struct.pdma_descr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PDMA_DESCR_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: IN descriptor list is %s\0A\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_crypto_req_common*)* @artpec6_crypto_terminate_in_descrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_terminate_in_descrs(%struct.artpec6_crypto_req_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.artpec6_crypto_req_common*, align 8
  %4 = alloca %struct.artpec6_crypto_dma_descriptors*, align 8
  %5 = alloca %struct.pdma_descr*, align 8
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %3, align 8
  %6 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %3, align 8
  %7 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %6, i32 0, i32 0
  %8 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %7, align 8
  store %struct.artpec6_crypto_dma_descriptors* %8, %struct.artpec6_crypto_dma_descriptors** %4, align 8
  %9 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %4, align 8
  %10 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %4, align 8
  %15 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PDMA_DESCR_COUNT, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @MODULE_NAME, align 4
  %21 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %4, align 8
  %22 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %13
  %31 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %4, align 8
  %32 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %31, i32 0, i32 1
  %33 = load %struct.pdma_descr*, %struct.pdma_descr** %32, align 8
  %34 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %4, align 8
  %35 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %33, i64 %38
  store %struct.pdma_descr* %39, %struct.pdma_descr** %5, align 8
  %40 = load %struct.pdma_descr*, %struct.pdma_descr** %5, align 8
  %41 = getelementptr inbounds %struct.pdma_descr, %struct.pdma_descr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
