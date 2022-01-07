; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_framebuffer.c_sun4i_de_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_framebuffer.c_sun4i_de_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_atomic_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_atomic_state*)* @sun4i_de_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_de_atomic_check(%struct.drm_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %9 = call i32 @drm_atomic_helper_check_modeset(%struct.drm_device* %7, %struct.drm_atomic_state* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %17 = call i32 @drm_atomic_normalize_zpos(%struct.drm_device* %15, %struct.drm_atomic_state* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %25 = call i32 @drm_atomic_helper_check_planes(%struct.drm_device* %23, %struct.drm_atomic_state* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %20, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @drm_atomic_helper_check_modeset(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_normalize_zpos(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_check_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
