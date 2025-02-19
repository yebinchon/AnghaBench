; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_sysfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_sysfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ras_common_if = type { i32 }
%struct.ras_manager = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ras\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_sysfs_remove(%struct.amdgpu_device* %0, %struct.ras_common_if* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_common_if*, align 8
  %6 = alloca %struct.ras_manager*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ras_common_if* %1, %struct.ras_common_if** %5, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %9 = call %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device* %7, %struct.ras_common_if* %8)
  store %struct.ras_manager* %9, %struct.ras_manager** %6, align 8
  %10 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %11 = icmp ne %struct.ras_manager* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %14 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %12
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %26 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @sysfs_remove_file_from_group(i32* %24, i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %30 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %32 = call i32 @put_obj(%struct.ras_manager* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device*, %struct.ras_common_if*) #1

declare dso_local i32 @sysfs_remove_file_from_group(i32*, i32*, i8*) #1

declare dso_local i32 @put_obj(%struct.ras_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
