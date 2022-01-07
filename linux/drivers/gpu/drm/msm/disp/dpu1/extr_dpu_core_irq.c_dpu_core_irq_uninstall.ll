; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_core_irq_uninstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_core_irq_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid drm device\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid device private\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"irq_idx=%d still enabled/registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_core_irq_uninstall(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  %4 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  %5 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %6 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %103

11:                                               ; preds = %1
  %12 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %13 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  %17 = icmp ne %struct.msm_drm_private* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %103

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %23 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.msm_drm_private*, %struct.msm_drm_private** %25, align 8
  store %struct.msm_drm_private* %26, %struct.msm_drm_private** %3, align 8
  %27 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %28 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_get_sync(i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %63, %21
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %35 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %41 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i64 @atomic_read(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %39
  %50 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %51 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49, %39
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %32

66:                                               ; preds = %32
  %67 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %68 = call i32 @dpu_clear_all_irqs(%struct.dpu_kms* %67)
  %69 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %70 = call i32 @dpu_disable_all_irqs(%struct.dpu_kms* %69)
  %71 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %72 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @pm_runtime_put_sync(i32* %74)
  %76 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %77 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %82 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @kfree(i32* %84)
  %86 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %87 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %92 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store i32* null, i32** %93, align 8
  %94 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %95 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %98 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %101 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %66, %18, %9
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dpu_clear_all_irqs(%struct.dpu_kms*) #1

declare dso_local i32 @dpu_disable_all_irqs(%struct.dpu_kms*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
