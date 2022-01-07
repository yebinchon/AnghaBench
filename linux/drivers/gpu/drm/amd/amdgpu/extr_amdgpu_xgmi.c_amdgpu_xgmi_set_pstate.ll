; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_xgmi_set_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_xgmi_set_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.amdgpu_hive_info = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Set xgmi pstate %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"XGMI: Set pstate failure on device %llx, hive %llx, ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_xgmi_set_pstate(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_hive_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call %struct.amdgpu_hive_info* @amdgpu_get_xgmi_hive(%struct.amdgpu_device* %8, i32 0)
  store %struct.amdgpu_hive_info* %9, %struct.amdgpu_hive_info** %7, align 8
  %10 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %11 = icmp ne %struct.amdgpu_hive_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %55

20:                                               ; preds = %13
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = call i64 @is_support_sw_smu_xgmi(%struct.amdgpu_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @smu_set_xgmi_pstate(i32* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %37, %34
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %19, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.amdgpu_hive_info* @amdgpu_get_xgmi_hive(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @is_support_sw_smu_xgmi(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_set_xgmi_pstate(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
