; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_dac_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_dac_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.dcb_output = type { i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }
%struct.nouveau_encoder = type { i32*, %struct.dcb_output* }
%struct.drm_encoder = type { i64, i32 }

@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_dac_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dac-%04x-%04x\00", align 1
@nv50_dac_help = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.dcb_output*)* @nv50_dac_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_dac_create(%struct.drm_connector* %0, %struct.dcb_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.dcb_output*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvkm_i2c*, align 8
  %8 = alloca %struct.nvkm_i2c_bus*, align 8
  %9 = alloca %struct.nouveau_encoder*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_drm(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %6, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call %struct.nvkm_i2c* @nvxx_i2c(i32* %18)
  store %struct.nvkm_i2c* %19, %struct.nvkm_i2c** %7, align 8
  %20 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.nouveau_encoder* @kzalloc(i32 16, i32 %21)
  store %struct.nouveau_encoder* %22, %struct.nouveau_encoder** %9, align 8
  %23 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %24 = icmp ne %struct.nouveau_encoder* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %2
  %29 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %30 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %31 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %30, i32 0, i32 1
  store %struct.dcb_output* %29, %struct.dcb_output** %31, align 8
  %32 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %7, align 8
  %33 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %34 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %32, i32 %35)
  store %struct.nvkm_i2c_bus* %36, %struct.nvkm_i2c_bus** %8, align 8
  %37 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %8, align 8
  %38 = icmp ne %struct.nvkm_i2c_bus* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %8, align 8
  %41 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %40, i32 0, i32 0
  %42 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %43 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %28
  %45 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %46 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %45)
  store %struct.drm_encoder* %46, %struct.drm_encoder** %10, align 8
  %47 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %48 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %51 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %53 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %55 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %60 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %63 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @drm_encoder_init(i32 %56, %struct.drm_encoder* %57, i32* @nv50_dac_func, i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %67 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %66, i32* @nv50_dac_help)
  %68 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %70 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %68, %struct.drm_encoder* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %44, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nvkm_i2c* @nvxx_i2c(i32*) #1

declare dso_local %struct.nouveau_encoder* @kzalloc(i32, i32) #1

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local i32 @drm_encoder_init(i32, %struct.drm_encoder*, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
