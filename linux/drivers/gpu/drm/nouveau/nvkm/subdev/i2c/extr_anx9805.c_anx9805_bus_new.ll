; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_bus_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_bus_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }
%struct.anx9805_pad = type { i32, i32 }
%struct.anx9805_bus = type { i32, %struct.nvkm_i2c_bus, %struct.anx9805_pad* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@anx9805_bus_func = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_i2c_pad*, i32, i32, %struct.nvkm_i2c_bus**)* @anx9805_bus_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_bus_new(%struct.nvkm_i2c_pad* %0, i32 %1, i32 %2, %struct.nvkm_i2c_bus** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_i2c_bus**, align 8
  %10 = alloca %struct.anx9805_pad*, align 8
  %11 = alloca %struct.anx9805_bus*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_i2c_pad* %0, %struct.nvkm_i2c_pad** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_i2c_bus** %3, %struct.nvkm_i2c_bus*** %9, align 8
  %13 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %6, align 8
  %14 = call %struct.anx9805_pad* @anx9805_pad(%struct.nvkm_i2c_pad* %13)
  store %struct.anx9805_pad* %14, %struct.anx9805_pad** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.anx9805_bus* @kzalloc(i32 16, i32 %15)
  store %struct.anx9805_bus* %16, %struct.anx9805_bus** %11, align 8
  %17 = icmp ne %struct.anx9805_bus* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.anx9805_bus*, %struct.anx9805_bus** %11, align 8
  %23 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %22, i32 0, i32 1
  %24 = load %struct.nvkm_i2c_bus**, %struct.nvkm_i2c_bus*** %9, align 8
  store %struct.nvkm_i2c_bus* %23, %struct.nvkm_i2c_bus** %24, align 8
  %25 = load %struct.anx9805_pad*, %struct.anx9805_pad** %10, align 8
  %26 = load %struct.anx9805_bus*, %struct.anx9805_bus** %11, align 8
  %27 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %26, i32 0, i32 2
  store %struct.anx9805_pad* %25, %struct.anx9805_pad** %27, align 8
  %28 = load %struct.anx9805_pad*, %struct.anx9805_pad** %10, align 8
  %29 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %28, i32 0, i32 1
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.anx9805_bus*, %struct.anx9805_bus** %11, align 8
  %32 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %31, i32 0, i32 1
  %33 = call i32 @nvkm_i2c_bus_ctor(i32* @anx9805_bus_func, i32* %29, i32 %30, %struct.nvkm_i2c_bus* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %52

38:                                               ; preds = %21
  %39 = load %struct.anx9805_pad*, %struct.anx9805_pad** %10, align 8
  %40 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %48 [
    i32 57, label %42
    i32 59, label %45
  ]

42:                                               ; preds = %38
  %43 = load %struct.anx9805_bus*, %struct.anx9805_bus** %11, align 8
  %44 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %43, i32 0, i32 0
  store i32 61, i32* %44, align 8
  br label %51

45:                                               ; preds = %38
  %46 = load %struct.anx9805_bus*, %struct.anx9805_bus** %11, align 8
  %47 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %46, i32 0, i32 0
  store i32 63, i32* %47, align 8
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %45, %42
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %48, %36, %18
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.anx9805_pad* @anx9805_pad(%struct.nvkm_i2c_pad*) #1

declare dso_local %struct.anx9805_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_i2c_bus_ctor(i32*, i32*, i32, %struct.nvkm_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
