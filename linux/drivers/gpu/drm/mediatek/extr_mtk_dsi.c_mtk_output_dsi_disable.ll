; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_output_dsi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_output_dsi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"failed to disable the panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_output_dsi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_output_dsi_disable(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %3 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %15 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @drm_panel_disable(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %8
  %23 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %24 = call i32 @mtk_dsi_poweroff(%struct.mtk_dsi* %23)
  %25 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %26 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %19, %7
  ret void
}

declare dso_local i64 @drm_panel_disable(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mtk_dsi_poweroff(%struct.mtk_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
