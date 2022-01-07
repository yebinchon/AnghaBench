; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv4e.c_nv4e_i2c_bus_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv4e.c_nv4e_i2c_bus_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }
%struct.nv4e_i2c_bus = type { i64, %struct.nvkm_i2c_bus }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv4e_i2c_bus_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv4e_i2c_bus_new(%struct.nvkm_i2c_pad* %0, i32 %1, i64 %2, %struct.nvkm_i2c_bus** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_i2c_bus**, align 8
  %10 = alloca %struct.nv4e_i2c_bus*, align 8
  store %struct.nvkm_i2c_pad* %0, %struct.nvkm_i2c_pad** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.nvkm_i2c_bus** %3, %struct.nvkm_i2c_bus*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nv4e_i2c_bus* @kzalloc(i32 16, i32 %11)
  store %struct.nv4e_i2c_bus* %12, %struct.nv4e_i2c_bus** %10, align 8
  %13 = icmp ne %struct.nv4e_i2c_bus* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %30

17:                                               ; preds = %4
  %18 = load %struct.nv4e_i2c_bus*, %struct.nv4e_i2c_bus** %10, align 8
  %19 = getelementptr inbounds %struct.nv4e_i2c_bus, %struct.nv4e_i2c_bus* %18, i32 0, i32 1
  %20 = load %struct.nvkm_i2c_bus**, %struct.nvkm_i2c_bus*** %9, align 8
  store %struct.nvkm_i2c_bus* %19, %struct.nvkm_i2c_bus** %20, align 8
  %21 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.nv4e_i2c_bus*, %struct.nv4e_i2c_bus** %10, align 8
  %24 = getelementptr inbounds %struct.nv4e_i2c_bus, %struct.nv4e_i2c_bus* %23, i32 0, i32 1
  %25 = call i32 @nvkm_i2c_bus_ctor(i32* @nv4e_i2c_bus_func, %struct.nvkm_i2c_pad* %21, i32 %22, %struct.nvkm_i2c_bus* %24)
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 6293504, %26
  %28 = load %struct.nv4e_i2c_bus*, %struct.nv4e_i2c_bus** %10, align 8
  %29 = getelementptr inbounds %struct.nv4e_i2c_bus, %struct.nv4e_i2c_bus* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %17, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.nv4e_i2c_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_i2c_bus_ctor(i32*, %struct.nvkm_i2c_pad*, i32, %struct.nvkm_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
