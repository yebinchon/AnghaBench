; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.vbox_private* }
%struct.vbox_private = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vbox_connector = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@HOST_FLAGS_OFFSET = common dso_local global i64 0, align 8
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @vbox_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbox_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.vbox_connector*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.vbox_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  store %struct.vbox_connector* null, %struct.vbox_connector** %3, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  store %struct.vbox_private* null, %struct.vbox_private** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.vbox_connector* @to_vbox_connector(%struct.drm_connector* %9)
  store %struct.vbox_connector* %10, %struct.vbox_connector** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.vbox_private*, %struct.vbox_private** %14, align 8
  store %struct.vbox_private* %15, %struct.vbox_private** %5, align 8
  %16 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %17 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %20 = call i64 @GUEST_HEAP_OFFSET(%struct.vbox_private* %19)
  %21 = load i64, i64* @HOST_FLAGS_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @hgsmi_report_flags_location(i32 %18, i64 %22)
  %24 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %25 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %32 = call i32 @vbox_report_caps(%struct.vbox_private* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %35 = call i32 @drm_add_modes_noedid(%struct.drm_connector* %34, i32 2560, i32 1600)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %37 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %43 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %47

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ %45, %41 ], [ 1024, %46 ]
  store i32 %48, i32* %7, align 4
  %49 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %50 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %56 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %60

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ %58, %54 ], [ 768, %59 ]
  store i32 %61, i32* %8, align 4
  %62 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.TYPE_10__* %64, i32 %65, i32 %66, i32 60, i32 0, i32 0, i32 0)
  store %struct.drm_display_mode* %67, %struct.drm_display_mode** %4, align 8
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %69 = icmp ne %struct.drm_display_mode* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %78 = call i32 @drm_mode_probed_add(%struct.drm_connector* %76, %struct.drm_display_mode* %77)
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %70, %60
  %82 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @vbox_set_edid(%struct.drm_connector* %82, i32 %83, i32 %84)
  %86 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %87 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %106

92:                                               ; preds = %81
  %93 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %94 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %93, i32 0, i32 0
  %95 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %96 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %101 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @drm_object_property_set_value(i32* %94, i32 %99, i32 %104)
  br label %115

106:                                              ; preds = %81
  %107 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %108 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %107, i32 0, i32 0
  %109 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %110 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @drm_object_property_set_value(i32* %108, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %106, %92
  %116 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %117 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %124 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %123, i32 0, i32 0
  %125 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %126 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vbox_connector*, %struct.vbox_connector** %3, align 8
  %131 = getelementptr inbounds %struct.vbox_connector, %struct.vbox_connector* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @drm_object_property_set_value(i32* %124, i32 %129, i32 %134)
  br label %145

136:                                              ; preds = %115
  %137 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %138 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %137, i32 0, i32 0
  %139 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %140 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @drm_object_property_set_value(i32* %138, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %136, %122
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.vbox_connector* @to_vbox_connector(%struct.drm_connector*) #1

declare dso_local i32 @hgsmi_report_flags_location(i32, i64) #1

declare dso_local i64 @GUEST_HEAP_OFFSET(%struct.vbox_private*) #1

declare dso_local i32 @vbox_report_caps(%struct.vbox_private*) #1

declare dso_local i32 @drm_add_modes_noedid(%struct.drm_connector*, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @vbox_set_edid(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
