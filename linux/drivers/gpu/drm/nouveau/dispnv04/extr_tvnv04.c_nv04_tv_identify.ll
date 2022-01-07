; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"TV encoder\00", align 1
@nv04_tv_encoder_info = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_tv_identify(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvkm_i2c*, align 8
  %8 = alloca %struct.nvkm_i2c_bus*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %6, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call %struct.nvkm_i2c* @nvxx_i2c(i32* %13)
  store %struct.nvkm_i2c* %14, %struct.nvkm_i2c** %7, align 8
  %15 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %15, i32 %16)
  store %struct.nvkm_i2c_bus* %17, %struct.nvkm_i2c_bus** %8, align 8
  %18 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %8, align 8
  %19 = icmp ne %struct.nvkm_i2c_bus* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %8, align 8
  %22 = load i32, i32* @nv04_tv_encoder_info, align 4
  %23 = call i32 @nvkm_i2c_bus_probe(%struct.nvkm_i2c_bus* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22, i32* null, i32* null)
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_i2c* @nvxx_i2c(i32*) #1

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i32 @nvkm_i2c_bus_probe(%struct.nvkm_i2c_bus*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
