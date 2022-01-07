; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_common_if = type { i32 }
%struct.ras_manager = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ras_debugfs_remove(%struct.amdgpu_device* %0, %struct.ras_common_if* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.ras_common_if*, align 8
  %5 = alloca %struct.ras_manager*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.ras_common_if* %1, %struct.ras_common_if** %4, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.ras_common_if*, %struct.ras_common_if** %4, align 8
  %8 = call %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device* %6, %struct.ras_common_if* %7)
  store %struct.ras_manager* %8, %struct.ras_manager** %5, align 8
  %9 = load %struct.ras_manager*, %struct.ras_manager** %5, align 8
  %10 = icmp ne %struct.ras_manager* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.ras_manager*, %struct.ras_manager** %5, align 8
  %13 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.ras_manager*, %struct.ras_manager** %5, align 8
  %19 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @debugfs_remove(i32* %20)
  %22 = load %struct.ras_manager*, %struct.ras_manager** %5, align 8
  %23 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.ras_manager*, %struct.ras_manager** %5, align 8
  %25 = call i32 @put_obj(%struct.ras_manager* %24)
  br label %26

26:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device*, %struct.ras_common_if*) #1

declare dso_local i32 @debugfs_remove(i32*) #1

declare dso_local i32 @put_obj(%struct.ras_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
