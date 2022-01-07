; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_infoframe_set_hdr_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_infoframe_set_hdr_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_drm_infoframe = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_state = type { %struct.TYPE_5__*, %struct.drm_connector* }
%struct.TYPE_5__ = type { %struct.hdr_output_metadata* }
%struct.hdr_output_metadata = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EOTF Not Supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_hdmi_infoframe_set_hdr_metadata(%struct.hdmi_drm_infoframe* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_drm_infoframe*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.hdr_output_metadata*, align 8
  %8 = alloca i32, align 4
  store %struct.hdmi_drm_infoframe* %0, %struct.hdmi_drm_infoframe** %4, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %5, align 8
  %9 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %10 = icmp ne %struct.hdmi_drm_infoframe* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %13 = icmp ne %struct.drm_connector_state* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %116

17:                                               ; preds = %11
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %19 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %18, i32 0, i32 1
  %20 = load %struct.drm_connector*, %struct.drm_connector** %19, align 8
  store %struct.drm_connector* %20, %struct.drm_connector** %6, align 8
  %21 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %116

28:                                               ; preds = %17
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %32, align 8
  store %struct.hdr_output_metadata* %33, %struct.hdr_output_metadata** %7, align 8
  %34 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %35 = icmp ne %struct.hdr_output_metadata* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %38 = icmp ne %struct.drm_connector* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %116

42:                                               ; preds = %36
  %43 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %44 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @is_eotf_supported(i32 %46, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %116

58:                                               ; preds = %42
  %59 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %60 = call i32 @hdmi_drm_infoframe_init(%struct.hdmi_drm_infoframe* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %116

65:                                               ; preds = %58
  %66 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %67 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %71 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %73 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %77 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = call i32 @BUILD_BUG_ON(i32 0)
  %79 = call i32 @BUILD_BUG_ON(i32 0)
  %80 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %81 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %80, i32 0, i32 5
  %82 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %83 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 5
  %85 = call i32 @memcpy(i32* %81, i32* %84, i32 4)
  %86 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %87 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %86, i32 0, i32 4
  %88 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %89 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = call i32 @memcpy(i32* %87, i32* %90, i32 4)
  %92 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %93 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %97 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %99 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %103 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %105 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %109 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.hdr_output_metadata*, %struct.hdr_output_metadata** %7, align 8
  %111 = getelementptr inbounds %struct.hdr_output_metadata, %struct.hdr_output_metadata* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %4, align 8
  %115 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %65, %63, %54, %39, %25, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @is_eotf_supported(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @hdmi_drm_infoframe_init(%struct.hdmi_drm_infoframe*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
