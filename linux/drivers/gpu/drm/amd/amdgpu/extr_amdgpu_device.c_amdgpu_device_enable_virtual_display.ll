; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_enable_virtual_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_enable_virtual_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_device = type { i32 }

@amdgpu_virtual_display = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"virtual display string:%s, %s:virtual_display:%d, num_crtc:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @amdgpu_device_enable_virtual_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_device_enable_virtual_display(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load i64, i64* @amdgpu_virtual_display, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %3, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @pci_name(i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i64, i64* @amdgpu_virtual_display, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i64 %23, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %69, %15
  %28 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %70

30:                                               ; preds = %27
  %31 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %35, %30
  store i32 -1, i32* %10, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @kstrtol(i8* %46, i32 10, i64* %9)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 1, i64* %9, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i64, i64* %9, align 8
  %57 = icmp sgt i64 %56, 6
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 6, i64* %9, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %68

64:                                               ; preds = %48
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 1, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  br label %70

69:                                               ; preds = %35
  br label %27

70:                                               ; preds = %68, %27
  %71 = load i64, i64* @amdgpu_virtual_display, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @DRM_INFO(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %71, i8* %72, i32 %75, i32 %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @kfree(i8* %82)
  br label %84

84:                                               ; preds = %70, %1
  ret void
}

declare dso_local i8* @pci_name(i32) #1

declare dso_local i8* @kstrdup(i64, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
