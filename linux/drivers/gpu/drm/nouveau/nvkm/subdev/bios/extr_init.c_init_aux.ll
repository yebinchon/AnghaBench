; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux = type { i32 }
%struct.nvbios_init = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_i2c* }
%struct.nvkm_i2c = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"script needs output for aux\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_i2c_aux* (%struct.nvbios_init*)* @init_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_i2c_aux* @init_aux(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvkm_i2c_aux*, align 8
  %3 = alloca %struct.nvbios_init*, align 8
  %4 = alloca %struct.nvkm_i2c*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %3, align 8
  %5 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %6 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %10, align 8
  store %struct.nvkm_i2c* %11, %struct.nvkm_i2c** %4, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %18 = call i64 @init_exec(%struct.nvbios_init* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  store %struct.nvkm_i2c_aux* null, %struct.nvkm_i2c_aux** %2, align 8
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %4, align 8
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %26 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c* %24, i32 %29)
  store %struct.nvkm_i2c_aux* %30, %struct.nvkm_i2c_aux** %2, align 8
  br label %31

31:                                               ; preds = %23, %22
  %32 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %2, align 8
  ret %struct.nvkm_i2c_aux* %32
}

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
