; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_power_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_power_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a5xx_power_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %4, align 8
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %9 = call i64 @adreno_is_a530(%struct.adreno_gpu* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %13 = call i32 @a530_lm_setup(%struct.msm_gpu* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %16 = call i32 @a540_lm_setup(%struct.msm_gpu* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %19 = call i32 @a5xx_pc_init(%struct.msm_gpu* %18)
  %20 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %21 = call i32 @a5xx_gpmu_init(%struct.msm_gpu* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %28 = call i32 @a5xx_lm_enable(%struct.msm_gpu* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i64 @adreno_is_a530(%struct.adreno_gpu*) #1

declare dso_local i32 @a530_lm_setup(%struct.msm_gpu*) #1

declare dso_local i32 @a540_lm_setup(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_pc_init(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_gpmu_init(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_lm_enable(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
