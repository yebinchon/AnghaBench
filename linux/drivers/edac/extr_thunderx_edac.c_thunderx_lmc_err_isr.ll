; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_lmc_err_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_lmc_err_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.thunderx_lmc* }
%struct.thunderx_lmc = type { i64, i32, i32, %struct.lmc_err_ctx* }
%struct.lmc_err_ctx = type { i32, i8*, i8*, i8*, i8* }

@LMC_CHAR_MASK0 = common dso_local global i64 0, align 8
@LMC_CHAR_MASK2 = common dso_local global i64 0, align 8
@LMC_ECC_PARITY_TEST = common dso_local global i64 0, align 8
@LMC_INT = common dso_local global i64 0, align 8
@LMC_FADR = common dso_local global i64 0, align 8
@LMC_NXM_FADR = common dso_local global i64 0, align 8
@LMC_SCRAM_FADR = common dso_local global i64 0, align 8
@LMC_ECC_SYND = common dso_local global i64 0, align 8
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @thunderx_lmc_err_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_lmc_err_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.thunderx_lmc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lmc_err_ctx*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %10, %struct.mem_ctl_info** %5, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %12, align 8
  store %struct.thunderx_lmc* %13, %struct.thunderx_lmc** %6, align 8
  %14 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %15 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %18 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %17, i32 0, i32 3
  %19 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.lmc_err_ctx* %19)
  %21 = call i64 @ring_pos(i32 %16, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %23 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %22, i32 0, i32 3
  %24 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %24, i64 %25
  store %struct.lmc_err_ctx* %26, %struct.lmc_err_ctx** %8, align 8
  %27 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %28 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LMC_CHAR_MASK0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeq(i32 0, i64 %31)
  %33 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %34 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LMC_CHAR_MASK2, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writeq(i32 0, i64 %37)
  %39 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %40 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LMC_ECC_PARITY_TEST, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writeq(i32 2, i64 %43)
  %45 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %46 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LMC_INT, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @readq(i64 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %55 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LMC_FADR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i8* @readq(i64 %58)
  %60 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %63 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LMC_NXM_FADR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i8* @readq(i64 %66)
  %68 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %71 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LMC_SCRAM_FADR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i8* @readq(i64 %74)
  %76 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %79 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LMC_ECC_SYND, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i8* @readq(i64 %82)
  %84 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %87 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %91 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %90, i32 0, i32 1
  %92 = call i32 @atomic_set(i32* %91, i32 1)
  %93 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %8, align 8
  %94 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %97 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @LMC_INT, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writeq(i32 %95, i64 %100)
  %102 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %102
}

declare dso_local i64 @ring_pos(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lmc_err_ctx*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i8* @readq(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
