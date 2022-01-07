; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf119_fan_pwm_get(%struct.nvkm_therm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %10, align 8
  %16 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @pwm_info(%struct.nvkm_therm* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 4
  %30 = add nsw i32 54800, %29
  %31 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 %30)
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 8
  %38 = add nsw i32 57620, %37
  %39 = call i32 @nvkm_rd32(%struct.nvkm_device* %35, i32 %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %42, 8
  %44 = add nsw i32 57624, %43
  %45 = call i32 @nvkm_rd32(%struct.nvkm_device* %41, i32 %44)
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %5, align 4
  br label %65

47:                                               ; preds = %26
  br label %61

48:                                               ; preds = %23
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %53 = call i32 @nvkm_rd32(%struct.nvkm_device* %52, i32 131288)
  %54 = and i32 %53, 8191
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %57 = call i32 @nvkm_rd32(%struct.nvkm_device* %56, i32 131292)
  %58 = and i32 %57, 8191
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %65

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %51, %34, %21
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pwm_info(%struct.nvkm_therm*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
