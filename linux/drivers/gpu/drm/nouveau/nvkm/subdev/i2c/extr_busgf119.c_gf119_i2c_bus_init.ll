; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busgf119.c_gf119_i2c_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busgf119.c_gf119_i2c_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_bus = type { i32 }
%struct.gf119_i2c_bus = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_i2c_bus*)* @gf119_i2c_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf119_i2c_bus_init(%struct.nvkm_i2c_bus* %0) #0 {
  %2 = alloca %struct.nvkm_i2c_bus*, align 8
  %3 = alloca %struct.gf119_i2c_bus*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_i2c_bus* %0, %struct.nvkm_i2c_bus** %2, align 8
  %5 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %2, align 8
  %6 = call %struct.gf119_i2c_bus* @gf119_i2c_bus(%struct.nvkm_i2c_bus* %5)
  store %struct.gf119_i2c_bus* %6, %struct.gf119_i2c_bus** %3, align 8
  %7 = load %struct.gf119_i2c_bus*, %struct.gf119_i2c_bus** %3, align 8
  %8 = getelementptr inbounds %struct.gf119_i2c_bus, %struct.gf119_i2c_bus* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %4, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = load %struct.gf119_i2c_bus*, %struct.gf119_i2c_bus** %3, align 8
  %18 = getelementptr inbounds %struct.gf119_i2c_bus, %struct.gf119_i2c_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 %19, i32 7)
  ret void
}

declare dso_local %struct.gf119_i2c_bus* @gf119_i2c_bus(%struct.nvkm_i2c_bus*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
