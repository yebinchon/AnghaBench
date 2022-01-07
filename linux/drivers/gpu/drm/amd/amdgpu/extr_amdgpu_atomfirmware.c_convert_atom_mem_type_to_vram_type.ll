; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_convert_atom_mem_type_to_vram_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_convert_atom_mem_type_to_vram_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_DDR2 = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_DDR3 = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_DDR4 = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_GDDR5 = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_HBM = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_GDDR6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @convert_atom_mem_type_to_vram_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_atom_mem_type_to_vram_type(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AMD_IS_APU, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %20 [
    i32 133, label %14
    i32 130, label %14
    i32 132, label %16
    i32 129, label %16
    i32 131, label %18
    i32 128, label %18
  ]

14:                                               ; preds = %12, %12
  %15 = load i32, i32* @AMDGPU_VRAM_TYPE_DDR2, align 4
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %12, %12
  %17 = load i32, i32* @AMDGPU_VRAM_TYPE_DDR3, align 4
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %12, %12
  %19 = load i32, i32* @AMDGPU_VRAM_TYPE_DDR4, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @AMDGPU_VRAM_TYPE_UNKNOWN, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  br label %34

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %31 [
    i32 136, label %25
    i32 134, label %27
    i32 135, label %29
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @AMDGPU_VRAM_TYPE_GDDR5, align 4
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @AMDGPU_VRAM_TYPE_HBM, align 4
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @AMDGPU_VRAM_TYPE_GDDR6, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @AMDGPU_VRAM_TYPE_UNKNOWN, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %25
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
