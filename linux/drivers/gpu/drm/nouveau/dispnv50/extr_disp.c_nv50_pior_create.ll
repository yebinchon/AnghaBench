; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_pior_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_pior_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.dcb_output = type { i32, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_i2c_bus = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.nvkm_i2c_aux = type { %struct.i2c_adapter }
%struct.nouveau_encoder = type { %struct.nvkm_i2c_aux*, %struct.i2c_adapter*, %struct.dcb_output* }
%struct.drm_encoder = type { i64, i32 }

@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_pior_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pior-%04x-%04x\00", align 1
@nv50_pior_help = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.dcb_output*)* @nv50_pior_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_pior_create(%struct.drm_connector* %0, %struct.dcb_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.dcb_output*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvkm_i2c*, align 8
  %8 = alloca %struct.nvkm_i2c_bus*, align 8
  %9 = alloca %struct.nvkm_i2c_aux*, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.nouveau_encoder*, align 8
  %12 = alloca %struct.drm_encoder*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %5, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nouveau_drm* @nouveau_drm(i32 %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %6, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call %struct.nvkm_i2c* @nvxx_i2c(i32* %20)
  store %struct.nvkm_i2c* %21, %struct.nvkm_i2c** %7, align 8
  store %struct.nvkm_i2c_bus* null, %struct.nvkm_i2c_bus** %8, align 8
  store %struct.nvkm_i2c_aux* null, %struct.nvkm_i2c_aux** %9, align 8
  %22 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %23 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %57 [
    i32 128, label %25
    i32 129, label %41
  ]

25:                                               ; preds = %2
  %26 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %7, align 8
  %27 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %28 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NVKM_I2C_BUS_EXT(i32 %29)
  %31 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %26, i32 %30)
  store %struct.nvkm_i2c_bus* %31, %struct.nvkm_i2c_bus** %8, align 8
  %32 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %8, align 8
  %33 = icmp ne %struct.nvkm_i2c_bus* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %35, i32 0, i32 0
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi %struct.i2c_adapter* [ %36, %34 ], [ null, %37 ]
  store %struct.i2c_adapter* %39, %struct.i2c_adapter** %10, align 8
  %40 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  store i32 %40, i32* %13, align 4
  br label %60

41:                                               ; preds = %2
  %42 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %7, align 8
  %43 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %44 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NVKM_I2C_AUX_EXT(i32 %45)
  %47 = call %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c* %42, i32 %46)
  store %struct.nvkm_i2c_aux* %47, %struct.nvkm_i2c_aux** %9, align 8
  %48 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %9, align 8
  %49 = icmp ne %struct.nvkm_i2c_aux* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %9, align 8
  %52 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %51, i32 0, i32 0
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi %struct.i2c_adapter* [ %52, %50 ], [ null, %53 ]
  store %struct.i2c_adapter* %55, %struct.i2c_adapter** %10, align 8
  %56 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  store i32 %56, i32* %13, align 4
  br label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %104

60:                                               ; preds = %54, %38
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.nouveau_encoder* @kzalloc(i32 24, i32 %61)
  store %struct.nouveau_encoder* %62, %struct.nouveau_encoder** %11, align 8
  %63 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %11, align 8
  %64 = icmp ne %struct.nouveau_encoder* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %104

68:                                               ; preds = %60
  %69 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %70 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %11, align 8
  %71 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %70, i32 0, i32 2
  store %struct.dcb_output* %69, %struct.dcb_output** %71, align 8
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %73 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %11, align 8
  %74 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %73, i32 0, i32 1
  store %struct.i2c_adapter* %72, %struct.i2c_adapter** %74, align 8
  %75 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %9, align 8
  %76 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %11, align 8
  %77 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %76, i32 0, i32 0
  store %struct.nvkm_i2c_aux* %75, %struct.nvkm_i2c_aux** %77, align 8
  %78 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %11, align 8
  %79 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %78)
  store %struct.drm_encoder* %79, %struct.drm_encoder** %12, align 8
  %80 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %81 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %84 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %86 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %88 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %93 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %96 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @drm_encoder_init(i32 %89, %struct.drm_encoder* %90, i32* @nv50_pior_func, i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %100 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %99, i32* @nv50_pior_help)
  %101 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %103 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %101, %struct.drm_encoder* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %68, %65, %57
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nvkm_i2c* @nvxx_i2c(i32*) #1

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i32 @NVKM_I2C_BUS_EXT(i32) #1

declare dso_local %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i32 @NVKM_I2C_AUX_EXT(i32) #1

declare dso_local %struct.nouveau_encoder* @kzalloc(i32, i32) #1

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
