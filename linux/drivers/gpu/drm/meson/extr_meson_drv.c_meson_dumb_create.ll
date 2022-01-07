; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32 }

@SZ_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)* @meson_dumb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %6, align 8
  %7 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %8 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = call i32 @DIV_ROUND_UP(i32 %13, i32 8)
  %15 = load i32, i32* @SZ_64, align 4
  %16 = call i32 @ALIGN(i32 %14, i32 %15)
  %17 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %18 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = call i32 @PAGE_ALIGN(i32 %25)
  %27 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %32 = call i32 @drm_gem_cma_dumb_create_internal(%struct.drm_file* %29, %struct.drm_device* %30, %struct.drm_mode_create_dumb* %31)
  ret i32 %32
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @drm_gem_cma_dumb_create_internal(%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
