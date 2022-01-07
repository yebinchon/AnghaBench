; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_unregister_te_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_unregister_te_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_dsi*)* @exynos_dsi_unregister_te_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_unregister_te_irq(%struct.exynos_dsi* %0) #0 {
  %2 = alloca %struct.exynos_dsi*, align 8
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %2, align 8
  %3 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %4 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @gpio_is_valid(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpio_to_irq(i32 %11)
  %13 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.exynos_dsi* %13)
  %15 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %16 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_free(i32 %17)
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @free_irq(i32, %struct.exynos_dsi*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
