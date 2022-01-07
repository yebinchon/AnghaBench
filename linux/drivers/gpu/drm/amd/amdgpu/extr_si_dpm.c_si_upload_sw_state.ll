; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ps = type { i32 }
%struct.si_power_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.si_ps = type { i32 }

@SISLANDS_SMC_STATETABLE = common dso_local global i32 0, align 4
@driverState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ps*)* @si_upload_sw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_upload_sw_state(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ps*, align 8
  %6 = alloca %struct.si_power_info*, align 8
  %7 = alloca %struct.si_ps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %5, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %12)
  store %struct.si_power_info* %13, %struct.si_power_info** %6, align 8
  %14 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %15 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %14)
  store %struct.si_ps* %15, %struct.si_ps** %7, align 8
  %16 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %17 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SISLANDS_SMC_STATETABLE, align 4
  %20 = load i32, i32* @driverState, align 4
  %21 = call i32 @offsetof(i32 %19, i32 %20)
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %24 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 4, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %32 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @memset(i32* %34, i32 0, i32 %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @si_convert_power_state_to_smc(%struct.amdgpu_device* %37, %struct.amdgpu_ps* %38, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %2
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %51 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device* %46, i32 %47, i32* %48, i32 %49, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %43
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @si_convert_power_state_to_smc(%struct.amdgpu_device*, %struct.amdgpu_ps*, i32*) #1

declare dso_local i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
