; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_main.c_mgag200_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_main.c_mgag200_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.mga_device* }
%struct.mga_device = type { i32, i32, i32*, i32, i32*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_MGA_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mgadrmfb_mmio\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't reserve mmio registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @mgag200_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgag200_device_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mga_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.mga_device*, %struct.mga_device** %10, align 8
  store %struct.mga_device* %11, %struct.mga_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %14 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %16 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PCI_MGA_OPTION, align 4
  %21 = call i32 @pci_read_config_dword(i32 %19, i32 %20, i32* %8)
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 16384
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %28 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %30 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %29, i32 0, i32 7
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_resource_start(i32 %33, i32 1)
  %35 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %36 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %38 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %37, i32 0, i32 7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_resource_len(i32 %41, i32 1)
  %43 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %44 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %46 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %45, i32 0, i32 7
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %51 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %54 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @devm_request_mem_region(i32 %49, i32 %52, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %2
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %108

62:                                               ; preds = %2
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32* @pcim_iomap(i32 %65, i32 1, i32 0)
  %67 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %68 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %70 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %108

76:                                               ; preds = %62
  %77 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %78 = call i64 @IS_G200_SE(%struct.mga_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = call i32 @RREG32(i32 7716)
  %82 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %83 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %86 = call i32 @mga_vram_init(%struct.mga_device* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %108

91:                                               ; preds = %84
  %92 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %93 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %97 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %101 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 0, i32* %103, align 4
  %104 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %105 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 2, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %91, %89, %73, %58
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @devm_request_mem_region(i32, i32, i32, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32* @pcim_iomap(i32, i32, i32) #1

declare dso_local i64 @IS_G200_SE(%struct.mga_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mga_vram_init(%struct.mga_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
