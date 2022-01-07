; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_connector = type { i64, %struct.drm_display_mode*, i64, %struct.nouveau_encoder* }
%struct.drm_display_mode = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.drm_encoder*, %struct.drm_connector*)* }

@DCB_OUTPUT_LVDS = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@DCB_OUTPUT_TV = common dso_local global i64 0, align 8
@DCB_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@DCB_CONNECTOR_LVDS_SPWG = common dso_local global i64 0, align 8
@DCB_CONNECTOR_eDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @nouveau_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_connector*, align 8
  %6 = alloca %struct.nouveau_encoder*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %4, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %16)
  store %struct.nouveau_connector* %17, %struct.nouveau_connector** %5, align 8
  %18 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %18, i32 0, i32 3
  %20 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %19, align 8
  store %struct.nouveau_encoder* %20, %struct.nouveau_encoder** %6, align 8
  %21 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %22 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %21)
  store %struct.drm_encoder* %22, %struct.drm_encoder** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %23, i32 0, i32 1
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %24, align 8
  %26 = icmp ne %struct.drm_display_mode* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %29, i32 0, i32 1
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %30, align 8
  %32 = call i32 @drm_mode_destroy(%struct.drm_device* %28, %struct.drm_display_mode* %31)
  %33 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %33, i32 0, i32 1
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %34, align 8
  br label %35

35:                                               ; preds = %27, %1
  %36 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %37 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %42 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %43 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @drm_add_edid_modes(%struct.drm_connector* %41, i64 %44)
  store i32 %45, i32* %8, align 4
  br label %81

46:                                               ; preds = %35
  %47 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DCB_OUTPUT_LVDS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %46
  %55 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %56 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %64 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %62, %54
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = call i64 @nouveau_bios_fp_mode(%struct.drm_device* %69, %struct.drm_display_mode* null)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = call i64 @nouveau_bios_fp_mode(%struct.drm_device* %73, %struct.drm_display_mode* %9)
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = call i8* @drm_mode_duplicate(%struct.drm_device* %75, %struct.drm_display_mode* %9)
  %77 = bitcast i8* %76 to %struct.drm_display_mode*
  %78 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %79 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %78, i32 0, i32 1
  store %struct.drm_display_mode* %77, %struct.drm_display_mode** %79, align 8
  br label %80

80:                                               ; preds = %72, %68, %62, %46
  br label %81

81:                                               ; preds = %80, %40
  %82 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %83 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %89 = call i32 @nouveau_connector_detect_depth(%struct.drm_connector* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %92 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %91, i32 0, i32 1
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %92, align 8
  %94 = icmp ne %struct.drm_display_mode* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %97 = call %struct.drm_display_mode* @nouveau_conn_native_mode(%struct.drm_connector* %96)
  %98 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %99 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %98, i32 0, i32 1
  store %struct.drm_display_mode* %97, %struct.drm_display_mode** %99, align 8
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %105 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %104, i32 0, i32 1
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %105, align 8
  %107 = icmp ne %struct.drm_display_mode* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %110 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %111 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %110, i32 0, i32 1
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %111, align 8
  %113 = call i8* @drm_mode_duplicate(%struct.drm_device* %109, %struct.drm_display_mode* %112)
  %114 = bitcast i8* %113 to %struct.drm_display_mode*
  store %struct.drm_display_mode* %114, %struct.drm_display_mode** %10, align 8
  %115 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %117 = call i32 @drm_mode_probed_add(%struct.drm_connector* %115, %struct.drm_display_mode* %116)
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %108, %103, %100
  %119 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %120 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %126 = call i32 @nouveau_connector_detect_depth(%struct.drm_connector* %125)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %129 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %137 = call %struct.TYPE_8__* @get_slave_funcs(%struct.drm_encoder* %136)
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32 (%struct.drm_encoder*, %struct.drm_connector*)*, i32 (%struct.drm_encoder*, %struct.drm_connector*)** %138, align 8
  %140 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %141 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %142 = call i32 %139(%struct.drm_encoder* %140, %struct.drm_connector* %141)
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %135, %127
  %144 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %145 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DCB_CONNECTOR_LVDS, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %143
  %150 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %151 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DCB_CONNECTOR_LVDS_SPWG, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %157 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @DCB_CONNECTOR_eDP, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %155, %149, %143
  %162 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %163 = call i64 @nouveau_connector_scaler_modes_add(%struct.drm_connector* %162)
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %161, %155
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local i32 @drm_mode_destroy(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i64) #1

declare dso_local i64 @nouveau_bios_fp_mode(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i8* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @nouveau_connector_detect_depth(%struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @nouveau_conn_native_mode(%struct.drm_connector*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local %struct.TYPE_8__* @get_slave_funcs(%struct.drm_encoder*) #1

declare dso_local i64 @nouveau_connector_scaler_modes_add(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
