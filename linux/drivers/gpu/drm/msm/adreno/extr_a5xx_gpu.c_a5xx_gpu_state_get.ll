; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_gpu_state_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_gpu_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu_state = type { i32 }
%struct.msm_gpu = type { i32 }
%struct.a5xx_gpu_state = type { %struct.msm_gpu_state }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_gpu_state* (%struct.msm_gpu*)* @a5xx_gpu_state_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_gpu_state* @a5xx_gpu_state_get(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu_state*, align 8
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu_state*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.a5xx_gpu_state* @kzalloc(i32 4, i32 %5)
  store %struct.a5xx_gpu_state* %6, %struct.a5xx_gpu_state** %4, align 8
  %7 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %8 = icmp ne %struct.a5xx_gpu_state* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.msm_gpu_state* @ERR_PTR(i32 %11)
  store %struct.msm_gpu_state* %12, %struct.msm_gpu_state** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %15 = call i32 @a5xx_set_hwcg(%struct.msm_gpu* %14, i32 0)
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %18 = getelementptr inbounds %struct.a5xx_gpu_state, %struct.a5xx_gpu_state* %17, i32 0, i32 0
  %19 = call i32 @adreno_gpu_state_get(%struct.msm_gpu* %16, %struct.msm_gpu_state* %18)
  %20 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %21 = load i32, i32* @REG_A5XX_RBBM_STATUS, align 4
  %22 = call i32 @gpu_read(%struct.msm_gpu* %20, i32 %21)
  %23 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %24 = getelementptr inbounds %struct.a5xx_gpu_state, %struct.a5xx_gpu_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %27 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %28 = call i32 @a5xx_gpu_state_get_hlsq_regs(%struct.msm_gpu* %26, %struct.a5xx_gpu_state* %27)
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %30 = call i32 @a5xx_set_hwcg(%struct.msm_gpu* %29, i32 1)
  %31 = load %struct.a5xx_gpu_state*, %struct.a5xx_gpu_state** %4, align 8
  %32 = getelementptr inbounds %struct.a5xx_gpu_state, %struct.a5xx_gpu_state* %31, i32 0, i32 0
  store %struct.msm_gpu_state* %32, %struct.msm_gpu_state** %2, align 8
  br label %33

33:                                               ; preds = %13, %9
  %34 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  ret %struct.msm_gpu_state* %34
}

declare dso_local %struct.a5xx_gpu_state* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_gpu_state* @ERR_PTR(i32) #1

declare dso_local i32 @a5xx_set_hwcg(%struct.msm_gpu*, i32) #1

declare dso_local i32 @adreno_gpu_state_get(%struct.msm_gpu*, %struct.msm_gpu_state*) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @a5xx_gpu_state_get_hlsq_regs(%struct.msm_gpu*, %struct.a5xx_gpu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
