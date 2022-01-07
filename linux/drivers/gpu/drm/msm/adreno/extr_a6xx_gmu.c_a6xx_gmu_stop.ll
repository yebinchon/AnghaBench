; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gpu = type { %struct.TYPE_2__, %struct.a6xx_gmu }
%struct.TYPE_2__ = type { %struct.msm_gpu }
%struct.msm_gpu = type { i32 }
%struct.a6xx_gmu = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a6xx_gmu_stop(%struct.a6xx_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a6xx_gpu*, align 8
  %4 = alloca %struct.a6xx_gmu*, align 8
  %5 = alloca %struct.msm_gpu*, align 8
  store %struct.a6xx_gpu* %0, %struct.a6xx_gpu** %3, align 8
  %6 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %3, align 8
  %7 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %6, i32 0, i32 1
  store %struct.a6xx_gmu* %7, %struct.a6xx_gmu** %4, align 8
  %8 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %3, align 8
  %9 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.msm_gpu* %10, %struct.msm_gpu** %5, align 8
  %11 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %12 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_active(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %19 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %24 = call i32 @a6xx_gmu_force_off(%struct.a6xx_gmu* %23)
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %27 = call i32 @a6xx_gmu_shutdown(%struct.a6xx_gmu* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %30 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @icc_set_bw(i32 %31, i32 0, i32 0)
  %33 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %34 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IS_ERR_OR_NULL(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %40 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pm_runtime_put_sync(i32 %41)
  br label %43

43:                                               ; preds = %38, %28
  %44 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %45 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %48 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_bulk_disable_unprepare(i32 %46, i32 %49)
  %51 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %52 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pm_runtime_put_sync(i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %43, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pm_runtime_active(i32) #1

declare dso_local i32 @a6xx_gmu_force_off(%struct.a6xx_gmu*) #1

declare dso_local i32 @a6xx_gmu_shutdown(%struct.a6xx_gmu*) #1

declare dso_local i32 @icc_set_bw(i32, i32, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
