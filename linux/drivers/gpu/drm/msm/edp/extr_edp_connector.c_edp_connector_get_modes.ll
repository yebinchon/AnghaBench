; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_edp_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_edp_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edp_connector = type { %struct.msm_edp* }
%struct.msm_edp = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @edp_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edp_connector*, align 8
  %5 = alloca %struct.msm_edp*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.edp_connector* @to_edp_connector(%struct.drm_connector* %8)
  store %struct.edp_connector* %9, %struct.edp_connector** %4, align 8
  %10 = load %struct.edp_connector*, %struct.edp_connector** %4, align 8
  %11 = getelementptr inbounds %struct.edp_connector, %struct.edp_connector* %10, i32 0, i32 0
  %12 = load %struct.msm_edp*, %struct.msm_edp** %11, align 8
  store %struct.msm_edp* %12, %struct.msm_edp** %5, align 8
  store %struct.edid* null, %struct.edid** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.msm_edp*, %struct.msm_edp** %5, align 8
  %15 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %18 = call i32 @msm_edp_ctrl_get_panel_info(i32 %16, %struct.drm_connector* %17, %struct.edid** %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %25 = load %struct.edid*, %struct.edid** %6, align 8
  %26 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %24, %struct.edid* %25)
  %27 = load %struct.edid*, %struct.edid** %6, align 8
  %28 = icmp ne %struct.edid* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = load %struct.edid*, %struct.edid** %6, align 8
  %32 = call i32 @drm_add_edid_modes(%struct.drm_connector* %30, %struct.edid* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.edp_connector* @to_edp_connector(%struct.drm_connector*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @msm_edp_ctrl_get_panel_info(i32, %struct.drm_connector*, %struct.edid**) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
