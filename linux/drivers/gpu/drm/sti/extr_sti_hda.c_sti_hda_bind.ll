; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sti_hda = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.sti_hda_connector = type { %struct.drm_encoder*, %struct.sti_hda* }
%struct.drm_connector = type { i32 }
%struct.drm_bridge = type { i32*, %struct.sti_hda* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sti_hda_bridge_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@sti_hda_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Component = common dso_local global i32 0, align 4
@sti_hda_connector_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to attach a connector to a encoder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @sti_hda_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hda_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sti_hda*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.sti_hda_connector*, align 8
  %12 = alloca %struct.drm_connector*, align 8
  %13 = alloca %struct.drm_bridge*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.sti_hda* @dev_get_drvdata(%struct.device* %15)
  store %struct.sti_hda* %16, %struct.sti_hda** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.drm_device*
  store %struct.drm_device* %18, %struct.drm_device** %9, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %20 = load %struct.sti_hda*, %struct.sti_hda** %8, align 8
  %21 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %20, i32 0, i32 0
  store %struct.drm_device* %19, %struct.drm_device** %21, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %23 = call %struct.drm_encoder* @sti_hda_find_encoder(%struct.drm_device* %22)
  store %struct.drm_encoder* %23, %struct.drm_encoder** %10, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %25 = icmp ne %struct.drm_encoder* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %88

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(%struct.device* %30, i32 16, i32 %31)
  %33 = bitcast i8* %32 to %struct.sti_hda_connector*
  store %struct.sti_hda_connector* %33, %struct.sti_hda_connector** %11, align 8
  %34 = load %struct.sti_hda_connector*, %struct.sti_hda_connector** %11, align 8
  %35 = icmp ne %struct.sti_hda_connector* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %29
  %40 = load %struct.sti_hda*, %struct.sti_hda** %8, align 8
  %41 = load %struct.sti_hda_connector*, %struct.sti_hda_connector** %11, align 8
  %42 = getelementptr inbounds %struct.sti_hda_connector, %struct.sti_hda_connector* %41, i32 0, i32 1
  store %struct.sti_hda* %40, %struct.sti_hda** %42, align 8
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @devm_kzalloc(%struct.device* %43, i32 16, i32 %44)
  %46 = bitcast i8* %45 to %struct.drm_bridge*
  store %struct.drm_bridge* %46, %struct.drm_bridge** %13, align 8
  %47 = load %struct.drm_bridge*, %struct.drm_bridge** %13, align 8
  %48 = icmp ne %struct.drm_bridge* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %88

52:                                               ; preds = %39
  %53 = load %struct.sti_hda*, %struct.sti_hda** %8, align 8
  %54 = load %struct.drm_bridge*, %struct.drm_bridge** %13, align 8
  %55 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %54, i32 0, i32 1
  store %struct.sti_hda* %53, %struct.sti_hda** %55, align 8
  %56 = load %struct.drm_bridge*, %struct.drm_bridge** %13, align 8
  %57 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %56, i32 0, i32 0
  store i32* @sti_hda_bridge_funcs, i32** %57, align 8
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %59 = load %struct.drm_bridge*, %struct.drm_bridge** %13, align 8
  %60 = call i32 @drm_bridge_attach(%struct.drm_encoder* %58, %struct.drm_bridge* %59, i32* null)
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %62 = load %struct.sti_hda_connector*, %struct.sti_hda_connector** %11, align 8
  %63 = getelementptr inbounds %struct.sti_hda_connector, %struct.sti_hda_connector* %62, i32 0, i32 0
  store %struct.drm_encoder* %61, %struct.drm_encoder** %63, align 8
  %64 = load %struct.sti_hda_connector*, %struct.sti_hda_connector** %11, align 8
  %65 = bitcast %struct.sti_hda_connector* %64 to %struct.drm_connector*
  store %struct.drm_connector* %65, %struct.drm_connector** %12, align 8
  %66 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %67 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %68 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %70 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %71 = load i32, i32* @DRM_MODE_CONNECTOR_Component, align 4
  %72 = call i32 @drm_connector_init(%struct.drm_device* %69, %struct.drm_connector* %70, i32* @sti_hda_connector_funcs, i32 %71)
  %73 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %74 = call i32 @drm_connector_helper_add(%struct.drm_connector* %73, i32* @sti_hda_connector_helper_funcs)
  %75 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %77 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %75, %struct.drm_encoder* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %52
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %85

82:                                               ; preds = %52
  %83 = load %struct.sti_hda*, %struct.sti_hda** %8, align 8
  %84 = call i32 @hda_enable_hd_dacs(%struct.sti_hda* %83, i32 0)
  store i32 0, i32* %4, align 4
  br label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %82, %49, %36, %26
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.sti_hda* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.drm_encoder* @sti_hda_find_encoder(%struct.drm_device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @hda_enable_hd_dacs(%struct.sti_hda*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
