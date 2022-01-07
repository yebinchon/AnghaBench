; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_smc.c_amdgpu_si_send_msg_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_smc.c_amdgpu_si_send_msg_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@PPSMC_Result_Failed = common dso_local global i32 0, align 4
@SMC_MESSAGE_0 = common dso_local global i32 0, align 4
@SMC_RESP_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_si_send_msg_to_smc(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call i32 @amdgpu_si_is_smc_running(%struct.amdgpu_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @PPSMC_Result_Failed, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* @SMC_MESSAGE_0, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @WREG32(i32 %14, i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %31, %13
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i32, i32* @SMC_RESP_0, align 4
  %25 = call i64 @RREG32(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %34

29:                                               ; preds = %23
  %30 = call i32 @udelay(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %17

34:                                               ; preds = %28, %17
  %35 = load i32, i32* @SMC_RESP_0, align 4
  %36 = call i64 @RREG32(i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @amdgpu_si_is_smc_running(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
