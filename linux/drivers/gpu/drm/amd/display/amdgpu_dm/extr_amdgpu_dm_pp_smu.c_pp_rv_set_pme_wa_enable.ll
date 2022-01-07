; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_rv_set_pme_wa_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_rv_set_pme_wa_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.amd_pm_funcs*, i8* }
%struct.amd_pm_funcs = type { i32 (i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_rv_set_pme_wa_enable(%struct.pp_smu* %0) #0 {
  %2 = alloca %struct.pp_smu*, align 8
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.amd_pm_funcs*, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %2, align 8
  %7 = load %struct.pp_smu*, %struct.pp_smu** %2, align 8
  %8 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %7, i32 0, i32 0
  %9 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  store %struct.dc_context* %9, %struct.dc_context** %3, align 8
  %10 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %11 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %19, align 8
  store %struct.amd_pm_funcs* %20, %struct.amd_pm_funcs** %6, align 8
  %21 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %6, align 8
  %22 = icmp ne %struct.amd_pm_funcs* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %6, align 8
  %25 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %24, i32 0, i32 0
  %26 = load i32 (i8*)*, i32 (i8*)** %25, align 8
  %27 = icmp ne i32 (i8*)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %6, align 8
  %30 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %29, i32 0, i32 0
  %31 = load i32 (i8*)*, i32 (i8*)** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 %31(i8* %32)
  br label %45

34:                                               ; preds = %23, %1
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = call i32 @smu_notify_smu_enable_pwe(%struct.TYPE_4__* %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %28
  ret void
}

declare dso_local i32 @smu_notify_smu_enable_pwe(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
