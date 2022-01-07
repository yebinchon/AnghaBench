; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a2xx_gpu = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a2xx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2xx_destroy(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a2xx_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %5)
  store %struct.adreno_gpu* %6, %struct.adreno_gpu** %3, align 8
  %7 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %8 = call %struct.a2xx_gpu* @to_a2xx_gpu(%struct.adreno_gpu* %7)
  store %struct.a2xx_gpu* %8, %struct.a2xx_gpu** %4, align 8
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %10 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %14 = call i32 @adreno_gpu_cleanup(%struct.adreno_gpu* %13)
  %15 = load %struct.a2xx_gpu*, %struct.a2xx_gpu** %4, align 8
  %16 = call i32 @kfree(%struct.a2xx_gpu* %15)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a2xx_gpu* @to_a2xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @adreno_gpu_cleanup(%struct.adreno_gpu*) #1

declare dso_local i32 @kfree(%struct.a2xx_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
