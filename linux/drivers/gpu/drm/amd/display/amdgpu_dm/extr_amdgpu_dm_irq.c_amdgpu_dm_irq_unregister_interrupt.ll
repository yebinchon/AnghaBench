; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_unregister_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_unregister_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.list_head = type { i32 }
%struct.dc_interrupt_params = type { i32, i32 }

@INTERRUPT_CONTEXT_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"DM_IRQ: failed to find irq handler:%p for irq_source:%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_dm_irq_unregister_interrupt(%struct.amdgpu_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.dc_interrupt_params, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @validate_irq_unregistration_params(i32 %10, i8* %11)
  %13 = icmp eq i32 0, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %43

15:                                               ; preds = %3
  %16 = call i32 @memset(%struct.dc_interrupt_params* %8, i32 0, i32 8)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %33, %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @INTERRUPT_CONTEXT_NUMBER, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %8, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call %struct.list_head* @remove_irq_handler(%struct.amdgpu_device* %26, i8* %27, %struct.dc_interrupt_params* %8)
  store %struct.list_head* %28, %struct.list_head** %7, align 8
  %29 = load %struct.list_head*, %struct.list_head** %7, align 8
  %30 = icmp ne %struct.list_head* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load %struct.list_head*, %struct.list_head** %7, align 8
  %38 = icmp eq %struct.list_head* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %14, %39, %36
  ret void
}

declare dso_local i32 @validate_irq_unregistration_params(i32, i8*) #1

declare dso_local i32 @memset(%struct.dc_interrupt_params*, i32, i32) #1

declare dso_local %struct.list_head* @remove_irq_handler(%struct.amdgpu_device*, i8*, %struct.dc_interrupt_params*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
