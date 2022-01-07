; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vc4_vec = type { i32, i32* }
%struct.vc4_vec_connector = type { %struct.vc4_vec*, i32, %struct.drm_connector }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc4_vec_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Composite = common dso_local global i32 0, align 4
@vc4_vec_connector_helper_funcs = common dso_local global i32 0, align 4
@VC4_VEC_TV_MODE_NTSC = common dso_local global i64 0, align 8
@vc4_vec_tv_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_connector* (%struct.drm_device*, %struct.vc4_vec*)* @vc4_vec_connector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_connector* @vc4_vec_connector_init(%struct.drm_device* %0, %struct.vc4_vec* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.vc4_vec*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.vc4_vec_connector*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.vc4_vec* %1, %struct.vc4_vec** %5, align 8
  store %struct.drm_connector* null, %struct.drm_connector** %6, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vc4_vec_connector* @devm_kzalloc(i32 %10, i32 24, i32 %11)
  store %struct.vc4_vec_connector* %12, %struct.vc4_vec_connector** %7, align 8
  %13 = load %struct.vc4_vec_connector*, %struct.vc4_vec_connector** %7, align 8
  %14 = icmp ne %struct.vc4_vec_connector* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.drm_connector* @ERR_PTR(i32 %17)
  store %struct.drm_connector* %18, %struct.drm_connector** %3, align 8
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.vc4_vec_connector*, %struct.vc4_vec_connector** %7, align 8
  %21 = getelementptr inbounds %struct.vc4_vec_connector, %struct.vc4_vec_connector* %20, i32 0, i32 2
  store %struct.drm_connector* %21, %struct.drm_connector** %6, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.vc4_vec*, %struct.vc4_vec** %5, align 8
  %25 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vc4_vec_connector*, %struct.vc4_vec_connector** %7, align 8
  %28 = getelementptr inbounds %struct.vc4_vec_connector, %struct.vc4_vec_connector* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vc4_vec*, %struct.vc4_vec** %5, align 8
  %30 = load %struct.vc4_vec_connector*, %struct.vc4_vec_connector** %7, align 8
  %31 = getelementptr inbounds %struct.vc4_vec_connector, %struct.vc4_vec_connector* %30, i32 0, i32 0
  store %struct.vc4_vec* %29, %struct.vc4_vec** %31, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %34 = load i32, i32* @DRM_MODE_CONNECTOR_Composite, align 4
  %35 = call i32 @drm_connector_init(%struct.drm_device* %32, %struct.drm_connector* %33, i32* @vc4_vec_connector_funcs, i32 %34)
  %36 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %37 = call i32 @drm_connector_helper_add(%struct.drm_connector* %36, i32* @vc4_vec_connector_helper_funcs)
  %38 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 1
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @VC4_VEC_TV_MODE_NTSC, align 8
  %45 = call i32 @drm_object_attach_property(i32* %39, i32 %43, i64 %44)
  %46 = load i32*, i32** @vc4_vec_tv_modes, align 8
  %47 = load i64, i64* @VC4_VEC_TV_MODE_NTSC, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load %struct.vc4_vec*, %struct.vc4_vec** %5, align 8
  %50 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %52 = load %struct.vc4_vec*, %struct.vc4_vec** %5, align 8
  %53 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %51, i32 %54)
  %56 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  store %struct.drm_connector* %56, %struct.drm_connector** %3, align 8
  br label %57

57:                                               ; preds = %19, %15
  %58 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  ret %struct.drm_connector* %58
}

declare dso_local %struct.vc4_vec_connector* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.drm_connector* @ERR_PTR(i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i64) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
