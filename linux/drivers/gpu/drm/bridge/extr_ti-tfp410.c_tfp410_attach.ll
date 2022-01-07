; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, i32 }
%struct.tfp410 = type { i64, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Missing encoder\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@tfp410_con_helper_funcs = common dso_local global i32 0, align 4
@tfp410_con_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"drm_connector_init() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @tfp410_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.tfp410*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %7 = call %struct.tfp410* @drm_bridge_to_tfp410(%struct.drm_bridge* %6)
  store %struct.tfp410* %7, %struct.tfp410** %4, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %14 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %1
  %20 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %21 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %26 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %27 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %36

29:                                               ; preds = %19
  %30 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %31 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %34 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %38 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %37, i32 0, i32 1
  %39 = call i32 @drm_connector_helper_add(%struct.TYPE_4__* %38, i32* @tfp410_con_helper_funcs)
  %40 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %41 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %44 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %43, i32 0, i32 1
  %45 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %46 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %49 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @drm_connector_init_with_ddc(i32 %42, %struct.TYPE_4__* %44, i32* @tfp410_con_funcs, i32 %47, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %36
  %55 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %56 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %74

61:                                               ; preds = %36
  %62 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %63 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %66 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %65, i32 0, i32 2
  %67 = call i32 @drm_display_info_set_bus_formats(i32* %64, i32* %66, i32 1)
  %68 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %69 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %68, i32 0, i32 1
  %70 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %71 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @drm_connector_attach_encoder(%struct.TYPE_4__* %69, i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %61, %54, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.tfp410* @drm_bridge_to_tfp410(%struct.drm_bridge*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @drm_connector_init_with_ddc(i32, %struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @drm_display_info_set_bus_formats(i32*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
