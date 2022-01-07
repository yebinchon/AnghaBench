; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tc_data = type { %struct.edid*, %struct.TYPE_2__, i32, i32 }
%struct.edid = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to read display props: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @tc_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.tc_data*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.tc_data* @connector_to_tc(%struct.drm_connector* %8)
  store %struct.tc_data* %9, %struct.tc_data** %4, align 8
  %10 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %11 = call i32 @tc_get_display_props(%struct.tc_data* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %16 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %22 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @drm_panel_get_modes(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %53

29:                                               ; preds = %20
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %32 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %30, i32* %33)
  store %struct.edid* %34, %struct.edid** %5, align 8
  %35 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %36 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %35, i32 0, i32 0
  %37 = load %struct.edid*, %struct.edid** %36, align 8
  %38 = call i32 @kfree(%struct.edid* %37)
  %39 = load %struct.edid*, %struct.edid** %5, align 8
  %40 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %41 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %40, i32 0, i32 0
  store %struct.edid* %39, %struct.edid** %41, align 8
  %42 = load %struct.edid*, %struct.edid** %5, align 8
  %43 = icmp ne %struct.edid* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %53

45:                                               ; preds = %29
  %46 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %47 = load %struct.edid*, %struct.edid** %5, align 8
  %48 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %46, %struct.edid* %47)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %50 = load %struct.edid*, %struct.edid** %5, align 8
  %51 = call i32 @drm_add_edid_modes(%struct.drm_connector* %49, %struct.edid* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %44, %27, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.tc_data* @connector_to_tc(%struct.drm_connector*) #1

declare dso_local i32 @tc_get_display_props(%struct.tc_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @drm_panel_get_modes(i32) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
