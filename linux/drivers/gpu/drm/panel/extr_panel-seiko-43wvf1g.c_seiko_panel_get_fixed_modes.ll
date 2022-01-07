; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_get_fixed_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_get_fixed_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seiko_panel = type { %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.drm_display_mode*, %struct.display_timing* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.display_timing = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.drm_device*, %struct.drm_connector* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to add mode %ux%u\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seiko_panel*)* @seiko_panel_get_fixed_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seiko_panel_get_fixed_modes(%struct.seiko_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seiko_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.display_timing*, align 8
  %10 = alloca %struct.videomode, align 4
  %11 = alloca %struct.drm_display_mode*, align 8
  store %struct.seiko_panel* %0, %struct.seiko_panel** %3, align 8
  %12 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %13 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.drm_connector*, %struct.drm_connector** %14, align 8
  store %struct.drm_connector* %15, %struct.drm_connector** %4, align 8
  %16 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %17 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %5, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %21 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %208

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %88, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %29 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %26
  %35 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %36 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 7
  %39 = load %struct.display_timing*, %struct.display_timing** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %39, i64 %41
  store %struct.display_timing* %42, %struct.display_timing** %9, align 8
  %43 = load %struct.display_timing*, %struct.display_timing** %9, align 8
  %44 = call i32 @videomode_from_timing(%struct.display_timing* %43, %struct.videomode* %10)
  %45 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %46 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %45)
  store %struct.drm_display_mode* %46, %struct.drm_display_mode** %6, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %48 = icmp ne %struct.drm_display_mode* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %34
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.display_timing*, %struct.display_timing** %9, align 8
  %54 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.display_timing*, %struct.display_timing** %9, align 8
  %58 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %60)
  br label %88

62:                                               ; preds = %34
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %64 = call i32 @drm_display_mode_from_videomode(%struct.videomode* %10, %struct.drm_display_mode* %63)
  %65 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %71 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %62
  %77 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %62
  %83 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %85 = call i32 @drm_mode_probed_add(%struct.drm_connector* %83, %struct.drm_display_mode* %84)
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %82, %49
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %26

91:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %154, %91
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %95 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %93, %98
  br i1 %99, label %100, label %157

100:                                              ; preds = %92
  %101 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %102 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 6
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i64 %107
  store %struct.drm_display_mode* %108, %struct.drm_display_mode** %11, align 8
  %109 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %111 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %109, %struct.drm_display_mode* %110)
  store %struct.drm_display_mode* %111, %struct.drm_display_mode** %6, align 8
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %113 = icmp ne %struct.drm_display_mode* %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %100
  %115 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %119 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %123, i32 %126)
  br label %154

128:                                              ; preds = %100
  %129 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %135 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %146

140:                                              ; preds = %128
  %141 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %142 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %143 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %128
  %147 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %148 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %147)
  %149 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %151 = call i32 @drm_mode_probed_add(%struct.drm_connector* %149, %struct.drm_display_mode* %150)
  %152 = load i32, i32* %8, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %146, %114
  %155 = load i32, i32* %7, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %92

157:                                              ; preds = %92
  %158 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %159 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %158, i32 0, i32 0
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %164 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 4
  %166 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %167 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %173 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  store i32 %171, i32* %174, align 4
  %175 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %176 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %175, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %182 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %185 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %157
  %191 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %192 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %191, i32 0, i32 0
  %193 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %194 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %193, i32 0, i32 0
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 3
  %197 = call i32 @drm_display_info_set_bus_formats(%struct.TYPE_12__* %192, i32* %196, i32 1)
  br label %198

198:                                              ; preds = %190, %157
  %199 = load %struct.seiko_panel*, %struct.seiko_panel** %3, align 8
  %200 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %199, i32 0, i32 0
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %205 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %198, %24
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @videomode_from_timing(%struct.display_timing*, %struct.videomode*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @drm_display_mode_from_videomode(%struct.videomode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
