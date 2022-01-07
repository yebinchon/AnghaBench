; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_set_vga_render_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_set_vga_render_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmVGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_MEMORY_DISABLE = common dso_local global i32 0, align 4
@mmVGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@VGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@VGA_VSTATUS_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @dce_v11_0_set_vga_render_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_set_vga_render_state(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @mmVGA_HDP_CONTROL, align 4
  %7 = call i32 @RREG32(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VGA_HDP_CONTROL, align 4
  %13 = load i32, i32* @VGA_MEMORY_DISABLE, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %5, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VGA_HDP_CONTROL, align 4
  %18 = load i32, i32* @VGA_MEMORY_DISABLE, align 4
  %19 = call i32 @REG_SET_FIELD(i32 %16, i32 %17, i32 %18, i32 1)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* @mmVGA_HDP_CONTROL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @WREG32(i32 %21, i32 %22)
  %24 = load i32, i32* @mmVGA_RENDER_CONTROL, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VGA_RENDER_CONTROL, align 4
  %31 = load i32, i32* @VGA_VSTATUS_CNTL, align 4
  %32 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @VGA_RENDER_CONTROL, align 4
  %36 = load i32, i32* @VGA_VSTATUS_CNTL, align 4
  %37 = call i32 @REG_SET_FIELD(i32 %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @mmVGA_RENDER_CONTROL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @WREG32(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
