; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.zx_vga = type { %struct.drm_connector, %struct.device*, %struct.drm_encoder }
%struct.drm_connector = type { i32 }
%struct.device = type { i32 }
%struct.drm_encoder = type { i32 }

@VOU_CRTC_MASK = common dso_local global i32 0, align 4
@zx_vga_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to init encoder: %d\0A\00", align 1
@zx_vga_encoder_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@zx_vga_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to init connector: %d\0A\00", align 1
@zx_vga_connector_helper_funcs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to attach encoder: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.zx_vga*)* @zx_vga_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vga_register(%struct.drm_device* %0, %struct.zx_vga* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.zx_vga*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.zx_vga* %1, %struct.zx_vga** %5, align 8
  %10 = load %struct.zx_vga*, %struct.zx_vga** %5, align 8
  %11 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %10, i32 0, i32 2
  store %struct.drm_encoder* %11, %struct.drm_encoder** %6, align 8
  %12 = load %struct.zx_vga*, %struct.zx_vga** %5, align 8
  %13 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %12, i32 0, i32 0
  store %struct.drm_connector* %13, %struct.drm_connector** %7, align 8
  %14 = load %struct.zx_vga*, %struct.zx_vga** %5, align 8
  %15 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load i32, i32* @VOU_CRTC_MASK, align 4
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %22 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %23 = call i32 @drm_encoder_init(%struct.drm_device* %20, %struct.drm_encoder* %21, i32* @zx_vga_encoder_funcs, i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @DRM_DEV_ERROR(%struct.device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %2
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %33 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %32, i32* @zx_vga_encoder_helper_funcs)
  %34 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %35 = load %struct.zx_vga*, %struct.zx_vga** %5, align 8
  %36 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %40 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %41 = call i32 @drm_connector_init(%struct.drm_device* %38, %struct.drm_connector* %39, i32* @zx_vga_connector_funcs, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @DRM_DEV_ERROR(%struct.device* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %64

48:                                               ; preds = %31
  %49 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %50 = call i32 @drm_connector_helper_add(%struct.drm_connector* %49, i32* @zx_vga_connector_helper_funcs)
  %51 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %52 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %53 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %51, %struct.drm_encoder* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @DRM_DEV_ERROR(%struct.device* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %61

60:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %68

61:                                               ; preds = %56
  %62 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %63 = call i32 @drm_connector_cleanup(%struct.drm_connector* %62)
  br label %64

64:                                               ; preds = %61, %44
  %65 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %66 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %60, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
