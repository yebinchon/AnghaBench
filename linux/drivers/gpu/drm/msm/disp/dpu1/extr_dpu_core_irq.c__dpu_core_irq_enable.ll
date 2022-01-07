; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c__dpu_core_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c__dpu_core_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32)* }

@.str = private unnamed_addr constant [16 x i8] c"invalid params\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid IRQ index: [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"irq_idx=%d enable_count=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Fail to enable IRQ for irq_idx:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"irq_idx=%d ret=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"irq_idx=%d enabled with no callback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_kms*, i32)* @_dpu_core_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_core_irq_enable(%struct.dpu_kms* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_kms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %10 = icmp ne %struct.dpu_kms* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %13 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %18 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %24 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22, %16, %11, %2
  %29 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %118

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %38 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %36, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35, %32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %118

48:                                               ; preds = %35
  %49 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %50 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @atomic_read(i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @trace_dpu_core_irq_enable_idx(i32 %60, i32 %61)
  %63 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %64 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @atomic_inc_return(i32* %69)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %116

72:                                               ; preds = %48
  %73 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %74 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %77, align 8
  %79 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %80 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 %78(%struct.TYPE_6__* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %72
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %94 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %99 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i64 @list_empty(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %107, %89
  %111 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %112 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  br label %116

116:                                              ; preds = %110, %48
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %43, %28
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @trace_dpu_core_irq_enable_idx(i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
