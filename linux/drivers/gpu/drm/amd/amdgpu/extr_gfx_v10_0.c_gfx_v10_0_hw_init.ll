; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@amdgpu_emu_mode = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_DIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"SMC firmware status is not correct\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v10_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_hw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %9 = call i32 @gfx_v10_0_csb_vram_pin(%struct.amdgpu_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load i32, i32* @amdgpu_emu_mode, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %19 = call i32 @gfx_v10_0_init_golden_registers(%struct.amdgpu_device* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AMDGPU_FW_LOAD_DIRECT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = call i32 @smu_load_microcode(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %27
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = call i32 @smu_check_fw_status(i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %72

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = call i32 @gfx_v10_0_check_grbm_cam_remapping(%struct.amdgpu_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %51 = call i32 @gfx_v10_0_setup_grbm_cam_remapping(%struct.amdgpu_device* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = call i32 @gfx_v10_0_constants_init(%struct.amdgpu_device* %53)
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %56 = call i32 @gfx_v10_0_rlc_resume(%struct.amdgpu_device* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %72

61:                                               ; preds = %52
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = call i32 @gfx_v10_0_tcp_harvest(%struct.amdgpu_device* %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %65 = call i32 @gfx_v10_0_cp_resume(%struct.amdgpu_device* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %68, %59, %41, %33, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @gfx_v10_0_csb_vram_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_init_golden_registers(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_load_microcode(i32*) #1

declare dso_local i32 @smu_check_fw_status(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gfx_v10_0_check_grbm_cam_remapping(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_setup_grbm_cam_remapping(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_constants_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_tcp_harvest(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_cp_resume(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
