; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_pwm_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gf119.c_pwm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"GPIO %d unknown PWM: %08x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*, i32)* @pwm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_info(%struct.nvkm_therm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %6, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %7, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 4
  %17 = add nsw i32 54800, %16
  %18 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 192
  switch i32 %20, label %30 [
    i32 0, label %21
    i32 64, label %21
  ]

21:                                               ; preds = %2, %2
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 31
  switch i32 %23, label %28 [
    i32 0, label %24
    i32 25, label %25
    i32 28, label %26
    i32 30, label %27
  ]

24:                                               ; preds = %21
  store i32 2, i32* %3, align 4
  br label %38

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %38

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

27:                                               ; preds = %21
  store i32 2, i32* %3, align 4
  br label %38

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %2, %29
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nvkm_error(%struct.nvkm_subdev* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %27, %26, %25, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
