; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.irq_list_head*, i32 }
%struct.irq_list_head = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"DM_IRQ\0A\00", align 1
@DAL_IRQ_SOURCES_NUMBER = common dso_local global i32 0, align 4
@dm_irq_work_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_irq_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_list_head*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_init(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @DAL_IRQ_SOURCES_NUMBER, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.irq_list_head*, %struct.irq_list_head** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.irq_list_head, %struct.irq_list_head* %18, i64 %20
  store %struct.irq_list_head* %21, %struct.irq_list_head** %4, align 8
  %22 = load %struct.irq_list_head*, %struct.irq_list_head** %4, align 8
  %23 = getelementptr inbounds %struct.irq_list_head, %struct.irq_list_head* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.irq_list_head*, %struct.irq_list_head** %4, align 8
  %26 = getelementptr inbounds %struct.irq_list_head, %struct.irq_list_head* %25, i32 0, i32 0
  %27 = load i32, i32* @dm_irq_work_func, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  br label %37

37:                                               ; preds = %14
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %10

40:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
