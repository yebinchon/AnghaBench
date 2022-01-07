; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.sti_hdmi_connector = type { %struct.sti_hdmi* }
%struct.sti_hdmi = type { i32, i64, i32 }
%struct.edid = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s : %dx%d cm\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hdmi monitor\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"dvi monitor\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Can't read HDMI EDID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @sti_hdmi_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hdmi_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.sti_hdmi_connector*, align 8
  %5 = alloca %struct.sti_hdmi*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector* %8)
  store %struct.sti_hdmi_connector* %9, %struct.sti_hdmi_connector** %4, align 8
  %10 = load %struct.sti_hdmi_connector*, %struct.sti_hdmi_connector** %4, align 8
  %11 = getelementptr inbounds %struct.sti_hdmi_connector, %struct.sti_hdmi_connector* %10, i32 0, i32 0
  %12 = load %struct.sti_hdmi*, %struct.sti_hdmi** %11, align 8
  store %struct.sti_hdmi* %12, %struct.sti_hdmi** %5, align 8
  %13 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %16 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %14, i32 %17)
  store %struct.edid* %18, %struct.edid** %6, align 8
  %19 = load %struct.edid*, %struct.edid** %6, align 8
  %20 = icmp ne %struct.edid* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.edid*, %struct.edid** %6, align 8
  %24 = call i64 @drm_detect_hdmi_monitor(%struct.edid* %23)
  %25 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %26 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %28 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %33 = load %struct.edid*, %struct.edid** %6, align 8
  %34 = getelementptr inbounds %struct.edid, %struct.edid* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.edid*, %struct.edid** %6, align 8
  %37 = getelementptr inbounds %struct.edid, %struct.edid* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %35, i32 %38)
  %40 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %41 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.edid*, %struct.edid** %6, align 8
  %44 = call i32 @cec_notifier_set_phys_addr_from_edid(i32 %42, %struct.edid* %43)
  %45 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %46 = load %struct.edid*, %struct.edid** %6, align 8
  %47 = call i32 @drm_add_edid_modes(%struct.drm_connector* %45, %struct.edid* %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %49 = load %struct.edid*, %struct.edid** %6, align 8
  %50 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %48, %struct.edid* %49)
  %51 = load %struct.edid*, %struct.edid** %6, align 8
  %52 = call i32 @kfree(%struct.edid* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %21
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i64 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*, i32, i32) #1

declare dso_local i32 @cec_notifier_set_phys_addr_from_edid(i32, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
