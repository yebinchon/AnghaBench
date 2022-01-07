; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.device*, i32, i32* }
%struct.device = type { i32, i32, i32 }
%struct.intel_th = type { i32, %struct.device*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }

@INTEL_TH_OUTPUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_th_bus = common dso_local global i32 0, align 4
@intel_th_device_type = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%d-%s%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_th_device* (%struct.intel_th*, i32, i8*, i32)* @intel_th_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_th_device* @intel_th_device_alloc(%struct.intel_th* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.intel_th_device*, align 8
  %6 = alloca %struct.intel_th*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th* %0, %struct.intel_th** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @INTEL_TH_OUTPUT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.intel_th*, %struct.intel_th** %6, align 8
  %17 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.intel_th*, %struct.intel_th** %6, align 8
  %22 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %10, align 8
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add i64 48, %26
  %28 = add i64 %27, 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.intel_th_device* @kzalloc(i64 %28, i32 %29)
  store %struct.intel_th_device* %30, %struct.intel_th_device** %11, align 8
  %31 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %32 = icmp ne %struct.intel_th_device* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store %struct.intel_th_device* null, %struct.intel_th_device** %5, align 8
  br label %103

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %37 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %40 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %42 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strcpy(i32 %43, i8* %44)
  %46 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %47 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %46, i32 0, i32 2
  %48 = call i32 @device_initialize(%struct.TYPE_6__* %47)
  %49 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %50 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store i32* @intel_th_bus, i32** %51, align 8
  %52 = load i32*, i32** @intel_th_device_type, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %58 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 8
  %60 = load %struct.device*, %struct.device** %10, align 8
  %61 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %62 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store %struct.device* %60, %struct.device** %63, align 8
  %64 = load %struct.device*, %struct.device** %10, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %68 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.device*, %struct.device** %10, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %74 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %77 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %76, i32 0, i32 2
  %78 = load %struct.device*, %struct.device** %10, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dma_set_coherent_mask(%struct.TYPE_6__* %77, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %34
  %85 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %86 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %85, i32 0, i32 2
  %87 = load %struct.intel_th*, %struct.intel_th** %6, align 8
  %88 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct.TYPE_6__*, i8*, i32, i8*, ...) @dev_set_name(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %89, i8* %90, i32 %91)
  br label %101

93:                                               ; preds = %34
  %94 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  %95 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %94, i32 0, i32 2
  %96 = load %struct.intel_th*, %struct.intel_th** %6, align 8
  %97 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 (%struct.TYPE_6__*, i8*, i32, i8*, ...) @dev_set_name(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %93, %84
  %102 = load %struct.intel_th_device*, %struct.intel_th_device** %11, align 8
  store %struct.intel_th_device* %102, %struct.intel_th_device** %5, align 8
  br label %103

103:                                              ; preds = %101, %33
  %104 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  ret %struct.intel_th_device* %104
}

declare dso_local %struct.intel_th_device* @kzalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
