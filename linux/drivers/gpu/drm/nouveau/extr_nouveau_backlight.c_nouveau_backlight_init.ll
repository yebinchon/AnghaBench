; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nouveau_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nouveau_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.nvif_device }
%struct.nvif_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.nouveau_backlight = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_13__ = type { i32 }
%struct.nouveau_encoder = type { i32 }
%struct.backlight_properties = type { i32 }
%struct.backlight_ops = type { i32 }
%struct.TYPE_16__ = type { %struct.nouveau_backlight* }

@BL_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Apple GMUX detected: not registering Nouveau backlight interface\0A\00", align 1
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@DCB_OUTPUT_LVDS = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DCB_OUTPUT_DP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Failed to retrieve a unique name for the backlight interface\0A\00", align 1
@bl_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_backlight_init(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_backlight*, align 8
  %6 = alloca %struct.nouveau_encoder*, align 8
  %7 = alloca %struct.nvif_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.backlight_properties, align 4
  %11 = alloca %struct.backlight_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nouveau_drm* @nouveau_drm(i32 %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %4, align 8
  store %struct.nouveau_encoder* null, %struct.nouveau_encoder** %6, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store %struct.nvif_device* %20, %struct.nvif_device** %7, align 8
  %21 = load i32, i32* @BL_NAME_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = bitcast %struct.backlight_properties* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = call i64 (...) @apple_gmux_present()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %30 = call i32 @NV_INFO_ONCE(%struct.nouveau_drm* %29, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

31:                                               ; preds = %1
  %32 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %39 = load i32, i32* @DCB_OUTPUT_LVDS, align 4
  %40 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %38, i32 %39)
  store %struct.nouveau_encoder* %40, %struct.nouveau_encoder** %6, align 8
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %49 = load i32, i32* @DCB_OUTPUT_DP, align 4
  %50 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %48, i32 %49)
  store %struct.nouveau_encoder* %50, %struct.nouveau_encoder** %6, align 8
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %55 = icmp ne %struct.nouveau_encoder* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

57:                                               ; preds = %53
  %58 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %59 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %68 [
    i32 135, label %62
    i32 130, label %65
    i32 134, label %65
    i32 133, label %65
    i32 132, label %65
    i32 131, label %65
    i32 128, label %65
    i32 129, label %65
  ]

62:                                               ; preds = %57
  %63 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %64 = call i32 @nv40_backlight_init(%struct.nouveau_encoder* %63, %struct.backlight_properties* %10, %struct.backlight_ops** %11)
  store i32 %64, i32* %12, align 4
  br label %69

65:                                               ; preds = %57, %57, %57, %57, %57, %57, %57
  %66 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %67 = call i32 @nv50_backlight_init(%struct.nouveau_encoder* %66, %struct.backlight_properties* %10, %struct.backlight_ops** %11)
  store i32 %67, i32* %12, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.nouveau_backlight* @kzalloc(i32 16, i32 %82)
  store %struct.nouveau_backlight* %83, %struct.nouveau_backlight** %5, align 8
  %84 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %85 = icmp ne %struct.nouveau_backlight* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

89:                                               ; preds = %81
  %90 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %91 = call i32 @nouveau_get_backlight_name(i8* %24, %struct.nouveau_backlight* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %95 = call i32 @NV_ERROR(%struct.nouveau_drm* %94, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %150

96:                                               ; preds = %89
  %97 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %98 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %101 = load %struct.backlight_ops*, %struct.backlight_ops** %11, align 8
  %102 = call %struct.TYPE_15__* @backlight_device_register(i8* %24, i32 %99, %struct.nouveau_encoder* %100, %struct.backlight_ops* %101, %struct.backlight_properties* %10)
  %103 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %104 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %103, i32 0, i32 1
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %104, align 8
  %105 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %106 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = call i64 @IS_ERR(%struct.TYPE_15__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %96
  %111 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %112 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %117 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ida_simple_remove(i32* @bl_ida, i64 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %122 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = call i32 @PTR_ERR(%struct.TYPE_15__* %123)
  store i32 %124, i32* %12, align 4
  br label %150

125:                                              ; preds = %96
  %126 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %127 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %128 = call %struct.TYPE_16__* @nouveau_connector(%struct.drm_connector* %127)
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  store %struct.nouveau_backlight* %126, %struct.nouveau_backlight** %129, align 8
  %130 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %131 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %130, i32 0, i32 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %135, align 8
  %137 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %138 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = call i32 %136(%struct.TYPE_15__* %139)
  %141 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %142 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 %140, i32* %145, align 8
  %146 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %147 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %146, i32 0, i32 1
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = call i32 @backlight_update_status(%struct.TYPE_15__* %148)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

150:                                              ; preds = %120, %93
  %151 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %5, align 8
  %152 = call i32 @kfree(%struct.nouveau_backlight* %151)
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %154

154:                                              ; preds = %150, %125, %86, %78, %74, %68, %56, %51, %28
  %155 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @apple_gmux_present(...) #1

declare dso_local i32 @NV_INFO_ONCE(%struct.nouveau_drm*, i8*) #1

declare dso_local %struct.nouveau_encoder* @find_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @nv40_backlight_init(%struct.nouveau_encoder*, %struct.backlight_properties*, %struct.backlight_ops**) #1

declare dso_local i32 @nv50_backlight_init(%struct.nouveau_encoder*, %struct.backlight_properties*, %struct.backlight_ops**) #1

declare dso_local %struct.nouveau_backlight* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_get_backlight_name(i8*, %struct.nouveau_backlight*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local %struct.TYPE_15__* @backlight_device_register(i8*, i32, %struct.nouveau_encoder*, %struct.backlight_ops*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.nouveau_backlight*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
