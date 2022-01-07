; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_get_lvl1_pble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_get_lvl1_pble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_hmc_pble_rsrc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gen_pool* }
%struct.gen_pool = type { i32 }
%struct.i40iw_pble_alloc = type { i32, i32, %struct.i40iw_pble_info }
%struct.i40iw_pble_info = type { i64, i32, i32 }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@I40IW_LEVEL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*)* @get_lvl1_pble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lvl1_pble(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_pble_alloc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %7 = alloca %struct.i40iw_pble_alloc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.gen_pool*, align 8
  %10 = alloca %struct.i40iw_pble_info*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  store %struct.i40iw_pble_alloc* %2, %struct.i40iw_pble_alloc** %7, align 8
  %11 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %12 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %11, i32 0, i32 2
  store %struct.i40iw_pble_info* %12, %struct.i40iw_pble_info** %10, align 8
  %13 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.gen_pool*, %struct.gen_pool** %15, align 8
  store %struct.gen_pool* %16, %struct.gen_pool** %9, align 8
  %17 = load %struct.gen_pool*, %struct.gen_pool** %9, align 8
  %18 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %19 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 3
  %22 = call i64 @gen_pool_alloc(%struct.gen_pool* %17, i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %3
  %29 = load i32, i32* @I40IW_LEVEL_1, align 4
  %30 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %31 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %10, align 8
  %35 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %37 = load %struct.gen_pool*, %struct.gen_pool** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = call i64 @gen_pool_virt_to_phys(%struct.gen_pool* %37, i64 %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @fpm_to_idx(%struct.i40iw_hmc_pble_rsrc* %36, i32 %41)
  %43 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %10, align 8
  %44 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %10, align 8
  %49 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %51 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %28, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @gen_pool_alloc(%struct.gen_pool*, i32) #1

declare dso_local i32 @fpm_to_idx(%struct.i40iw_hmc_pble_rsrc*, i32) #1

declare dso_local i64 @gen_pool_virt_to_phys(%struct.gen_pool*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
