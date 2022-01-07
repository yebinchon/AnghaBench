; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_dcs_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_dcs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.truly_nt35597 = type { i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"cmd 0x%x failed for dsi = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*, i32)* @truly_dcs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_dcs_write(%struct.drm_panel* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.truly_nt35597*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = call %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel* %8)
  store %struct.truly_nt35597* %9, %struct.truly_nt35597** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %13 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %10
  %18 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %19 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mipi_dsi_dcs_write(i32 %24, i32 %25, i32* null, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %31 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @DRM_DEV_ERROR(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mipi_dsi_dcs_write(i32, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
