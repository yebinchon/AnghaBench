; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_padg94.c_g94_i2c_pad_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_padg94.c_g94_i2c_pad_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g94_i2c_pad_mode(%struct.nvkm_i2c_pad* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_i2c_pad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_i2c_pad* %0, %struct.nvkm_i2c_pad** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %5, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %6, align 8
  %15 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @NVKM_I2C_PAD_HYBRID(i32 0)
  %19 = sub nsw i32 %17, %18
  %20 = mul nsw i32 %19, 80
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %45 [
    i32 128, label %22
    i32 129, label %27
    i32 130, label %36
  ]

22:                                               ; preds = %2
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 58636, %24
  %26 = call i32 @nvkm_mask(%struct.nvkm_device* %23, i32 %25, i32 1, i32 1)
  br label %47

27:                                               ; preds = %2
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 58624, %29
  %31 = call i32 @nvkm_mask(%struct.nvkm_device* %28, i32 %30, i32 49155, i32 49153)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 58636, %33
  %35 = call i32 @nvkm_mask(%struct.nvkm_device* %32, i32 %34, i32 1, i32 0)
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 58624, %38
  %40 = call i32 @nvkm_mask(%struct.nvkm_device* %37, i32 %39, i32 49155, i32 2)
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 58636, %42
  %44 = call i32 @nvkm_mask(%struct.nvkm_device* %41, i32 %43, i32 1, i32 0)
  br label %47

45:                                               ; preds = %2
  %46 = call i32 @WARN_ON(i32 1)
  br label %47

47:                                               ; preds = %45, %36, %27, %22
  ret void
}

declare dso_local i32 @NVKM_I2C_PAD_HYBRID(i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
