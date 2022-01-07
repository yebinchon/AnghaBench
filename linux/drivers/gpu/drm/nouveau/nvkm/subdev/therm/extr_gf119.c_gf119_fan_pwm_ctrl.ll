; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_gf119_fan_pwm_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf119_fan_pwm_ctrl(%struct.nvkm_therm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_therm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 64, i32 0
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @pwm_info(%struct.nvkm_therm* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 4
  %33 = add nsw i32 54800, %32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @nvkm_mask(%struct.nvkm_device* %30, i32 %33, i32 192, i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @pwm_info(%struct.nvkm_therm*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
