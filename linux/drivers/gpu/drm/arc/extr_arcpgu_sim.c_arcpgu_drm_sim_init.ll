; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_sim.c_arcpgu_drm_sim_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_sim.c_arcpgu_drm_sim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.device_node = type { i32 }
%struct.arcpgu_drm_connector = type { %struct.drm_connector }
%struct.drm_connector = type { i32 }
%struct.drm_encoder = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arcpgu_drm_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@arcpgu_drm_connector_helper_funcs = common dso_local global i32 0, align 4
@arcpgu_drm_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to initialize drm connector\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not attach connector to encoder\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arcpgu_drm_sim_init(%struct.drm_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.arcpgu_drm_connector*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(i32 %12, i32 16, i32 %13)
  %15 = bitcast i8* %14 to %struct.drm_encoder*
  store %struct.drm_encoder* %15, %struct.drm_encoder** %7, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %17 = icmp eq %struct.drm_encoder* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %28 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %29 = call i32 @drm_encoder_init(%struct.drm_device* %26, %struct.drm_encoder* %27, i32* @arcpgu_drm_encoder_funcs, i32 %28, i32* null)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %83

34:                                               ; preds = %21
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(i32 %37, i32 4, i32 %38)
  %40 = bitcast i8* %39 to %struct.arcpgu_drm_connector*
  store %struct.arcpgu_drm_connector* %40, %struct.arcpgu_drm_connector** %6, align 8
  %41 = load %struct.arcpgu_drm_connector*, %struct.arcpgu_drm_connector** %6, align 8
  %42 = icmp ne %struct.arcpgu_drm_connector* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %79

46:                                               ; preds = %34
  %47 = load %struct.arcpgu_drm_connector*, %struct.arcpgu_drm_connector** %6, align 8
  %48 = getelementptr inbounds %struct.arcpgu_drm_connector, %struct.arcpgu_drm_connector* %47, i32 0, i32 0
  store %struct.drm_connector* %48, %struct.drm_connector** %8, align 8
  %49 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %50 = call i32 @drm_connector_helper_add(%struct.drm_connector* %49, i32* @arcpgu_drm_connector_helper_funcs)
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %53 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %54 = call i32 @drm_connector_init(%struct.drm_device* %51, %struct.drm_connector* %52, i32* @arcpgu_drm_connector_funcs, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %79

62:                                               ; preds = %46
  %63 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %65 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %63, %struct.drm_encoder* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %74 = call i32 @drm_connector_unregister(%struct.drm_connector* %73)
  br label %76

75:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %83

76:                                               ; preds = %68
  %77 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %78 = call i32 @drm_connector_cleanup(%struct.drm_connector* %77)
  br label %79

79:                                               ; preds = %76, %57, %43
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %81 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %75, %32, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
