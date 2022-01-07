; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_reinit_early_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_reinit_early_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.amdgpu_ip_block* }
%struct.amdgpu_ip_block = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, i32 }

@amdgpu_device_ip_reinit_early_sriov.ip_order = internal global [4 x i32] [i32 130, i32 131, i32 128, i32 129], align 16
@.str = private unnamed_addr constant [22 x i8] c"RE-INIT-early: %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_device_ip_reinit_early_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_ip_reinit_early_sriov(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_ip_block*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %81, %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @amdgpu_device_ip_reinit_early_sriov.ip_order, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %84

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %77, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %13
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %22, i64 %24
  store %struct.amdgpu_ip_block* %25, %struct.amdgpu_ip_block** %7, align 8
  %26 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* @amdgpu_device_ip_reinit_early_sriov.ip_order, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %33, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %19
  %40 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %19
  br label %77

46:                                               ; preds = %39
  %47 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.amdgpu_device*)**
  %54 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %53, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = call i32 %54(%struct.amdgpu_device* %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %67)
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %46
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %85

73:                                               ; preds = %46
  %74 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %75 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %45
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %13

80:                                               ; preds = %13
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %8

84:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
