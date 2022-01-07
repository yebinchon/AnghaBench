; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_reset_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_reset_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@TTM_PL_TT = common dso_local global i64 0, align 8
@AMDGIM_FEATURE_GIM_FLR_VRAMLOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @amdgpu_device_reset_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_reset_sriov(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = call i32 @amdgpu_virt_request_full_gpu(%struct.amdgpu_device* %10, i32 1)
  store i32 %11, i32* %6, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = call i32 @amdgpu_virt_reset_gpu(%struct.amdgpu_device* %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %15
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = call i32 @amdgpu_amdkfd_pre_reset(%struct.amdgpu_device* %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = call i32 @amdgpu_device_ip_reinit_early_sriov(%struct.amdgpu_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %56

28:                                               ; preds = %20
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @TTM_PL_TT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @amdgpu_gtt_mgr_recover(i32* %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = call i32 @amdgpu_device_fw_loading(%struct.amdgpu_device* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %78

43:                                               ; preds = %28
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = call i32 @amdgpu_device_ip_reinit_late_sriov(%struct.amdgpu_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = call i32 @amdgpu_irq_gpu_reset_resume_helper(%struct.amdgpu_device* %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = call i32 @amdgpu_ib_ring_tests(%struct.amdgpu_device* %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %55 = call i32 @amdgpu_amdkfd_post_reset(%struct.amdgpu_device* %54)
  br label %56

56:                                               ; preds = %49, %48, %27
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %58 = call i32 @amdgpu_virt_init_data_exchange(%struct.amdgpu_device* %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = call i32 @amdgpu_virt_release_full_gpu(%struct.amdgpu_device* %59, i32 1)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %56
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @AMDGIM_FEATURE_GIM_FLR_VRAMLOST, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = call i32 @amdgpu_inc_vram_lost(%struct.amdgpu_device* %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = call i32 @amdgpu_device_recover_vram(%struct.amdgpu_device* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %71, %63, %56
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %41, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @amdgpu_virt_request_full_gpu(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_virt_reset_gpu(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_amdkfd_pre_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_reinit_early_sriov(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gtt_mgr_recover(i32*) #1

declare dso_local i32 @amdgpu_device_fw_loading(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_reinit_late_sriov(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_irq_gpu_reset_resume_helper(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ib_ring_tests(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_amdkfd_post_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_init_data_exchange(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_release_full_gpu(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_inc_vram_lost(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_recover_vram(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
