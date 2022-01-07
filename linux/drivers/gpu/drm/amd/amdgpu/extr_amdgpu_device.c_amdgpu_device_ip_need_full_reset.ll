; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_need_full_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_need_full_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@AMD_IP_BLOCK_TYPE_GMC = common dso_local global i64 0, align 8
@AMD_IP_BLOCK_TYPE_SMC = common dso_local global i64 0, align 8
@AMD_IP_BLOCK_TYPE_ACP = common dso_local global i64 0, align 8
@AMD_IP_BLOCK_TYPE_DCE = common dso_local global i64 0, align 8
@AMD_IP_BLOCK_TYPE_PSP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Some block need full reset!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_device_ip_need_full_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_ip_need_full_reset(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call i64 @amdgpu_asic_need_full_reset(%struct.amdgpu_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %112

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %108, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %111

16:                                               ; preds = %10
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %108

28:                                               ; preds = %16
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AMD_IP_BLOCK_TYPE_GMC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %93, label %41

41:                                               ; preds = %28
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AMD_IP_BLOCK_TYPE_SMC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %93, label %54

54:                                               ; preds = %41
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AMD_IP_BLOCK_TYPE_ACP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %93, label %67

67:                                               ; preds = %54
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AMD_IP_BLOCK_TYPE_DCE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %93, label %80

80:                                               ; preds = %67
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AMD_IP_BLOCK_TYPE_PSP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %80, %67, %54, %41, %28
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = call i32 @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %112

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %80
  br label %108

108:                                              ; preds = %107, %27
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %10

111:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %104, %8
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @amdgpu_asic_need_full_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
