; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv50.c_nv50_i2c_bus_drive_scl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv50.c_nv50_i2c_bus_drive_scl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_bus = type { i32 }
%struct.nv50_i2c_bus = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_i2c_bus*, i32)* @nv50_i2c_bus_drive_scl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_i2c_bus_drive_scl(%struct.nvkm_i2c_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_i2c_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_i2c_bus*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_i2c_bus* %0, %struct.nvkm_i2c_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %3, align 8
  %8 = call %struct.nv50_i2c_bus* @nv50_i2c_bus(%struct.nvkm_i2c_bus* %7)
  store %struct.nv50_i2c_bus* %8, %struct.nv50_i2c_bus** %5, align 8
  %9 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %5, align 8
  %10 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %5, align 8
  %22 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %5, align 8
  %27 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 254
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %32 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %5, align 8
  %33 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %5, align 8
  %36 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %34, i32 %37)
  ret void
}

declare dso_local %struct.nv50_i2c_bus* @nv50_i2c_bus(%struct.nvkm_i2c_bus*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
