; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf119_fan_pwm_set(%struct.nvkm_therm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
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
  br label %54

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %28, 8
  %30 = add nsw i32 57620, %29
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 %30, i32 %31)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %34, 8
  %36 = add nsw i32 57624, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, -2147483648
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 %36, i32 %38)
  br label %52

40:                                               ; preds = %23
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @nvkm_mask(%struct.nvkm_device* %44, i32 131288, i32 8191, i32 %45)
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, 1073741824
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %47, i32 131292, i32 %49)
  br label %51

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @pwm_info(%struct.nvkm_therm*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
