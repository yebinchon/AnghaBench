; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_validate_irq_registration_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_validate_irq_registration_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_interrupt_params = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"DM_IRQ: invalid input!\0A\00", align 1
@INTERRUPT_CONTEXT_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"DM_IRQ: invalid context: %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"DM_IRQ: invalid irq_source: %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_interrupt_params*, void (i8*)*)* @validate_irq_registration_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_irq_registration_params(%struct.dc_interrupt_params* %0, void (i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_interrupt_params*, align 8
  %5 = alloca void (i8*)*, align 8
  store %struct.dc_interrupt_params* %0, %struct.dc_interrupt_params** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  %6 = load %struct.dc_interrupt_params*, %struct.dc_interrupt_params** %4, align 8
  %7 = icmp eq %struct.dc_interrupt_params* null, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load void (i8*)*, void (i8*)** %5, align 8
  %10 = icmp eq void (i8*)* null, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

13:                                               ; preds = %8
  %14 = load %struct.dc_interrupt_params*, %struct.dc_interrupt_params** %4, align 8
  %15 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INTERRUPT_CONTEXT_NUMBER, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.dc_interrupt_params*, %struct.dc_interrupt_params** %4, align 8
  %21 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  store i32 0, i32* %3, align 4
  br label %36

24:                                               ; preds = %13
  %25 = load %struct.dc_interrupt_params*, %struct.dc_interrupt_params** %4, align 8
  %26 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @DAL_VALID_IRQ_SRC_NUM(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.dc_interrupt_params*, %struct.dc_interrupt_params** %4, align 8
  %32 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %19, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DAL_VALID_IRQ_SRC_NUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
