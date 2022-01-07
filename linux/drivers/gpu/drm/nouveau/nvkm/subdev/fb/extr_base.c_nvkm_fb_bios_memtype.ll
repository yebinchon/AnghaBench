; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_bios_memtype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_bios_memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvbios_M0203E = type { i32 }

@NVKM_RAM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR3 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR5 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR5X = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR6 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_HBM2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"M0203E type %02x\0A\00", align 1
@NVKM_RAM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"M0203E not matched!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_fb_bios_memtype(%struct.nvkm_bios* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvbios_M0203E, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  %10 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %4, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 1052672)
  %17 = and i32 %16, 60
  %18 = ashr i32 %17, 2
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @nvbios_M0203Em(%struct.nvkm_bios* %19, i32 %20, i32* %8, i32* %9, %struct.nvbios_M0203E* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nvbios_M0203E, %struct.nvbios_M0203E* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %40 [
    i32 134, label %26
    i32 133, label %28
    i32 132, label %30
    i32 131, label %32
    i32 130, label %34
    i32 129, label %36
    i32 128, label %38
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* @NVKM_RAM_TYPE_DDR2, align 4
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %23
  %29 = load i32, i32* @NVKM_RAM_TYPE_DDR3, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load i32, i32* @NVKM_RAM_TYPE_GDDR3, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %23
  %33 = load i32, i32* @NVKM_RAM_TYPE_GDDR5, align 4
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %23
  %35 = load i32, i32* @NVKM_RAM_TYPE_GDDR5X, align 4
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %23
  %37 = load i32, i32* @NVKM_RAM_TYPE_GDDR6, align 4
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %23
  %39 = load i32, i32* @NVKM_RAM_TYPE_HBM2, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %23
  %41 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %42 = getelementptr inbounds %struct.nvbios_M0203E, %struct.nvbios_M0203E* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @NVKM_RAM_TYPE_UNKNOWN, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %1
  %47 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %48 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @NVKM_RAM_TYPE_UNKNOWN, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %40, %38, %36, %34, %32, %30, %28, %26
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @nvbios_M0203Em(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_M0203E*) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
