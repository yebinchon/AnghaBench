; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_fan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_fan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { i32, %struct.TYPE_2__*, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i64 (%struct.nvkm_therm*)* }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nvkm_therm_fan_mode.name = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@NVKM_THERM_CTRL_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVKM_THERM_CTRL_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"fan management: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_therm_fan_mode(%struct.nvkm_therm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 2
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %6, align 8
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @nvkm_therm_fan_mode.name, i64 0, i64 0))
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NVKM_THERM_CTRL_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %22 = call i64 @nvkm_pmu_fan_controlled(%struct.nvkm_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %20, %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NVKM_THERM_CTRL_AUTO, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64 (%struct.nvkm_therm*)*, i64 (%struct.nvkm_therm*)** %35, align 8
  %37 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %38 = call i64 %36(%struct.nvkm_therm* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %31, %27
  %44 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %45 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %60

50:                                               ; preds = %43
  %51 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* @nvkm_therm_fan_mode.name, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @nvkm_debug(%struct.nvkm_subdev* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @nvkm_therm_update(%struct.nvkm_therm* %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %50, %49, %40, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @nvkm_pmu_fan_controlled(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i8*) #1

declare dso_local i32 @nvkm_therm_update(%struct.nvkm_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
