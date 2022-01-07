; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bios.c_amdgpu_get_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bios.c_amdgpu_get_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Unable to locate a BIOS ROM\0A\00", align 1
@CHIP_VEGA10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_get_bios(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %5 = call i64 @amdgpu_atrm_get_bios(%struct.amdgpu_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call i64 @amdgpu_acpi_vfct_bios(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %40

13:                                               ; preds = %8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = call i64 @igp_read_bios_from_vram(%struct.amdgpu_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %40

18:                                               ; preds = %13
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = call i64 @amdgpu_read_bios(%struct.amdgpu_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %40

23:                                               ; preds = %18
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = call i64 @amdgpu_read_bios_from_rom(%struct.amdgpu_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %40

28:                                               ; preds = %23
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = call i64 @amdgpu_read_disabled_bios(%struct.amdgpu_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %40

33:                                               ; preds = %28
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = call i64 @amdgpu_read_platform_bios(%struct.amdgpu_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %40

38:                                               ; preds = %33
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

40:                                               ; preds = %37, %32, %27, %22, %17, %12, %7
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CHIP_VEGA10, align 8
  %45 = icmp sge i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %38
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @amdgpu_atrm_get_bios(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_acpi_vfct_bios(%struct.amdgpu_device*) #1

declare dso_local i64 @igp_read_bios_from_vram(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_read_bios(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_read_bios_from_rom(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_read_disabled_bios(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_read_platform_bios(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
