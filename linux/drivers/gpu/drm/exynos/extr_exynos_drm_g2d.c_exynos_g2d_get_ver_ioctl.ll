; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_exynos_g2d_get_ver_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_exynos_g2d_get_ver_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_exynos_g2d_get_ver = type { i32, i32 }

@G2D_HW_MAJOR_VER = common dso_local global i32 0, align 4
@G2D_HW_MINOR_VER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_g2d_get_ver_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_exynos_g2d_get_ver*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.drm_exynos_g2d_get_ver*
  store %struct.drm_exynos_g2d_get_ver* %9, %struct.drm_exynos_g2d_get_ver** %7, align 8
  %10 = load i32, i32* @G2D_HW_MAJOR_VER, align 4
  %11 = load %struct.drm_exynos_g2d_get_ver*, %struct.drm_exynos_g2d_get_ver** %7, align 8
  %12 = getelementptr inbounds %struct.drm_exynos_g2d_get_ver, %struct.drm_exynos_g2d_get_ver* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @G2D_HW_MINOR_VER, align 4
  %14 = load %struct.drm_exynos_g2d_get_ver*, %struct.drm_exynos_g2d_get_ver** %7, align 8
  %15 = getelementptr inbounds %struct.drm_exynos_g2d_get_ver, %struct.drm_exynos_g2d_get_ver* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
