; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_fan.c_nvbios_fan_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_fan.c_nvbios_fan_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_therm_fan = type { i32, i8*, i8*, i32, i32 }

@NVBIOS_THERM_FAN_TOGGLE = common dso_local global i32 0, align 4
@NVBIOS_THERM_FAN_PWM = common dso_local global i32 0, align 4
@NVBIOS_THERM_FAN_UNK = common dso_local global i32 0, align 4
@NVBIOS_THERM_FAN_LINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_fan_parse(%struct.nvkm_bios* %0, %struct.nvbios_therm_fan* %1) #0 {
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.nvbios_therm_fan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  store %struct.nvbios_therm_fan* %1, %struct.nvbios_therm_fan** %4, align 8
  %11 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %12 = call i64 @nvbios_fan_entry(%struct.nvkm_bios* %11, i32 0, i32* %5, i32* %6, i32* %7, i32* %8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %2
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %17, 0
  %19 = call i8* @nvbios_rd08(%struct.nvkm_bios* %16, i64 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %30 [
    i32 0, label %22
    i32 1, label %26
    i32 2, label %26
  ]

22:                                               ; preds = %15
  %23 = load i32, i32* @NVBIOS_THERM_FAN_TOGGLE, align 4
  %24 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %25 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  br label %34

26:                                               ; preds = %15, %15
  %27 = load i32, i32* @NVBIOS_THERM_FAN_PWM, align 4
  %28 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %29 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %15
  %31 = load i32, i32* @NVBIOS_THERM_FAN_UNK, align 4
  %32 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %33 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %26, %22
  %35 = load i32, i32* @NVBIOS_THERM_FAN_LINEAR, align 4
  %36 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %37 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, 2
  %41 = call i8* @nvbios_rd08(%struct.nvkm_bios* %38, i64 %40)
  %42 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %43 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 3
  %47 = call i8* @nvbios_rd08(%struct.nvkm_bios* %44, i64 %46)
  %48 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %49 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 11
  %53 = call i32 @nvbios_rd32(%struct.nvkm_bios* %50, i64 %52)
  %54 = and i32 %53, 16777215
  %55 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %56 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %34, %2
  %58 = load i64, i64* %9, align 8
  ret i64 %58
}

declare dso_local i64 @nvbios_fan_entry(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
