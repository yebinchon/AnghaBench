; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_nv50_fan_pwm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_nv50_fan_pwm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fan_pwm_set(%struct.nvkm_therm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %10, align 8
  %18 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %19 = call i32 @pwm_info(%struct.nvkm_therm* %18, i32* %7, i32* %11, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %38

24:                                               ; preds = %4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %26, 8
  %28 = add nsw i32 57620, %27
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %25, i32 %28, i32 %29)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %32, 8
  %34 = add nsw i32 57624, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, -2147483648
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %34, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %24, %22
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @pwm_info(%struct.nvkm_therm*, i32*, i32*, i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
