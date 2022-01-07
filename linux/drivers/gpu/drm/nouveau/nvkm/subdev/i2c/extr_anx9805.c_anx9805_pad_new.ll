; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_pad_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_pad_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_bus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_i2c_pad = type { i32 }
%struct.anx9805_pad = type { i32, %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_pad }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@anx9805_pad_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anx9805_pad_new(%struct.nvkm_i2c_bus* %0, i32 %1, i32 %2, %struct.nvkm_i2c_pad** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_i2c_pad**, align 8
  %10 = alloca %struct.anx9805_pad*, align 8
  store %struct.nvkm_i2c_bus* %0, %struct.nvkm_i2c_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_i2c_pad** %3, %struct.nvkm_i2c_pad*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.anx9805_pad* @kzalloc(i32 24, i32 %11)
  store %struct.anx9805_pad* %12, %struct.anx9805_pad** %10, align 8
  %13 = icmp ne %struct.anx9805_pad* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %36

17:                                               ; preds = %4
  %18 = load %struct.anx9805_pad*, %struct.anx9805_pad** %10, align 8
  %19 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %18, i32 0, i32 2
  %20 = load %struct.nvkm_i2c_pad**, %struct.nvkm_i2c_pad*** %9, align 8
  store %struct.nvkm_i2c_pad* %19, %struct.nvkm_i2c_pad** %20, align 8
  %21 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.anx9805_pad*, %struct.anx9805_pad** %10, align 8
  %28 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %27, i32 0, i32 2
  %29 = call i32 @nvkm_i2c_pad_ctor(i32* @anx9805_pad_func, i32 %25, i32 %26, %struct.nvkm_i2c_pad* %28)
  %30 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %31 = load %struct.anx9805_pad*, %struct.anx9805_pad** %10, align 8
  %32 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %31, i32 0, i32 1
  store %struct.nvkm_i2c_bus* %30, %struct.nvkm_i2c_bus** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.anx9805_pad*, %struct.anx9805_pad** %10, align 8
  %35 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %17, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.anx9805_pad* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_i2c_pad_ctor(i32*, i32, i32, %struct.nvkm_i2c_pad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
