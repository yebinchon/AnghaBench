; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_set_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_set_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gfx_v7_0_set_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_set_clockgating_state(i8* %0, i32 %1) #0 {
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
  %15 = call i32 @gfx_v7_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %14, i32 0)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = call i32 @gfx_v7_0_enable_mgcg(%struct.amdgpu_device* %19, i32 1)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %22 = call i32 @gfx_v7_0_enable_cgcg(%struct.amdgpu_device* %21, i32 1)
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %25 = call i32 @gfx_v7_0_enable_cgcg(%struct.amdgpu_device* %24, i32 0)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %27 = call i32 @gfx_v7_0_enable_mgcg(%struct.amdgpu_device* %26, i32 0)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = call i32 @gfx_v7_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %29, i32 1)
  ret i32 0
}

declare dso_local i32 @gfx_v7_0_enable_gui_idle_interrupt(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v7_0_enable_mgcg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v7_0_enable_cgcg(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
