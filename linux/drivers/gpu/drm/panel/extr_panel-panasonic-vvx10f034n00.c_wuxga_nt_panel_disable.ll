; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.wuxga_nt_panel = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @wuxga_nt_panel_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wuxga_nt_panel_disable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.wuxga_nt_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.wuxga_nt_panel* @to_wuxga_nt_panel(%struct.drm_panel* %7)
  store %struct.wuxga_nt_panel* %8, %struct.wuxga_nt_panel** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %10 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %16 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mipi_dsi_shutdown_peripheral(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %20 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %25 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %26 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %31 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %32 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %30
  store i32 %37, i32* %35, align 4
  %38 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %39 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @backlight_update_status(%struct.TYPE_4__* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %23, %14
  %43 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %44 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.wuxga_nt_panel* @to_wuxga_nt_panel(%struct.drm_panel*) #1

declare dso_local i32 @mipi_dsi_shutdown_peripheral(i32) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
