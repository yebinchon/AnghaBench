; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, %struct.drm_encoder* }
%struct.drm_encoder = type { i32 }
%struct.rcar_lvds = type { i32, i64, %struct.drm_connector }
%struct.drm_connector = type { i32 }

@rcar_lvds_conn_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@rcar_lvds_conn_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @rcar_lvds_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_lvds_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.rcar_lvds*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %9 = call %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge* %8)
  store %struct.rcar_lvds* %9, %struct.rcar_lvds** %4, align 8
  %10 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %11 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %10, i32 0, i32 2
  store %struct.drm_connector* %11, %struct.drm_connector** %5, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %12, i32 0, i32 1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %6, align 8
  %15 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %16 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %21 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %20, i32 0, i32 1
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %21, align 8
  %23 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %24 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %27 = call i32 @drm_bridge_attach(%struct.drm_encoder* %22, i64 %25, %struct.drm_bridge* %26)
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %1
  %29 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %30 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %61

34:                                               ; preds = %28
  %35 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %36 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %39 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %40 = call i32 @drm_connector_init(i32 %37, %struct.drm_connector* %38, i32* @rcar_lvds_conn_funcs, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %34
  %46 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %47 = call i32 @drm_connector_helper_add(%struct.drm_connector* %46, i32* @rcar_lvds_conn_helper_funcs)
  %48 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %50 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %48, %struct.drm_encoder* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %61

55:                                               ; preds = %45
  %56 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %57 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %60 = call i32 @drm_panel_attach(i32 %58, %struct.drm_connector* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %53, %43, %33, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, i64, %struct.drm_bridge*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_attach(i32, %struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
