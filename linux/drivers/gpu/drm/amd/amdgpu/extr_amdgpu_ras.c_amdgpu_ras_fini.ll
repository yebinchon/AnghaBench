; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Feature mask is not cleared\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ras*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %5)
  store %struct.amdgpu_ras* %6, %struct.amdgpu_ras** %4, align 8
  %7 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %8 = icmp ne %struct.amdgpu_ras* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i32 @amdgpu_ras_fs_fini(%struct.amdgpu_device* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i32 @amdgpu_ras_interrupt_remove_all(%struct.amdgpu_device* %13)
  %15 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @WARN(i64 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = call i32 @amdgpu_ras_disable_all_features(%struct.amdgpu_device* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %10
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 @amdgpu_ras_set_context(%struct.amdgpu_device* %27, i32* null)
  %29 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %30 = call i32 @kfree(%struct.amdgpu_ras* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ras_fs_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ras_interrupt_remove_all(%struct.amdgpu_device*) #1

declare dso_local i32 @WARN(i64, i8*) #1

declare dso_local i32 @amdgpu_ras_disable_all_features(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ras_set_context(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_ras*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
