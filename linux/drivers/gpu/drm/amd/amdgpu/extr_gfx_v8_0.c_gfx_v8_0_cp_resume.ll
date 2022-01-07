; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_cp_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_cp_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AMD_IS_APU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call i32 @gfx_v8_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %12, i32 0)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = call i32 @gfx_v8_0_kiq_resume(%struct.amdgpu_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = call i32 @gfx_v8_0_cp_gfx_resume(%struct.amdgpu_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %45

28:                                               ; preds = %21
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = call i32 @gfx_v8_0_kcq_resume(%struct.amdgpu_device* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %28
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = call i32 @gfx_v8_0_cp_test_all_rings(%struct.amdgpu_device* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = call i32 @gfx_v8_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %43, i32 1)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %40, %33, %26, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @gfx_v8_0_enable_gui_idle_interrupt(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v8_0_kiq_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_cp_gfx_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_kcq_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_cp_test_all_rings(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
