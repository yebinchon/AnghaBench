; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_load_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_hw_load_state(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @NVVgaProtect(%struct.drm_device* %7, i32 %8, i32 1)
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %13 = call i32 @nv_load_state_ramdac(%struct.drm_device* %10, i32 %11, %struct.nv04_mode_state* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %17 = call i32 @nv_load_state_ext(%struct.drm_device* %14, i32 %15, %struct.nv04_mode_state* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %21 = call i32 @nouveau_hw_load_state_palette(%struct.drm_device* %18, i32 %19, %struct.nv04_mode_state* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %25 = call i32 @nv_load_state_vga(%struct.drm_device* %22, i32 %23, %struct.nv04_mode_state* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @NVVgaProtect(%struct.drm_device* %26, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @NVVgaProtect(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nv_load_state_ramdac(%struct.drm_device*, i32, %struct.nv04_mode_state*) #1

declare dso_local i32 @nv_load_state_ext(%struct.drm_device*, i32, %struct.nv04_mode_state*) #1

declare dso_local i32 @nouveau_hw_load_state_palette(%struct.drm_device*, i32, %struct.nv04_mode_state*) #1

declare dso_local i32 @nv_load_state_vga(%struct.drm_device*, i32, %struct.nv04_mode_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
