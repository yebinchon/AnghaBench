; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_create_fake_mst_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_create_fake_mst_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { i32, %struct.radeon_encoder_mst*, %struct.drm_encoder }
%struct.radeon_encoder_mst = type { i32, %struct.radeon_connector* }
%struct.drm_encoder = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_connector_helper_funcs*, %struct.drm_device* }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.TYPE_2__*)* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"enc master is %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@radeon_dp_mst_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DPMST = common dso_local global i32 0, align 4
@radeon_mst_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_encoder* (%struct.radeon_connector*)* @radeon_dp_create_fake_mst_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_encoder* @radeon_dp_create_fake_mst_encoder(%struct.radeon_connector* %0) #0 {
  %2 = alloca %struct.radeon_encoder*, align 8
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca %struct.radeon_encoder_mst*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_connector_helper_funcs*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  store %struct.radeon_connector* %0, %struct.radeon_connector** %3, align 8
  %11 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %5, align 8
  %18 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %20, align 8
  store %struct.drm_connector_helper_funcs* %21, %struct.drm_connector_helper_funcs** %9, align 8
  %22 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %9, align 8
  %23 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %22, i32 0, i32 0
  %24 = load %struct.drm_encoder* (%struct.TYPE_2__*)*, %struct.drm_encoder* (%struct.TYPE_2__*)** %23, align 8
  %25 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %25, i32 0, i32 0
  %27 = call %struct.drm_encoder* %24(%struct.TYPE_2__* %26)
  store %struct.drm_encoder* %27, %struct.drm_encoder** %10, align 8
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.drm_encoder* %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 24, i32 %30)
  %32 = bitcast i8* %31 to %struct.radeon_encoder*
  store %struct.radeon_encoder* %32, %struct.radeon_encoder** %6, align 8
  %33 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %34 = icmp ne %struct.radeon_encoder* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  store %struct.radeon_encoder* null, %struct.radeon_encoder** %2, align 8
  br label %89

36:                                               ; preds = %1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 16, i32 %37)
  %39 = bitcast i8* %38 to %struct.radeon_encoder_mst*
  %40 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %40, i32 0, i32 1
  store %struct.radeon_encoder_mst* %39, %struct.radeon_encoder_mst** %41, align 8
  %42 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %42, i32 0, i32 1
  %44 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %43, align 8
  %45 = icmp ne %struct.radeon_encoder_mst* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %48 = call i32 @kfree(%struct.radeon_encoder* %47)
  store %struct.radeon_encoder* null, %struct.radeon_encoder** %2, align 8
  br label %89

49:                                               ; preds = %36
  %50 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %50, i32 0, i32 2
  store %struct.drm_encoder* %51, %struct.drm_encoder** %8, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %59 [
    i32 1, label %55
    i32 2, label %58
    i32 4, label %62
    i32 6, label %65
  ]

55:                                               ; preds = %49
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %57 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %68

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %49, %58
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %61 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %60, i32 0, i32 0
  store i32 3, i32* %61, align 4
  br label %68

62:                                               ; preds = %49
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %64 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %63, i32 0, i32 0
  store i32 15, i32* %64, align 4
  br label %68

65:                                               ; preds = %49
  %66 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %67 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %66, i32 0, i32 0
  store i32 63, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62, %59, %55
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %70, i32 0, i32 2
  %72 = load i32, i32* @DRM_MODE_ENCODER_DPMST, align 4
  %73 = call i32 @drm_encoder_init(%struct.drm_device* %69, %struct.drm_encoder* %71, i32* @radeon_dp_mst_enc_funcs, i32 %72, i32* null)
  %74 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %75 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %74, i32* @radeon_mst_helper_funcs)
  %76 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %76, i32 0, i32 1
  %78 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %77, align 8
  store %struct.radeon_encoder_mst* %78, %struct.radeon_encoder_mst** %7, align 8
  %79 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %80 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %81 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %80, i32 0, i32 1
  store %struct.radeon_connector* %79, %struct.radeon_connector** %81, align 8
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %83 = call i32 @to_radeon_encoder(%struct.drm_encoder* %82)
  %84 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %85 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %87 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  store %struct.radeon_encoder* %88, %struct.radeon_encoder** %2, align 8
  br label %89

89:                                               ; preds = %68, %46, %35
  %90 = load %struct.radeon_encoder*, %struct.radeon_encoder** %2, align 8
  ret %struct.radeon_encoder* %90
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, %struct.drm_encoder*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.radeon_encoder*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
