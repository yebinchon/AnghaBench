; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_pwm_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv50.c_pwm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown pwm ctrl for gpio %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*, i32*, i32*, i32*)* @pwm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_info(%struct.nvkm_therm* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_therm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  store i32 57600, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 4, i32* %18, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  store i32 57600, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 9, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 1, i32* %27, align 4
  br label %44

28:                                               ; preds = %20
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  store i32 57996, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 0, i32* %35, align 4
  br label %43

36:                                               ; preds = %28
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nvkm_error(%struct.nvkm_subdev* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %16
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
