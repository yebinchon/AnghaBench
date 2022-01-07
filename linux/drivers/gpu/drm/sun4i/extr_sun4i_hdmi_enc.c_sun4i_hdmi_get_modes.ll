; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.sun4i_hdmi = type { i32, i64, i32, i64 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Monitor is %s monitor\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"an HDMI\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"a DVI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @sun4i_hdmi_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_hdmi_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.sun4i_hdmi*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.sun4i_hdmi* @drm_connector_to_sun4i_hdmi(%struct.drm_connector* %7)
  store %struct.sun4i_hdmi* %8, %struct.sun4i_hdmi** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %11 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %17 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i64 [ %12, %14 ], [ %19, %15 ]
  %22 = trunc i64 %21 to i32
  %23 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %9, i32 %22)
  store %struct.edid* %23, %struct.edid** %5, align 8
  %24 = load %struct.edid*, %struct.edid** %5, align 8
  %25 = icmp ne %struct.edid* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.edid*, %struct.edid** %5, align 8
  %29 = call i64 @drm_detect_hdmi_monitor(%struct.edid* %28)
  %30 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %31 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %33 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %40 = load %struct.edid*, %struct.edid** %5, align 8
  %41 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %39, %struct.edid* %40)
  %42 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %43 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.edid*, %struct.edid** %5, align 8
  %46 = call i32 @cec_s_phys_addr_from_edid(i32 %44, %struct.edid* %45)
  %47 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %48 = load %struct.edid*, %struct.edid** %5, align 8
  %49 = call i32 @drm_add_edid_modes(%struct.drm_connector* %47, %struct.edid* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.edid*, %struct.edid** %5, align 8
  %51 = call i32 @kfree(%struct.edid* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %27, %26
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.sun4i_hdmi* @drm_connector_to_sun4i_hdmi(%struct.drm_connector*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i64 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @cec_s_phys_addr_from_edid(i32, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
