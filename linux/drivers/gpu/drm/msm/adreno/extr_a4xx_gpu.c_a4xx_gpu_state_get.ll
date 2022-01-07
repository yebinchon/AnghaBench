; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_gpu_state_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_gpu_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu_state = type { i32 }
%struct.msm_gpu = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_gpu_state* (%struct.msm_gpu*)* @a4xx_gpu_state_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_gpu_state* @a4xx_gpu_state_get(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu_state*, align 8
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.msm_gpu_state*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.msm_gpu_state* @kzalloc(i32 4, i32 %5)
  store %struct.msm_gpu_state* %6, %struct.msm_gpu_state** %4, align 8
  %7 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %4, align 8
  %8 = icmp ne %struct.msm_gpu_state* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.msm_gpu_state* @ERR_PTR(i32 %11)
  store %struct.msm_gpu_state* %12, %struct.msm_gpu_state** %2, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %15 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %4, align 8
  %16 = call i32 @adreno_gpu_state_get(%struct.msm_gpu* %14, %struct.msm_gpu_state* %15)
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %18 = load i32, i32* @REG_A4XX_RBBM_STATUS, align 4
  %19 = call i32 @gpu_read(%struct.msm_gpu* %17, i32 %18)
  %20 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %4, align 8
  %21 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %4, align 8
  store %struct.msm_gpu_state* %22, %struct.msm_gpu_state** %2, align 8
  br label %23

23:                                               ; preds = %13, %9
  %24 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  ret %struct.msm_gpu_state* %24
}

declare dso_local %struct.msm_gpu_state* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_gpu_state* @ERR_PTR(i32) #1

declare dso_local i32 @adreno_gpu_state_get(%struct.msm_gpu*, %struct.msm_gpu_state*) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
