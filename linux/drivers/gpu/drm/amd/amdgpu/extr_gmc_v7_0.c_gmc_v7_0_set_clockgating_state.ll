; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_set_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_set_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gmc_v7_0_set_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v7_0_set_clockgating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AMD_IS_APU, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @gmc_v7_0_enable_mc_mgcg(%struct.amdgpu_device* %21, i32 %22)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @gmc_v7_0_enable_mc_ls(%struct.amdgpu_device* %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %13
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gmc_v7_0_enable_bif_mgls(%struct.amdgpu_device* %28, i32 %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @gmc_v7_0_enable_hdp_mgcg(%struct.amdgpu_device* %31, i32 %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @gmc_v7_0_enable_hdp_ls(%struct.amdgpu_device* %34, i32 %35)
  ret i32 0
}

declare dso_local i32 @gmc_v7_0_enable_mc_mgcg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v7_0_enable_mc_ls(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v7_0_enable_bif_mgls(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v7_0_enable_hdp_mgcg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v7_0_enable_hdp_ls(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
