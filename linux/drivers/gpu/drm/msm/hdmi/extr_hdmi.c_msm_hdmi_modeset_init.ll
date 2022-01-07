; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.platform_device*, %struct.TYPE_12__, %struct.drm_encoder*, %struct.drm_device* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)* }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_15__*, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32, %struct.TYPE_14__**, i32, %struct.TYPE_14__** }
%struct.drm_encoder = type { %struct.TYPE_14__* }

@.str = private unnamed_addr constant [34 x i8] c"failed to create HDMI bridge: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to create HDMI connector: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@msm_hdmi_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"hdmi_isr\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to request IRQ%u: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to enable HPD: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_hdmi_modeset_init(%struct.hdmi* %0, %struct.drm_device* %1, %struct.drm_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_encoder* %2, %struct.drm_encoder** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  store %struct.msm_drm_private* %13, %struct.msm_drm_private** %8, align 8
  %14 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %15 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %14, i32 0, i32 3
  %16 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  store %struct.platform_device* %16, %struct.platform_device** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %19 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %18, i32 0, i32 6
  store %struct.drm_device* %17, %struct.drm_device** %19, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %21 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %21, i32 0, i32 5
  store %struct.drm_encoder* %20, %struct.drm_encoder** %22, align 8
  %23 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %24 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = call i32 @hdmi_audio_infoframe_init(i32* %25)
  %27 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %28 = call %struct.TYPE_14__* @msm_hdmi_bridge_init(%struct.hdmi* %27)
  %29 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %30 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %29, i32 0, i32 2
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %30, align 8
  %31 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %32 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %31, i32 0, i32 2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = call i64 @IS_ERR(%struct.TYPE_14__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %3
  %37 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %38 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %37, i32 0, i32 2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.TYPE_14__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.TYPE_15__* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %47 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %46, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %47, align 8
  br label %161

48:                                               ; preds = %3
  %49 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %50 = call %struct.TYPE_14__* @msm_hdmi_connector_init(%struct.hdmi* %49)
  %51 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %52 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %51, i32 0, i32 1
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %52, align 8
  %53 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %54 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = call i64 @IS_ERR(%struct.TYPE_14__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %60 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = call i32 @PTR_ERR(%struct.TYPE_14__* %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.TYPE_15__* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %69 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %68, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %69, align 8
  br label %161

70:                                               ; preds = %48
  %71 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @irq_of_parse_and_map(i32 %74, i32 0)
  %76 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %77 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %79 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %70
  %83 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %84 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.TYPE_15__* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %161

91:                                               ; preds = %70
  %92 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %95 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @msm_hdmi_irq, align 4
  %98 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %99 = load i32, i32* @IRQF_ONESHOT, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %102 = call i32 @devm_request_irq(%struct.TYPE_15__* %93, i32 %96, i32 %97, i32 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.hdmi* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %91
  %106 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %107 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %110 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.TYPE_15__* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %112)
  br label %161

114:                                              ; preds = %91
  %115 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %116 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i32 @msm_hdmi_hpd_enable(%struct.TYPE_14__* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %123 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %122, i32 0, i32 3
  %124 = load %struct.platform_device*, %struct.platform_device** %123, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.TYPE_15__* %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  br label %161

128:                                              ; preds = %114
  %129 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %130 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %133 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %132, i32 0, i32 0
  store %struct.TYPE_14__* %131, %struct.TYPE_14__** %133, align 8
  %134 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %135 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %134, i32 0, i32 2
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %138 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %137, i32 0, i32 3
  %139 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %138, align 8
  %140 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %141 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %139, i64 %144
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %145, align 8
  %146 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %147 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %146, i32 0, i32 1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %150 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %150, align 8
  %152 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %153 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %151, i64 %156
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** %157, align 8
  %158 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %159 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %160 = call i32 @platform_set_drvdata(%struct.platform_device* %158, %struct.hdmi* %159)
  store i32 0, i32* %4, align 4
  br label %194

161:                                              ; preds = %121, %105, %82, %58, %36
  %162 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %163 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %162, i32 0, i32 2
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = icmp ne %struct.TYPE_14__* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %168 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %167, i32 0, i32 2
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = call i32 @msm_hdmi_bridge_destroy(%struct.TYPE_14__* %169)
  %171 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %172 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %171, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %172, align 8
  br label %173

173:                                              ; preds = %166, %161
  %174 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %175 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %174, i32 0, i32 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = icmp ne %struct.TYPE_14__* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %180 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %179, i32 0, i32 1
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %184, align 8
  %186 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %187 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %186, i32 0, i32 1
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = call i32 %185(%struct.TYPE_14__* %188)
  %190 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %191 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %190, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %191, align 8
  br label %192

192:                                              ; preds = %178, %173
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %128
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @hdmi_audio_infoframe_init(i32*) #1

declare dso_local %struct.TYPE_14__* @msm_hdmi_bridge_init(%struct.hdmi*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_15__*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_14__* @msm_hdmi_connector_init(%struct.hdmi*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i8*, %struct.hdmi*) #1

declare dso_local i32 @msm_hdmi_hpd_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hdmi*) #1

declare dso_local i32 @msm_hdmi_bridge_destroy(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
