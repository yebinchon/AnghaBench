; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_get_xgmi_hive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_get_xgmi_hive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_hive_info = type { i64, i32, i32, i32, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@xgmi_mutex = common dso_local global i32 0, align 4
@hive_count = common dso_local global i32 0, align 4
@xgmi_hives = common dso_local global %struct.amdgpu_hive_info* null, align 8
@AMDGPU_MAX_XGMI_HIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amdgpu_hive_info* @amdgpu_get_xgmi_hive(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_hive_info*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_hive_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.amdgpu_hive_info* null, %struct.amdgpu_hive_info** %3, align 8
  br label %98

15:                                               ; preds = %2
  %16 = call i32 @mutex_lock(i32* @xgmi_mutex)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %46, %15
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @hive_count, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** @xgmi_hives, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %22, i64 %24
  store %struct.amdgpu_hive_info* %25, %struct.amdgpu_hive_info** %7, align 8
  %26 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = call i32 @mutex_unlock(i32* @xgmi_mutex)
  %44 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  store %struct.amdgpu_hive_info* %44, %struct.amdgpu_hive_info** %3, align 8
  br label %98

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %17

49:                                               ; preds = %17
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AMDGPU_MAX_XGMI_HIVE, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @mutex_unlock(i32* @xgmi_mutex)
  store %struct.amdgpu_hive_info* null, %struct.amdgpu_hive_info** %3, align 8
  br label %98

55:                                               ; preds = %49
  %56 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** @xgmi_hives, align 8
  %57 = load i32, i32* @hive_count, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @hive_count, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %56, i64 %59
  store %struct.amdgpu_hive_info* %60, %struct.amdgpu_hive_info** %7, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %62 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %63 = call i64 @amdgpu_xgmi_sysfs_create(%struct.amdgpu_device* %61, %struct.amdgpu_hive_info* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = call i32 @mutex_unlock(i32* @xgmi_mutex)
  store %struct.amdgpu_hive_info* null, %struct.amdgpu_hive_info** %3, align 8
  br label %98

67:                                               ; preds = %55
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %70 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %69, i32 0, i32 5
  store %struct.amdgpu_device* %68, %struct.amdgpu_device** %70, align 8
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %77 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %79 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %78, i32 0, i32 4
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %82 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %81, i32 0, i32 2
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %85 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %84, i32 0, i32 3
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %67
  %90 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %91 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %90, i32 0, i32 2
  %92 = call i32 @mutex_lock(i32* %91)
  br label %93

93:                                               ; preds = %89, %67
  %94 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  %95 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 8
  %96 = call i32 @mutex_unlock(i32* @xgmi_mutex)
  %97 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %7, align 8
  store %struct.amdgpu_hive_info* %97, %struct.amdgpu_hive_info** %3, align 8
  br label %98

98:                                               ; preds = %93, %65, %53, %42, %14
  %99 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  ret %struct.amdgpu_hive_info* %99
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @amdgpu_xgmi_sysfs_create(%struct.amdgpu_device*, %struct.amdgpu_hive_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
