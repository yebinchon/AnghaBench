; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, i32 }
%struct.anx78xx = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Parent encoder object not found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"DP-AUX\00", align 1
@anx78xx_aux_transfer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to register aux channel: %d\0A\00", align 1
@anx78xx_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to initialize connector: %d\0A\00", align 1
@anx78xx_connector_helper_funcs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register connector: %d\0A\00", align 1
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to link up connector to encoder: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @anx78xx_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.anx78xx*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %7 = call %struct.anx78xx* @bridge_to_anx78xx(%struct.drm_bridge* %6)
  store %struct.anx78xx* %7, %struct.anx78xx** %4, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %18 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %21 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %25 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32* %23, i32** %26, align 8
  %27 = load i32, i32* @anx78xx_aux_transfer, align 4
  %28 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %29 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %32 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %31, i32 0, i32 1
  %33 = call i32 @drm_dp_aux_register(%struct.TYPE_8__* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %16
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %85

40:                                               ; preds = %16
  %41 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %42 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %45 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %44, i32 0, i32 0
  %46 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  %47 = call i32 @drm_connector_init(i32 %43, %struct.TYPE_9__* %45, i32* @anx78xx_connector_funcs, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %85

54:                                               ; preds = %40
  %55 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %56 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %55, i32 0, i32 0
  %57 = call i32 @drm_connector_helper_add(%struct.TYPE_9__* %56, i32* @anx78xx_connector_helper_funcs)
  %58 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %59 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %58, i32 0, i32 0
  %60 = call i32 @drm_connector_register(%struct.TYPE_9__* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %85

67:                                               ; preds = %54
  %68 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %69 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %70 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %73 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %72, i32 0, i32 0
  %74 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %75 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @drm_connector_attach_encoder(%struct.TYPE_9__* %73, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %80, %63, %50, %36, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.anx78xx* @bridge_to_anx78xx(%struct.drm_bridge*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @drm_connector_register(%struct.TYPE_9__*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
