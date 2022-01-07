; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_plane_atomic_print_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_plane_atomic_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_plane_state = type { %struct.drm_plane* }
%struct.drm_plane = type { i64 }
%struct.ltdc_device = type { %struct.fps_info* }
%struct.fps_info = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"\09user_updates=%dfps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.drm_plane_state*)* @ltdc_plane_atomic_print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltdc_plane_atomic_print_state(%struct.drm_printer* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca %struct.ltdc_device*, align 8
  %7 = alloca %struct.fps_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 0
  %12 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  store %struct.drm_plane* %12, %struct.drm_plane** %5, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %14 = call %struct.ltdc_device* @plane_to_ltdc(%struct.drm_plane* %13)
  store %struct.ltdc_device* %14, %struct.ltdc_device** %6, align 8
  %15 = load %struct.ltdc_device*, %struct.ltdc_device** %6, align 8
  %16 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %15, i32 0, i32 0
  %17 = load %struct.fps_info*, %struct.fps_info** %16, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fps_info, %struct.fps_info* %17, i64 %20
  store %struct.fps_info* %21, %struct.fps_info** %7, align 8
  %22 = call i32 (...) @ktime_get()
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.fps_info*, %struct.fps_info** %7, align 8
  %25 = getelementptr inbounds %struct.fps_info, %struct.fps_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ktime_sub(i32 %23, i32 %26)
  %28 = call i32 @ktime_to_ms(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %30 = load %struct.fps_info*, %struct.fps_info** %7, align 8
  %31 = getelementptr inbounds %struct.fps_info, %struct.fps_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @DIV_ROUND_CLOSEST(i32 %33, i32 %34)
  %36 = call i32 @drm_printf(%struct.drm_printer* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.fps_info*, %struct.fps_info** %7, align 8
  %39 = getelementptr inbounds %struct.fps_info, %struct.fps_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.fps_info*, %struct.fps_info** %7, align 8
  %41 = getelementptr inbounds %struct.fps_info, %struct.fps_info* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  ret void
}

declare dso_local %struct.ltdc_device* @plane_to_ltdc(%struct.drm_plane*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
