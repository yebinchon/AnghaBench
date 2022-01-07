; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_gpu_reset_resume_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_irq.c_amdgpu_irq_gpu_reset_resume_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_irq_src** }
%struct.amdgpu_irq_src = type { i32 }

@AMDGPU_IRQ_CLIENTID_MAX = common dso_local global i32 0, align 4
@AMDGPU_MAX_IRQ_SRC_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_irq_gpu_reset_resume_helper(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AMDGPU_IRQ_CLIENTID_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %19, align 8
  %21 = icmp ne %struct.amdgpu_irq_src** %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %65

23:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AMDGPU_MAX_IRQ_SRC_ID, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.amdgpu_irq_src**, %struct.amdgpu_irq_src*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %37, i64 %39
  %41 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %40, align 8
  store %struct.amdgpu_irq_src* %41, %struct.amdgpu_irq_src** %6, align 8
  %42 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %43 = icmp ne %struct.amdgpu_irq_src* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  br label %61

45:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %49 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @amdgpu_irq_update(%struct.amdgpu_device* %53, %struct.amdgpu_irq_src* %54, i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %46

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %24

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %7

68:                                               ; preds = %7
  ret void
}

declare dso_local i32 @amdgpu_irq_update(%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
