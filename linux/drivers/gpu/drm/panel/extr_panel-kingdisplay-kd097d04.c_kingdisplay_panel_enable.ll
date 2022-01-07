; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-kingdisplay-kd097d04.c_kingdisplay_panel_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-kingdisplay-kd097d04.c_kingdisplay_panel_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kingdisplay_panel = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable backlight %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @kingdisplay_panel_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kingdisplay_panel_enable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.kingdisplay_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.kingdisplay_panel* @to_kingdisplay_panel(%struct.drm_panel* %6)
  store %struct.kingdisplay_panel* %7, %struct.kingdisplay_panel** %4, align 8
  %8 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %9 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %15 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @backlight_enable(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %22 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DRM_DEV_ERROR(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %13
  %30 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %31 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %20, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.kingdisplay_panel* @to_kingdisplay_panel(%struct.drm_panel*) #1

declare dso_local i32 @backlight_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
