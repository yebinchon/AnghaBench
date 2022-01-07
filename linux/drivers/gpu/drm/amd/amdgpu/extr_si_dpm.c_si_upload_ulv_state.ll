; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_ulv_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_ulv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.si_power_info = type { i32, i32, %struct.TYPE_4__, %struct.si_ulv_param }
%struct.TYPE_4__ = type { i32 }
%struct.si_ulv_param = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@SISLANDS_SMC_STATETABLE = common dso_local global i32 0, align 4
@ULVState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_upload_ulv_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_upload_ulv_state(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.si_power_info*, align 8
  %4 = alloca %struct.si_ulv_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %9)
  store %struct.si_power_info* %10, %struct.si_power_info** %3, align 8
  %11 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %12 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %11, i32 0, i32 3
  store %struct.si_ulv_param* %12, %struct.si_ulv_param** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.si_ulv_param*, %struct.si_ulv_param** %4, align 8
  %14 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  %18 = load %struct.si_ulv_param*, %struct.si_ulv_param** %4, align 8
  %19 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %25 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SISLANDS_SMC_STATETABLE, align 4
  %28 = load i32, i32* @ULVState, align 4
  %29 = call i32 @offsetof(i32 %27, i32 %28)
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %32 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* %33, i32** %7, align 8
  store i32 4, i32* %8, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @memset(i32* %34, i32 0, i32 %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @si_populate_ulv_state(%struct.amdgpu_device* %37, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %23
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %48 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device* %43, i32 %44, i32* %45, i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %23
  br label %52

52:                                               ; preds = %51, %17, %1
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @si_populate_ulv_state(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
