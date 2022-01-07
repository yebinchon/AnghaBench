; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_debugfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_debugfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_fs_if = type { i32, i32 }
%struct.amdgpu_ras = type { i32 }
%struct.ras_manager = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@S_IWUGO = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@amdgpu_ras_debugfs_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ras_debugfs_create(%struct.amdgpu_device* %0, %struct.ras_fs_if* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.ras_fs_if*, align 8
  %5 = alloca %struct.amdgpu_ras*, align 8
  %6 = alloca %struct.ras_manager*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.ras_fs_if* %1, %struct.ras_fs_if** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %7)
  store %struct.amdgpu_ras* %8, %struct.amdgpu_ras** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.ras_fs_if*, %struct.ras_fs_if** %4, align 8
  %11 = getelementptr inbounds %struct.ras_fs_if, %struct.ras_fs_if* %10, i32 0, i32 1
  %12 = call %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device* %9, i32* %11)
  store %struct.ras_manager* %12, %struct.ras_manager** %6, align 8
  %13 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %14 = icmp ne %struct.ras_manager* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %17 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  br label %46

21:                                               ; preds = %15
  %22 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %23 = call i32 @get_obj(%struct.ras_manager* %22)
  %24 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %25 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ras_fs_if*, %struct.ras_fs_if** %4, align 8
  %29 = getelementptr inbounds %struct.ras_fs_if, %struct.ras_fs_if* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32 %27, i32 %30, i32 4)
  %32 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %33 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @S_IWUGO, align 4
  %37 = load i32, i32* @S_IRUGO, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %43 = call i64 @debugfs_create_file(i32 %35, i32 %38, i32 %41, %struct.ras_manager* %42, i32* @amdgpu_ras_debugfs_ops)
  %44 = load %struct.ras_manager*, %struct.ras_manager** %6, align 8
  %45 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @get_obj(%struct.ras_manager*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @debugfs_create_file(i32, i32, i32, %struct.ras_manager*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
