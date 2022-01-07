; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_output.c_omapdss_device_init_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_output.c_omapdss_device_init_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i64, i32*, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to find video sink\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"output type and display type don't match\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_device_init_output(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %6 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %5, i32 0, i32 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %11 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @ffs(i32 %12)
  %14 = sub nsw i64 %13, 1
  %15 = call %struct.device_node* @of_graph_get_remote_node(i32 %9, i64 %14, i32 0)
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %20 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @dev_dbg(%struct.TYPE_6__* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %95

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call %struct.TYPE_5__* @omapdss_find_device_by_node(%struct.device_node* %24)
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 3
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @of_drm_find_bridge(%struct.device_node* %28)
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %31 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i32* @of_drm_find_panel(%struct.device_node* %32)
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %37 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %43 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %23
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = call i32 @of_node_put(%struct.device_node* %45)
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %48 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %44
  %52 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %53 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %56 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %54, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %51
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %63 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @dev_err(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %67 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = call i32 @omapdss_device_put(%struct.TYPE_5__* %68)
  %70 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %71 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %70, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %71, align 8
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %95

74:                                               ; preds = %51, %44
  %75 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %76 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %81 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %86 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %79, %74
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EPROBE_DEFER, align 4
  %92 = sub nsw i32 0, %91
  br label %93

93:                                               ; preds = %90, %89
  %94 = phi i32 [ 0, %89 ], [ %92, %90 ]
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %61, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i64, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.TYPE_5__* @omapdss_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_drm_find_bridge(%struct.device_node*) #1

declare dso_local i32* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @omapdss_device_put(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
