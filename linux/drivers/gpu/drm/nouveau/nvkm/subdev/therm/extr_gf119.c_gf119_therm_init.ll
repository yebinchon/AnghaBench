; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_therm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_therm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf119_therm_init(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %4 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %9 = call i32 @g84_sensor_setup(%struct.nvkm_therm* %8)
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %11 = call i32 @nvkm_mask(%struct.nvkm_device* %10, i32 59168, i32 3, i32 2)
  %12 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %13 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %22 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %23 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @nvkm_mask(%struct.nvkm_device* %21, i32 55196, i32 255, i32 %27)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 59172, i32 %33)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %36 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 59168, i32 1, i32 1)
  br label %37

37:                                               ; preds = %20, %1
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %39 = call i32 @nvkm_mask(%struct.nvkm_device* %38, i32 59168, i32 2, i32 0)
  ret void
}

declare dso_local i32 @g84_sensor_setup(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
