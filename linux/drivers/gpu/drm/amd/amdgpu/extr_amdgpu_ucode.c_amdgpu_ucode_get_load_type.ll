; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_get_load_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_get_load_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMDGPU_FW_LOAD_SMU = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_DIRECT = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown firmware load type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ucode_get_load_type(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 133, label %9
    i32 134, label %9
    i32 152, label %9
    i32 153, label %9
    i32 136, label %9
    i32 141, label %9
    i32 140, label %9
    i32 139, label %9
    i32 129, label %9
    i32 132, label %11
    i32 138, label %11
    i32 131, label %11
    i32 130, label %11
    i32 137, label %11
    i32 146, label %11
    i32 144, label %11
    i32 145, label %11
    i32 155, label %18
  ]

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %10 = load i32, i32* @AMDGPU_FW_LOAD_SMU, align 4
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @AMDGPU_FW_LOAD_DIRECT, align 4
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %11
  %17 = load i32, i32* @AMDGPU_FW_LOAD_PSP, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @AMDGPU_FW_LOAD_DIRECT, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* @AMDGPU_FW_LOAD_DIRECT, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %18, %16, %14, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
