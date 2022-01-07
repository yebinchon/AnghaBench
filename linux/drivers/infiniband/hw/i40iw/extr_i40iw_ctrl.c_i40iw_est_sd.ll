; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_est_sd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_est_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i64 }
%struct.i40iw_hmc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@I40IW_HMC_IW_QP = common dso_local global i32 0, align 4
@I40IW_HMC_IW_PBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_info*)* @i40iw_est_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_est_sd(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.i40iw_hmc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  store %struct.i40iw_hmc_info* %1, %struct.i40iw_hmc_info** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @I40IW_HMC_IW_QP, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @I40IW_HMC_IW_PBLE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %15 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %23 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %21, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %43 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* @I40IW_HMC_IW_PBLE, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %51 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* @I40IW_HMC_IW_PBLE, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %49, %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %41, %36
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 2097151
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 21
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 21
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %110, label %77

77:                                               ; preds = %72
  %78 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %79 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* @I40IW_HMC_IW_PBLE, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %87 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* @I40IW_HMC_IW_PBLE, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %85, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 2097151
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %77
  %99 = load i32, i32* %6, align 4
  %100 = ashr i32 %99, 21
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %109

104:                                              ; preds = %77
  %105 = load i32, i32* %6, align 4
  %106 = ashr i32 %105, 21
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %104, %98
  br label %110

110:                                              ; preds = %109, %72
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
