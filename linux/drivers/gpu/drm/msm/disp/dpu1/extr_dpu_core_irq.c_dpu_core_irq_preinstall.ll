; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_core_irq_preinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_core_irq_preinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid drm device\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid device private\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_core_irq_preinstall(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  %4 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  %5 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %6 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %118

11:                                               ; preds = %1
  %12 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %13 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  %17 = icmp ne %struct.msm_drm_private* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %118

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %23 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.msm_drm_private*, %struct.msm_drm_private** %25, align 8
  store %struct.msm_drm_private* %26, %struct.msm_drm_private** %3, align 8
  %27 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %28 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_get_sync(i32* %30)
  %32 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %33 = call i32 @dpu_clear_all_irqs(%struct.dpu_kms* %32)
  %34 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %35 = call i32 @dpu_disable_all_irqs(%struct.dpu_kms* %34)
  %36 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %37 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_put_sync(i32* %39)
  %41 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %42 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %46 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %51 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %54 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kcalloc(i32 %56, i32 4, i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %61 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  store i32* %59, i32** %62, align 8
  %63 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %64 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kcalloc(i32 %66, i32 4, i32 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %71 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  store i32* %69, i32** %72, align 8
  %73 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %74 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @kcalloc(i32 %76, i32 4, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %81 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32* %79, i32** %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %115, %21
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %86 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %83
  %91 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %92 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %100 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i32 @atomic_set(i32* %105, i32 0)
  %107 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %108 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @atomic_set(i32* %113, i32 0)
  br label %115

115:                                              ; preds = %90
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %83

118:                                              ; preds = %9, %18, %83
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dpu_clear_all_irqs(%struct.dpu_kms*) #1

declare dso_local i32 @dpu_disable_all_irqs(%struct.dpu_kms*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
