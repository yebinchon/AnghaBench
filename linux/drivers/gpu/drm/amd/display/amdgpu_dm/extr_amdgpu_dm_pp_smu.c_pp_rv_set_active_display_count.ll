; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_rv_set_active_display_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_rv_set_active_display_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amd_pm_funcs*, i8* }
%struct.amd_pm_funcs = type { i32 (i8*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_rv_set_active_display_count(%struct.pp_smu* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_smu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amd_pm_funcs*, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pp_smu*, %struct.pp_smu** %3, align 8
  %10 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %9, i32 0, i32 0
  %11 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  store %struct.dc_context* %11, %struct.dc_context** %5, align 8
  %12 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %13 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %21, align 8
  store %struct.amd_pm_funcs* %22, %struct.amd_pm_funcs** %8, align 8
  %23 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %8, align 8
  %24 = icmp ne %struct.amd_pm_funcs* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %8, align 8
  %27 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %26, i32 0, i32 0
  %28 = load i32 (i8*, i32)*, i32 (i8*, i32)** %27, align 8
  %29 = icmp ne i32 (i8*, i32)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %2
  br label %38

31:                                               ; preds = %25
  %32 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %8, align 8
  %33 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %32, i32 0, i32 0
  %34 = load i32 (i8*, i32)*, i32 (i8*, i32)** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 %34(i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
