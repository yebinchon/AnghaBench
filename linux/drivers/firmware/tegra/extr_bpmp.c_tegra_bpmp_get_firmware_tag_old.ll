; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_get_firmware_tag_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_get_firmware_tag_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.mrq_query_tag_request = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { %struct.TYPE_2__, i32, i32 }

@TAG_SZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MRQ_QUERY_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, i8*, i64)* @tegra_bpmp_get_firmware_tag_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_get_firmware_tag_old(%struct.tegra_bpmp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_bpmp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mrq_query_tag_request, align 8
  %9 = alloca %struct.tegra_bpmp_message, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @TAG_SZ, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @TAG_SZ, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* @GFP_DMA32, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @dma_alloc_coherent(i32 %23, i64 %24, i32* %11, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %20
  %35 = bitcast %struct.mrq_query_tag_request* %8 to %struct.tegra_bpmp_message*
  %36 = call i32 @memset(%struct.tegra_bpmp_message* %35, i32 0, i32 24)
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds %struct.mrq_query_tag_request, %struct.mrq_query_tag_request* %8, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = call i32 @memset(%struct.tegra_bpmp_message* %9, i32 0, i32 24)
  %40 = load i32, i32* @MRQ_QUERY_TAG, align 4
  %41 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = bitcast %struct.mrq_query_tag_request* %8 to %struct.tegra_bpmp_message*
  %43 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.tegra_bpmp_message* %42, %struct.tegra_bpmp_message** %44, align 8
  %45 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 24, i32* %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @local_irq_save(i64 %47)
  %49 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %50 = call i32 @tegra_bpmp_transfer_atomic(%struct.tegra_bpmp* %49, %struct.tegra_bpmp_message* %9)
  store i32 %50, i32* %13, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @local_irq_restore(i64 %51)
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %34
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* @TAG_SZ, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %34
  %61 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @TAG_SZ, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @dma_free_coherent(i32 %63, i64 %64, i8* %65, i32 %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %60, %31, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @tegra_bpmp_transfer_atomic(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
