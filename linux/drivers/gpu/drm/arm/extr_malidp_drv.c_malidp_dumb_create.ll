; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { %struct.malidp_drm* }
%struct.malidp_drm = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)* @malidp_dumb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  %7 = alloca %struct.malidp_drm*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %10, align 8
  store %struct.malidp_drm* %11, %struct.malidp_drm** %7, align 8
  %12 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %13 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @malidp_hw_get_pitch_align(i32 %14, i32 1)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = call i32 @DIV_ROUND_UP(i32 %22, i32 8)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ALIGN(i32 %23, i32 %24)
  %26 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %27 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %31 = call i32 @drm_gem_cma_dumb_create_internal(%struct.drm_file* %28, %struct.drm_device* %29, %struct.drm_mode_create_dumb* %30)
  ret i32 %31
}

declare dso_local i32 @malidp_hw_get_pitch_align(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @drm_gem_cma_dumb_create_internal(%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
