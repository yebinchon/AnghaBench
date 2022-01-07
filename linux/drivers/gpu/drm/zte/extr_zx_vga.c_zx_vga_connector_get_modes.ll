; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.zx_vga = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@VGA_AUTO_DETECT_SEL = common dso_local global i64 0, align 8
@VGA_DETECT_SEL_NO_DEVICE = common dso_local global i32 0, align 4
@VGA_DETECT_SEL_HAS_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @zx_vga_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vga_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.zx_vga*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.zx_vga* @to_zx_vga(%struct.drm_connector* %7)
  store %struct.zx_vga* %8, %struct.zx_vga** %4, align 8
  %9 = load %struct.zx_vga*, %struct.zx_vga** %4, align 8
  %10 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VGA_AUTO_DETECT_SEL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @zx_writel(i64 %13, i32 0)
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = load %struct.zx_vga*, %struct.zx_vga** %4, align 8
  %17 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %15, i32* %19)
  store %struct.edid* %20, %struct.edid** %5, align 8
  %21 = load %struct.edid*, %struct.edid** %5, align 8
  %22 = icmp ne %struct.edid* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.zx_vga*, %struct.zx_vga** %4, align 8
  %25 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VGA_AUTO_DETECT_SEL, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @VGA_DETECT_SEL_NO_DEVICE, align 4
  %30 = call i32 @zx_writel(i64 %28, i32 %29)
  %31 = load %struct.zx_vga*, %struct.zx_vga** %4, align 8
  %32 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  store i32 0, i32* %2, align 4
  br label %50

33:                                               ; preds = %1
  %34 = load %struct.zx_vga*, %struct.zx_vga** %4, align 8
  %35 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VGA_AUTO_DETECT_SEL, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @VGA_DETECT_SEL_HAS_DEVICE, align 4
  %40 = call i32 @zx_writel(i64 %38, i32 %39)
  %41 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %42 = load %struct.edid*, %struct.edid** %5, align 8
  %43 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %41, %struct.edid* %42)
  %44 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %45 = load %struct.edid*, %struct.edid** %5, align 8
  %46 = call i32 @drm_add_edid_modes(%struct.drm_connector* %44, %struct.edid* %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.edid*, %struct.edid** %5, align 8
  %48 = call i32 @kfree(%struct.edid* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %33, %23
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.zx_vga* @to_zx_vga(%struct.drm_connector*) #1

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
