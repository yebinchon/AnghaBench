; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_connector.c_mdp4_lvds_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_connector.c_mdp4_lvds_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.mdp4_lvds_connector = type { %struct.drm_encoder* }
%struct.drm_encoder = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"requested=%ld, actual=%ld\00", align 1
@MODE_CLOCK_RANGE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @mdp4_lvds_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp4_lvds_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.mdp4_lvds_connector*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.mdp4_lvds_connector* @to_mdp4_lvds_connector(%struct.drm_connector* %10)
  store %struct.mdp4_lvds_connector* %11, %struct.mdp4_lvds_connector** %6, align 8
  %12 = load %struct.mdp4_lvds_connector*, %struct.mdp4_lvds_connector** %6, align 8
  %13 = getelementptr inbounds %struct.mdp4_lvds_connector, %struct.mdp4_lvds_connector* %12, i32 0, i32 0
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %7, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 1000, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @mdp4_lcdc_round_pixclk(%struct.drm_encoder* %20, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @MODE_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.mdp4_lvds_connector* @to_mdp4_lvds_connector(%struct.drm_connector*) #1

declare dso_local i64 @mdp4_lcdc_round_pixclk(%struct.drm_encoder*, i64) #1

declare dso_local i32 @DBG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
