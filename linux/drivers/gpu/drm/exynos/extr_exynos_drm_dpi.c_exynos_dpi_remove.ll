; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.exynos_dpi = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_dpi_remove(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.exynos_dpi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.exynos_dpi* @encoder_to_dpi(%struct.drm_encoder* %4)
  store %struct.exynos_dpi* %5, %struct.exynos_dpi** %3, align 8
  %6 = load %struct.exynos_dpi*, %struct.exynos_dpi** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %6, i32 0, i32 1
  %8 = call i32 @exynos_dpi_disable(i32* %7)
  %9 = load %struct.exynos_dpi*, %struct.exynos_dpi** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.exynos_dpi*, %struct.exynos_dpi** %3, align 8
  %15 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @drm_panel_detach(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local %struct.exynos_dpi* @encoder_to_dpi(%struct.drm_encoder*) #1

declare dso_local i32 @exynos_dpi_disable(i32*) #1

declare dso_local i32 @drm_panel_detach(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
