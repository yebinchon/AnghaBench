; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_osd1_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_osd1_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VIU_OSD1_FIFO_CTRL_STAT = common dso_local global i32 0, align 4
@VIU_OSD1_CTRL_STAT2 = common dso_local global i32 0, align 4
@VIU_SW_RESET_OSD1 = common dso_local global i32 0, align 4
@VIU_SW_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_viu_osd1_reset(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %5 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %6 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @VIU_OSD1_FIFO_CTRL_STAT, align 4
  %9 = call i64 @_REG(i32 %8)
  %10 = add nsw i64 %7, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %13 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @VIU_OSD1_CTRL_STAT2, align 4
  %16 = call i64 @_REG(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @VIU_SW_RESET_OSD1, align 4
  %20 = load i32, i32* @VIU_SW_RESET_OSD1, align 4
  %21 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %22 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @VIU_SW_RESET, align 4
  %25 = call i64 @_REG(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @writel_bits_relaxed(i32 %19, i32 %20, i64 %26)
  %28 = load i32, i32* @VIU_SW_RESET_OSD1, align 4
  %29 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @VIU_SW_RESET, align 4
  %33 = call i64 @_REG(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writel_bits_relaxed(i32 %28, i32 0, i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %38 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @VIU_OSD1_FIFO_CTRL_STAT, align 4
  %41 = call i64 @_REG(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @writel_relaxed(i32 %36, i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %46 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @VIU_OSD1_CTRL_STAT2, align 4
  %49 = call i64 @_REG(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @writel_relaxed(i32 %44, i64 %50)
  %52 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %53 = call i32 @meson_viu_load_matrix(%struct.meson_drm* %52)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @meson_viu_load_matrix(%struct.meson_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
