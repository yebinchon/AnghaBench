; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_nv50_fan_pwm_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_nv50_fan_pwm_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fan_pwm_clock(%struct.nvkm_therm* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %5, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 80
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 148
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 16652)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 49216)
  %26 = and i32 %25, 8388608
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 100000000, %29
  %31 = mul nsw i32 %30, 10
  %32 = sdiv i32 %31, 24
  store i32 %32, i32* %6, align 4
  br label %42

33:                                               ; preds = %21
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, 20
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %33, %28
  br label %49

43:                                               ; preds = %16, %2
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 1000
  %48 = sdiv i32 %47, 20
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
