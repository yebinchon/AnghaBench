; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_acpi_get_backlight_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_acpi_get_backlight_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.amdgpu_dm_backlight_caps = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_acpi_get_backlight_caps(%struct.amdgpu_device* %0, %struct.amdgpu_dm_backlight_caps* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_dm_backlight_caps*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_dm_backlight_caps* %1, %struct.amdgpu_dm_backlight_caps** %4, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_dm_backlight_caps*, %struct.amdgpu_dm_backlight_caps** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_dm_backlight_caps, %struct.amdgpu_dm_backlight_caps* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.amdgpu_dm_backlight_caps*, %struct.amdgpu_dm_backlight_caps** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_dm_backlight_caps, %struct.amdgpu_dm_backlight_caps* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amdgpu_dm_backlight_caps*, %struct.amdgpu_dm_backlight_caps** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_dm_backlight_caps, %struct.amdgpu_dm_backlight_caps* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.amdgpu_dm_backlight_caps*, %struct.amdgpu_dm_backlight_caps** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_dm_backlight_caps, %struct.amdgpu_dm_backlight_caps* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %12, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
