; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_dump_mmu_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_dump_mmu_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i64, i32 }

@ETNA_SEC_NONE = common dso_local global i64 0, align 8
@VIVS_MMUv2_STATUS = common dso_local global i32 0, align 4
@VIVS_MMUv2_SEC_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"MMU fault status 0x%08x\0A\00", align 1
@VIVS_MMUv2_STATUS_EXCEPTION0__MASK = common dso_local global i32 0, align 4
@VIVS_MMUv2_SEC_EXCEPTION_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"MMU %d fault addr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*)* @dump_mmu_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mmu_fault(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %7 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %8 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ETNA_SEC_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @VIVS_MMUv2_STATUS, align 4
  store i32 %13, i32* %3, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @VIVS_MMUv2_SEC_STATUS, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @gpu_read(%struct.etnaviv_gpu* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i8*, i32, ...) @dev_err_ratelimited(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %57, %16
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VIVS_MMUv2_STATUS_EXCEPTION0__MASK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 4
  %33 = shl i32 %30, %32
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %57

37:                                               ; preds = %28
  %38 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %39 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ETNA_SEC_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @VIVS_MMUv2_EXCEPTION_ADDR(i32 %44)
  store i32 %45, i32* %6, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @VIVS_MMUv2_SEC_EXCEPTION_ADDR, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %50 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @gpu_read(%struct.etnaviv_gpu* %53, i32 %54)
  %56 = call i32 (i32, i8*, i32, ...) @dev_err_ratelimited(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %48, %36
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %25

60:                                               ; preds = %25
  ret void
}

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, ...) #1

declare dso_local i32 @VIVS_MMUv2_EXCEPTION_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
