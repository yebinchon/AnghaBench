; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"amdgpu: using MSI.\0A\00", align 1
@amdgpu_hotplug_work_func = common dso_local global i32 0, align 4
@amdgpu_irq_handle_ih1 = common dso_local global i32 0, align 4
@amdgpu_irq_handle_ih2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"amdgpu: irq initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_irq_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i64 @amdgpu_msi_ok(%struct.amdgpu_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_enable_msi(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %23, %16
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = call i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %32
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @drm_vblank_init(%struct.TYPE_9__* %49, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %110

59:                                               ; preds = %46
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = load i32, i32* @amdgpu_hotplug_work_func, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %32
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i32, i32* @amdgpu_irq_handle_ih1, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* @amdgpu_irq_handle_ih2, align 4
  %74 = call i32 @INIT_WORK(i32* %72, i32 %73)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @drm_irq_install(%struct.TYPE_9__* %80, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %64
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = call i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = call i32 @flush_work(i32* %100)
  br label %102

102:                                              ; preds = %98, %91
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %110

104:                                              ; preds = %64
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 16777215, i32* %108, align 4
  %109 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %104, %102, %57
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @amdgpu_msi_ok(%struct.amdgpu_device*) #1

declare dso_local i32 @pci_enable_msi(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_irq_install(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
