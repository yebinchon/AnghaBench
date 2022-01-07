; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf119_fan_pwm_clock(%struct.nvkm_therm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %6, align 8
  %12 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pwm_info(%struct.nvkm_therm* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = sdiv i32 %25, 20
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %29 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 1000
  %32 = sdiv i32 %31, 10
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %21, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @pwm_info(%struct.nvkm_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
