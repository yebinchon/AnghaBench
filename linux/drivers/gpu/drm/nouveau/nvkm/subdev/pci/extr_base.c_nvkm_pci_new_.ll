; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci_func = type { i64 }
%struct.nvkm_device = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* (%struct.nvkm_device*)* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nvkm_pci = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.nvkm_pci_func* }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_pci_func = common dso_local global i32 0, align 4
@NVKM_DEVICE_AGP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"NvMSI\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MSI enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_pci_new_(%struct.nvkm_pci_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_pci** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_pci_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_pci**, align 8
  %10 = alloca %struct.nvkm_pci*, align 8
  store %struct.nvkm_pci_func* %0, %struct.nvkm_pci_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_pci** %3, %struct.nvkm_pci*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvkm_pci* @kzalloc(i32 40, i32 %11)
  %13 = load %struct.nvkm_pci**, %struct.nvkm_pci*** %9, align 8
  store %struct.nvkm_pci* %12, %struct.nvkm_pci** %13, align 8
  store %struct.nvkm_pci* %12, %struct.nvkm_pci** %10, align 8
  %14 = icmp ne %struct.nvkm_pci* %12, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %112

18:                                               ; preds = %4
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %22 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %21, i32 0, i32 2
  %23 = call i32 @nvkm_subdev_ctor(i32* @nvkm_pci_func, %struct.nvkm_device* %19, i32 %20, i32* %22)
  %24 = load %struct.nvkm_pci_func*, %struct.nvkm_pci_func** %6, align 8
  %25 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %26 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %25, i32 0, i32 5
  store %struct.nvkm_pci_func* %24, %struct.nvkm_pci_func** %26, align 8
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %28 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__* (%struct.nvkm_device*)*, %struct.TYPE_7__* (%struct.nvkm_device*)** %30, align 8
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %33 = call %struct.TYPE_7__* %31(%struct.nvkm_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %37 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %36, i32 0, i32 3
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %39 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %41 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %44 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %47 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NVKM_DEVICE_AGP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %18
  %52 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %53 = call i32 @nvkm_agp_ctor(%struct.nvkm_pci* %52)
  br label %54

54:                                               ; preds = %51, %18
  %55 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %56 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 4080
  switch i32 %60, label %62 [
    i32 240, label %61
    i32 736, label %61
  ]

61:                                               ; preds = %54, %54
  br label %71

62:                                               ; preds = %54
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %64 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %67 [
    i32 170, label %66
  ]

66:                                               ; preds = %62
  br label %70

67:                                               ; preds = %62
  %68 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %69 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %66
  br label %71

71:                                               ; preds = %70, %61
  %72 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %73 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %76 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nvkm_boolopt(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %80 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %82 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %71
  %86 = load %struct.nvkm_pci_func*, %struct.nvkm_pci_func** %6, align 8
  %87 = getelementptr inbounds %struct.nvkm_pci_func, %struct.nvkm_pci_func* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %92 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = call i64 @pci_enable_msi(%struct.TYPE_8__* %93)
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %98 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %100 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %105 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %104, i32 0, i32 2
  %106 = call i32 @nvkm_debug(i32* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %90
  br label %111

108:                                              ; preds = %85, %71
  %109 = load %struct.nvkm_pci*, %struct.nvkm_pci** %10, align 8
  %110 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %107
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %15
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.nvkm_pci* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @nvkm_agp_ctor(%struct.nvkm_pci*) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

declare dso_local i64 @pci_enable_msi(%struct.TYPE_8__*) #1

declare dso_local i32 @nvkm_debug(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
