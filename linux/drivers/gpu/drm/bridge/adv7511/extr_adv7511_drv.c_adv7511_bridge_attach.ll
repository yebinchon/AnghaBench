; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, i32 }
%struct.adv7511 = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Parent encoder object not found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@adv7511_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@adv7511_connector_helper_funcs = common dso_local global i32 0, align 4
@ADV7533 = common dso_local global i64 0, align 8
@ADV7511_INT0_HPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @adv7511_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.adv7511*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %7 = call %struct.adv7511* @bridge_to_adv7511(%struct.drm_bridge* %6)
  store %struct.adv7511* %7, %struct.adv7511** %4, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %82

16:                                               ; preds = %1
  %17 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %18 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %25 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %26 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %35

28:                                               ; preds = %16
  %29 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %30 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %33 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %37 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %40 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %39, i32 0, i32 3
  %41 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %42 = call i32 @drm_connector_init(i32 %38, %struct.TYPE_6__* %40, i32* @adv7511_connector_funcs, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %82

48:                                               ; preds = %35
  %49 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %50 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %49, i32 0, i32 3
  %51 = call i32 @drm_connector_helper_add(%struct.TYPE_6__* %50, i32* @adv7511_connector_helper_funcs)
  %52 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %53 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %52, i32 0, i32 3
  %54 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %55 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @drm_connector_attach_encoder(%struct.TYPE_6__* %53, i32 %56)
  %58 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %59 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ADV7533, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %65 = call i32 @adv7533_attach_dsi(%struct.adv7511* %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %48
  %67 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %68 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %75 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ADV7511_REG_INT_ENABLE(i32 0)
  %78 = load i32, i32* @ADV7511_INT0_HPD, align 4
  %79 = call i32 @regmap_write(i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %45, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.adv7511* @bridge_to_adv7511(%struct.drm_bridge*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @adv7533_attach_dsi(%struct.adv7511*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ADV7511_REG_INT_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
