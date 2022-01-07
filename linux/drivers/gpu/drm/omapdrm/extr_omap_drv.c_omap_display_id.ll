; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_display_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_display_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_5__*, %struct.drm_bridge*, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.drm_bridge = type { %struct.device_node*, %struct.drm_bridge* }
%struct.TYPE_6__ = type { %struct.device_node* }

@.str = private unnamed_addr constant [8 x i8] c"display\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @omap_display_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_display_id(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.drm_bridge*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  store %struct.device_node* null, %struct.device_node** %3, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %7 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %12 = call %struct.omap_dss_device* @omapdss_display_get(%struct.omap_dss_device* %11)
  store %struct.omap_dss_device* %12, %struct.omap_dss_device** %4, align 8
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %14 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %3, align 8
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %19 = call i32 @omapdss_device_put(%struct.omap_dss_device* %18)
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %22 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %21, i32 0, i32 1
  %23 = load %struct.drm_bridge*, %struct.drm_bridge** %22, align 8
  %24 = icmp ne %struct.drm_bridge* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 1
  %28 = load %struct.drm_bridge*, %struct.drm_bridge** %27, align 8
  store %struct.drm_bridge* %28, %struct.drm_bridge** %5, align 8
  br label %29

29:                                               ; preds = %34, %25
  %30 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %31 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %30, i32 0, i32 1
  %32 = load %struct.drm_bridge*, %struct.drm_bridge** %31, align 8
  %33 = icmp ne %struct.drm_bridge* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %36 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %35, i32 0, i32 1
  %37 = load %struct.drm_bridge*, %struct.drm_bridge** %36, align 8
  store %struct.drm_bridge* %37, %struct.drm_bridge** %5, align 8
  br label %29

38:                                               ; preds = %29
  %39 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %40 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %39, i32 0, i32 0
  %41 = load %struct.device_node*, %struct.device_node** %40, align 8
  store %struct.device_node* %41, %struct.device_node** %3, align 8
  br label %56

42:                                               ; preds = %20
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %49 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.device_node*, %struct.device_node** %53, align 8
  store %struct.device_node* %54, %struct.device_node** %3, align 8
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %10
  %58 = load %struct.device_node*, %struct.device_node** %3, align 8
  %59 = icmp ne %struct.device_node* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.device_node*, %struct.device_node** %3, align 8
  %62 = call i32 @of_alias_get_id(%struct.device_node* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i32 [ %62, %60 ], [ %65, %63 ]
  ret i32 %67
}

declare dso_local %struct.omap_dss_device* @omapdss_display_get(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_put(%struct.omap_dss_device*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
