; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilcdc_module = type { i32 }
%struct.drm_device = type { %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32, i32, %struct.drm_connector**, i32, %struct.drm_encoder** }
%struct.drm_connector = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.tfp410_module = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@dvi_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tilcdc_module*, %struct.drm_device*)* @tfp410_modeset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_modeset_init(%struct.tilcdc_module* %0, %struct.drm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tilcdc_module*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.tfp410_module*, align 8
  %7 = alloca %struct.tilcdc_drm_private*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  store %struct.tilcdc_module* %0, %struct.tilcdc_module** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  %10 = load %struct.tilcdc_module*, %struct.tilcdc_module** %4, align 8
  %11 = call %struct.tfp410_module* @to_tfp410_module(%struct.tilcdc_module* %10)
  store %struct.tfp410_module* %11, %struct.tfp410_module** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %13, align 8
  store %struct.tilcdc_drm_private* %14, %struct.tilcdc_drm_private** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %17 = call %struct.drm_encoder* @tfp410_encoder_create(%struct.drm_device* %15, %struct.tfp410_module* %16)
  store %struct.drm_encoder* %17, %struct.drm_encoder** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %19 = icmp ne %struct.drm_encoder* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %27 = call %struct.drm_connector* @tfp410_connector_create(%struct.drm_device* %24, %struct.tfp410_module* %25, %struct.drm_encoder* %26)
  store %struct.drm_connector* %27, %struct.drm_connector** %9, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %29 = icmp ne %struct.drm_connector* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %23
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %35 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %7, align 8
  %36 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %35, i32 0, i32 4
  %37 = load %struct.drm_encoder**, %struct.drm_encoder*** %36, align 8
  %38 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %7, align 8
  %39 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.drm_encoder*, %struct.drm_encoder** %37, i64 %42
  store %struct.drm_encoder* %34, %struct.drm_encoder** %43, align 8
  %44 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %45 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %7, align 8
  %46 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %45, i32 0, i32 2
  %47 = load %struct.drm_connector**, %struct.drm_connector*** %46, align 8
  %48 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %7, align 8
  %49 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.drm_connector*, %struct.drm_connector** %47, i64 %52
  store %struct.drm_connector* %44, %struct.drm_connector** %53, align 8
  %54 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %7, align 8
  %55 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @tilcdc_crtc_set_panel_info(i32 %56, i32* @dvi_info)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %33, %30, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.tfp410_module* @to_tfp410_module(%struct.tilcdc_module*) #1

declare dso_local %struct.drm_encoder* @tfp410_encoder_create(%struct.drm_device*, %struct.tfp410_module*) #1

declare dso_local %struct.drm_connector* @tfp410_connector_create(%struct.drm_device*, %struct.tfp410_module*, %struct.drm_encoder*) #1

declare dso_local i32 @tilcdc_crtc_set_panel_info(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
