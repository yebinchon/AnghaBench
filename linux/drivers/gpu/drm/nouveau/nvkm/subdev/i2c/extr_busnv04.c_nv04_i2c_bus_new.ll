; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv04.c_nv04_i2c_bus_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv04.c_nv04_i2c_bus_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }
%struct.nv04_i2c_bus = type { i8*, i8*, %struct.nvkm_i2c_bus }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv04_i2c_bus_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_i2c_bus_new(%struct.nvkm_i2c_pad* %0, i32 %1, i8* %2, i8* %3, %struct.nvkm_i2c_bus** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_i2c_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nvkm_i2c_bus**, align 8
  %12 = alloca %struct.nv04_i2c_bus*, align 8
  store %struct.nvkm_i2c_pad* %0, %struct.nvkm_i2c_pad** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.nvkm_i2c_bus** %4, %struct.nvkm_i2c_bus*** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nv04_i2c_bus* @kzalloc(i32 24, i32 %13)
  store %struct.nv04_i2c_bus* %14, %struct.nv04_i2c_bus** %12, align 8
  %15 = icmp ne %struct.nv04_i2c_bus* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %34

19:                                               ; preds = %5
  %20 = load %struct.nv04_i2c_bus*, %struct.nv04_i2c_bus** %12, align 8
  %21 = getelementptr inbounds %struct.nv04_i2c_bus, %struct.nv04_i2c_bus* %20, i32 0, i32 2
  %22 = load %struct.nvkm_i2c_bus**, %struct.nvkm_i2c_bus*** %11, align 8
  store %struct.nvkm_i2c_bus* %21, %struct.nvkm_i2c_bus** %22, align 8
  %23 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nv04_i2c_bus*, %struct.nv04_i2c_bus** %12, align 8
  %26 = getelementptr inbounds %struct.nv04_i2c_bus, %struct.nv04_i2c_bus* %25, i32 0, i32 2
  %27 = call i32 @nvkm_i2c_bus_ctor(i32* @nv04_i2c_bus_func, %struct.nvkm_i2c_pad* %23, i32 %24, %struct.nvkm_i2c_bus* %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.nv04_i2c_bus*, %struct.nv04_i2c_bus** %12, align 8
  %30 = getelementptr inbounds %struct.nv04_i2c_bus, %struct.nv04_i2c_bus* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.nv04_i2c_bus*, %struct.nv04_i2c_bus** %12, align 8
  %33 = getelementptr inbounds %struct.nv04_i2c_bus, %struct.nv04_i2c_bus* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.nv04_i2c_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_i2c_bus_ctor(i32*, %struct.nvkm_i2c_pad*, i32, %struct.nvkm_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
