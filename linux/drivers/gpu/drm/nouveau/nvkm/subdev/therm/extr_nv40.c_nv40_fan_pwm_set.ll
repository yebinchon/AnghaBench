; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv40.c_nv40_fan_pwm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv40.c_nv40_fan_pwm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown pwm ctrl for gpio %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*, i32, i32, i32)* @nv40_fan_pwm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fan_pwm_set(%struct.nvkm_therm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %10, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @nvkm_mask(%struct.nvkm_device* %20, i32 4336, i32 2147450879, i32 %24)
  br label %43

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %30, i32 5624, i32 %31)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @nvkm_mask(%struct.nvkm_device* %33, i32 5620, i32 2147483647, i32 %34)
  br label %42

36:                                               ; preds = %26
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nvkm_error(%struct.nvkm_subdev* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %19
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
