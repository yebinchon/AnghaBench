; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_find_pd_index_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_find_pd_index_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hmc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@I40IW_HMC_PAGED_BP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_hmc_info*, i64, i64, i64, i64*, i64*)* @i40iw_find_pd_index_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_find_pd_index_limit(%struct.i40iw_hmc_info* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.i40iw_hmc_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.i40iw_hmc_info* %0, %struct.i40iw_hmc_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %16 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = mul i64 %28, %29
  %31 = add i64 %21, %30
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = mul i64 %39, %40
  %42 = add i64 %32, %41
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @I40IW_HMC_PAGED_BP_SIZE, align 8
  %45 = udiv i64 %43, %44
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %14, align 8
  %48 = sub i64 %47, 1
  %49 = load i64, i64* @I40IW_HMC_PAGED_BP_SIZE, align 8
  %50 = udiv i64 %48, %49
  %51 = load i64*, i64** %12, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
