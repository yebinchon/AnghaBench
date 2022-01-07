; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_nxp-ptn3460.c_ptn3460_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_nxp-ptn3460.c_ptn3460_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, i32 }
%struct.ptn3460_bridge = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Parent encoder object not found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@ptn3460_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@ptn3460_connector_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @ptn3460_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptn3460_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.ptn3460_bridge*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %7 = call %struct.ptn3460_bridge* @bridge_to_ptn3460(%struct.drm_bridge* %6)
  store %struct.ptn3460_bridge* %7, %struct.ptn3460_bridge** %4, align 8
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
  br label %64

16:                                               ; preds = %1
  %17 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %18 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %19 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %22 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %24, i32 0, i32 0
  %26 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %27 = call i32 @drm_connector_init(i32 %23, %struct.TYPE_6__* %25, i32* @ptn3460_connector_funcs, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %16
  %34 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %35 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %34, i32 0, i32 0
  %36 = call i32 @drm_connector_helper_add(%struct.TYPE_6__* %35, i32* @ptn3460_connector_helper_funcs)
  %37 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %38 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %37, i32 0, i32 0
  %39 = call i32 @drm_connector_register(%struct.TYPE_6__* %38)
  %40 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %41 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %40, i32 0, i32 0
  %42 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %43 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @drm_connector_attach_encoder(%struct.TYPE_6__* %41, i32 %44)
  %46 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %47 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %52 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %55 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %54, i32 0, i32 0
  %56 = call i32 @drm_panel_attach(i64 %53, %struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %50, %33
  %58 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %59 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @drm_helper_hpd_irq_event(i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %30, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ptn3460_bridge* @bridge_to_ptn3460(%struct.drm_bridge*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @drm_connector_register(%struct.TYPE_6__*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @drm_panel_attach(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
