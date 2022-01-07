; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_panel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.msm_drm_private* }
%struct.TYPE_4__ = type { i32 }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.msm_kms*, i32, i32, i32)* }
%struct.msm_dsi = type { %struct.drm_panel*, i32, i32, i32 }
%struct.drm_panel = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Could not find panel for %u (%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @msm_dsi_manager_panel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_dsi_manager_panel_init(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.msm_kms*, align 8
  %8 = alloca %struct.msm_dsi*, align 8
  %9 = alloca %struct.msm_dsi*, align 8
  %10 = alloca %struct.msm_dsi*, align 8
  %11 = alloca %struct.msm_dsi*, align 8
  %12 = alloca %struct.drm_panel*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %6, align 8
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %19 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %18, i32 0, i32 0
  %20 = load %struct.msm_kms*, %struct.msm_kms** %19, align 8
  store %struct.msm_kms* %20, %struct.msm_kms** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %21)
  store %struct.msm_dsi* %22, %struct.msm_dsi** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.msm_dsi* @dsi_mgr_get_other_dsi(i32 %23)
  store %struct.msm_dsi* %24, %struct.msm_dsi** %9, align 8
  %25 = call i64 (...) @IS_DUAL_DSI()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @IS_MASTER_DSI_LINK(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.msm_dsi*, %struct.msm_dsi** %9, align 8
  store %struct.msm_dsi* %32, %struct.msm_dsi** %10, align 8
  %33 = load %struct.msm_dsi*, %struct.msm_dsi** %8, align 8
  store %struct.msm_dsi* %33, %struct.msm_dsi** %11, align 8
  br label %37

34:                                               ; preds = %27, %2
  %35 = load %struct.msm_dsi*, %struct.msm_dsi** %8, align 8
  store %struct.msm_dsi* %35, %struct.msm_dsi** %10, align 8
  %36 = load %struct.msm_dsi*, %struct.msm_dsi** %9, align 8
  store %struct.msm_dsi* %36, %struct.msm_dsi** %11, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.msm_dsi*, %struct.msm_dsi** %10, align 8
  %39 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.drm_panel* @msm_dsi_host_get_panel(i32 %40)
  store %struct.drm_panel* %41, %struct.drm_panel** %12, align 8
  %42 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %43 = call i64 @IS_ERR(%struct.drm_panel* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.msm_dsi*, %struct.msm_dsi** %8, align 8
  %47 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %50 = call i32 @PTR_ERR(%struct.drm_panel* %49)
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %53 = call i32 @PTR_ERR(%struct.drm_panel* %52)
  store i32 %53, i32* %3, align 4
  br label %106

54:                                               ; preds = %37
  %55 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %56 = icmp ne %struct.drm_panel* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i64 (...) @IS_DUAL_DSI()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %54
  br label %102

61:                                               ; preds = %57
  %62 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 1
  %64 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %65 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @drm_object_attach_property(i32* %63, i32 %69, i32 0)
  %71 = load %struct.msm_dsi*, %struct.msm_dsi** %9, align 8
  %72 = icmp ne %struct.msm_dsi* %71, null
  br i1 %72, label %73, label %101

73:                                               ; preds = %61
  %74 = load %struct.msm_dsi*, %struct.msm_dsi** %9, align 8
  %75 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %74, i32 0, i32 0
  %76 = load %struct.drm_panel*, %struct.drm_panel** %75, align 8
  %77 = icmp ne %struct.drm_panel* %76, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %80 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32 (%struct.msm_kms*, i32, i32, i32)*, i32 (%struct.msm_kms*, i32, i32, i32)** %82, align 8
  %84 = icmp ne i32 (%struct.msm_kms*, i32, i32, i32)* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %78
  %86 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %87 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32 (%struct.msm_kms*, i32, i32, i32)*, i32 (%struct.msm_kms*, i32, i32, i32)** %89, align 8
  %91 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %92 = load %struct.msm_dsi*, %struct.msm_dsi** %10, align 8
  %93 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.msm_dsi*, %struct.msm_dsi** %11, align 8
  %96 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.msm_dsi*, %struct.msm_dsi** %8, align 8
  %99 = call i32 @dsi_mgr_is_cmd_mode(%struct.msm_dsi* %98)
  %100 = call i32 %90(%struct.msm_kms* %91, i32 %94, i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %85, %78, %73, %61
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %104 = load %struct.msm_dsi*, %struct.msm_dsi** %8, align 8
  %105 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %104, i32 0, i32 0
  store %struct.drm_panel* %103, %struct.drm_panel** %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %45
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local %struct.msm_dsi* @dsi_mgr_get_other_dsi(i32) #1

declare dso_local i64 @IS_DUAL_DSI(...) #1

declare dso_local i32 @IS_MASTER_DSI_LINK(i32) #1

declare dso_local %struct.drm_panel* @msm_dsi_host_get_panel(i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_panel*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.drm_panel*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @dsi_mgr_is_cmd_mode(%struct.msm_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
