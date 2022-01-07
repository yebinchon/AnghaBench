; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_hmc_init_pble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_hmc_init_pble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_hmc_info* }
%struct.i40iw_hmc_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.i40iw_hmc_pble_rsrc = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@POOL_SHIFT = common dso_local global i32 0, align 4
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_hmc_init_pble(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_pble_rsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %6 = alloca %struct.i40iw_hmc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %8, i32 0, i32 0
  %10 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %9, align 8
  store %struct.i40iw_hmc_info* %10, %struct.i40iw_hmc_info** %6, align 8
  %11 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %12 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %19 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %21 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 4095
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %28 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 4095
  %31 = sub nsw i32 %26, %30
  %32 = ashr i32 %31, 3
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %2
  %34 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %35 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %45 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %47 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 3
  %51 = add nsw i32 %48, %50
  %52 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %53 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @POOL_SHIFT, align 4
  %55 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %56 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %59 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @gen_pool_create(i32 %61, i32 -1)
  %63 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %64 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %67 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %71 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %33
  br label %83

76:                                               ; preds = %33
  %77 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %78 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %79 = call i64 @add_pble_pool(%struct.i40iw_sc_dev* %77, %struct.i40iw_hmc_pble_rsrc* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %83

82:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %88

83:                                               ; preds = %81, %75
  %84 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %85 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %86 = call i32 @i40iw_destroy_pble_pool(%struct.i40iw_sc_dev* %84, %struct.i40iw_hmc_pble_rsrc* %85)
  %87 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %82
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @add_pble_pool(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*) #1

declare dso_local i32 @i40iw_destroy_pble_pool(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
