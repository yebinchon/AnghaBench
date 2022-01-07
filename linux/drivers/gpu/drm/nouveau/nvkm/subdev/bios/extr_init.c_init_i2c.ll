; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.nvbios_init = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_i2c* }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_i2c_bus = type { %struct.i2c_adapter }

@NVKM_I2C_BUS_PRI = common dso_local global i32 0, align 4
@NVKM_I2C_BUS_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_adapter* (%struct.nvbios_init*, i32)* @init_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_adapter* @init_i2c(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca %struct.nvbios_init*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_i2c*, align 8
  %6 = alloca %struct.nvkm_i2c_bus*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %12, align 8
  store %struct.nvkm_i2c* %13, %struct.nvkm_i2c** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @NVKM_I2C_BUS_PRI, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %24 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @NVKM_I2C_BUS_SEC, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %22, %16
  br label %44

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @NVKM_I2C_BUS_PRI, align 4
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @NVKM_I2C_BUS_SEC, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %31
  %45 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %45, i32 %46)
  store %struct.nvkm_i2c_bus* %47, %struct.nvkm_i2c_bus** %6, align 8
  %48 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %49 = icmp ne %struct.nvkm_i2c_bus* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %52 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %51, i32 0, i32 0
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi %struct.i2c_adapter* [ %52, %50 ], [ null, %53 ]
  ret %struct.i2c_adapter* %55
}

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
