; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_reinit_late_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_reinit_late_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.amdgpu_ip_block* }
%struct.amdgpu_ip_block = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, i32 }

@amdgpu_device_ip_reinit_late_sriov.ip_order = internal global [6 x i32] [i32 130, i32 133, i32 132, i32 131, i32 129, i32 128], align 16
@.str = private unnamed_addr constant [21 x i8] c"RE-INIT-late: %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_device_ip_reinit_late_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_ip_reinit_late_sriov(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_ip_block*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %84, %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @amdgpu_device_ip_reinit_late_sriov.ip_order, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %87

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %80, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %13
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %22, i64 %24
  store %struct.amdgpu_ip_block* %25, %struct.amdgpu_ip_block** %7, align 8
  %26 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* @amdgpu_device_ip_reinit_late_sriov.ip_order, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %19
  %37 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36, %19
  br label %80

49:                                               ; preds = %42
  %50 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.amdgpu_device*)**
  %57 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %56, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = call i32 %57(%struct.amdgpu_device* %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %66, i8* %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %49
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %88

76:                                               ; preds = %49
  %77 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %7, align 8
  %78 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %48
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %13

83:                                               ; preds = %13
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %8

87:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
