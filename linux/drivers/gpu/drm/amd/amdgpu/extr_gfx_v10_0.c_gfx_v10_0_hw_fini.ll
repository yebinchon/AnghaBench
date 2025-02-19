; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@amdgpu_async_gfx_ring = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"KGQ disable failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"KCQ disable failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"For SRIOV client, shouldn't do anything.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v10_0_hw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_hw_fini(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %8, i32* %11, i32 0)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %13, i32* %16, i32 0)
  %18 = load i64, i64* @amdgpu_async_gfx_ring, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = call i32 @gfx_v10_0_kiq_disable_kgq(%struct.amdgpu_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = call i64 @amdgpu_gfx_disable_kcq(%struct.amdgpu_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

40:                                               ; preds = %34
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = call i32 @gfx_v10_0_cp_enable(%struct.amdgpu_device* %41, i32 0)
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = call i32 @gfx_v10_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %43, i32 0)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %46 = call i32 @gfx_v10_0_csb_vram_unpin(%struct.amdgpu_device* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %38
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @gfx_v10_0_kiq_disable_kgq(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @amdgpu_gfx_disable_kcq(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @gfx_v10_0_cp_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_enable_gui_idle_interrupt(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_csb_vram_unpin(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
