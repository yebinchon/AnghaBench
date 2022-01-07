; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_base.c_nvkm_device_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_base.c_nvkm_device_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s running...\0A\00", align 1
@NVKM_SUBDEV_NR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s completed in %lldus...\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"failed restart, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_device_fini(%struct.nvkm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (%struct.nvkm_device*, i8*, i8*, ...) @nvdev_trace(%struct.nvkm_device* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = call i32 (...) @ktime_get()
  %20 = call i32 @ktime_to_us(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = call i32 @nvkm_acpi_fini(%struct.nvkm_device* %21)
  %23 = load i32, i32* @NVKM_SUBDEV_NR, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %45, %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.nvkm_subdev* @nvkm_device_subdev(%struct.nvkm_device* %29, i32 %30)
  store %struct.nvkm_subdev* %31, %struct.nvkm_subdev** %7, align 8
  %32 = icmp ne %struct.nvkm_subdev* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @nvkm_subdev_fini(%struct.nvkm_subdev* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %80

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %9, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %50 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @nvkm_therm_clkgate_fini(i32 %51, i32 %52)
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %55 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.nvkm_device*, i32)**
  %59 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.nvkm_device*, i32)* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %48
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %63 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = bitcast {}** %65 to i32 (%struct.nvkm_device*, i32)**
  %67 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %66, align 8
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 %67(%struct.nvkm_device* %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %48
  %72 = call i32 (...) @ktime_get()
  %73 = call i32 @ktime_to_us(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (%struct.nvkm_device*, i8*, i8*, ...) @nvdev_trace(%struct.nvkm_device* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 %78)
  store i32 0, i32* %3, align 4
  br label %108

80:                                               ; preds = %42
  br label %81

81:                                               ; preds = %97, %80
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.nvkm_subdev* @nvkm_device_subdev(%struct.nvkm_device* %82, i32 %83)
  store %struct.nvkm_subdev* %84, %struct.nvkm_subdev** %7, align 8
  %85 = icmp ne %struct.nvkm_subdev* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %88 = call i32 @nvkm_subdev_init(%struct.nvkm_subdev* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @nvkm_fatal(%struct.nvkm_subdev* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @NVKM_SUBDEV_NR, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %81, label %102

102:                                              ; preds = %97
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (%struct.nvkm_device*, i8*, i8*, ...) @nvdev_trace(%struct.nvkm_device* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %102, %71
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @nvdev_trace(%struct.nvkm_device*, i8*, i8*, ...) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @nvkm_acpi_fini(%struct.nvkm_device*) #1

declare dso_local %struct.nvkm_subdev* @nvkm_device_subdev(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_subdev_fini(%struct.nvkm_subdev*, i32) #1

declare dso_local i32 @nvkm_therm_clkgate_fini(i32, i32) #1

declare dso_local i32 @nvkm_subdev_init(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_fatal(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
