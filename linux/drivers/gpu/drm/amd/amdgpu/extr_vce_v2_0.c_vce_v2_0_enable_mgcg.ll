; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_enable_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_enable_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_VCE_MGCG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32)* @vce_v2_0_enable_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v2_0_enable_mgcg(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_CG_SUPPORT_VCE_MGCG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = call i32 @vce_v2_0_set_sw_cg(%struct.amdgpu_device* %20, i32 1)
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = call i32 @vce_v2_0_set_dyn_cg(%struct.amdgpu_device* %23, i32 1)
  br label %25

25:                                               ; preds = %22, %19
  br label %38

26:                                               ; preds = %9, %3
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = call i32 @vce_v2_0_disable_cg(%struct.amdgpu_device* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = call i32 @vce_v2_0_set_sw_cg(%struct.amdgpu_device* %32, i32 0)
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = call i32 @vce_v2_0_set_dyn_cg(%struct.amdgpu_device* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %25
  ret void
}

declare dso_local i32 @vce_v2_0_set_sw_cg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @vce_v2_0_set_dyn_cg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @vce_v2_0_disable_cg(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
