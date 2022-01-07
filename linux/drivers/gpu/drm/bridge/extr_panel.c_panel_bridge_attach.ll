; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_panel.c_panel_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_panel.c_panel_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, i32 }
%struct.panel_bridge = type { %struct.drm_connector, i32, i32 }
%struct.drm_connector = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Missing encoder\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@panel_bridge_connector_helper_funcs = common dso_local global i32 0, align 4
@panel_bridge_connector_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @panel_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.panel_bridge*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %8 = call %struct.panel_bridge* @drm_bridge_to_panel_bridge(%struct.drm_bridge* %7)
  store %struct.panel_bridge* %8, %struct.panel_bridge** %4, align 8
  %9 = load %struct.panel_bridge*, %struct.panel_bridge** %4, align 8
  %10 = getelementptr inbounds %struct.panel_bridge, %struct.panel_bridge* %9, i32 0, i32 0
  store %struct.drm_connector* %10, %struct.drm_connector** %5, align 8
  %11 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %53

19:                                               ; preds = %1
  %20 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %21 = call i32 @drm_connector_helper_add(%struct.drm_connector* %20, i32* @panel_bridge_connector_helper_funcs)
  %22 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %26 = load %struct.panel_bridge*, %struct.panel_bridge** %4, align 8
  %27 = getelementptr inbounds %struct.panel_bridge, %struct.panel_bridge* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @drm_connector_init(i32 %24, %struct.drm_connector* %25, i32* @panel_bridge_connector_funcs, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %53

35:                                               ; preds = %19
  %36 = load %struct.panel_bridge*, %struct.panel_bridge** %4, align 8
  %37 = getelementptr inbounds %struct.panel_bridge, %struct.panel_bridge* %36, i32 0, i32 0
  %38 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %37, i32 %40)
  %42 = load %struct.panel_bridge*, %struct.panel_bridge** %4, align 8
  %43 = getelementptr inbounds %struct.panel_bridge, %struct.panel_bridge* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.panel_bridge*, %struct.panel_bridge** %4, align 8
  %46 = getelementptr inbounds %struct.panel_bridge, %struct.panel_bridge* %45, i32 0, i32 0
  %47 = call i32 @drm_panel_attach(i32 %44, %struct.drm_connector* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %32, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.panel_bridge* @drm_bridge_to_panel_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_panel_attach(i32, %struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
