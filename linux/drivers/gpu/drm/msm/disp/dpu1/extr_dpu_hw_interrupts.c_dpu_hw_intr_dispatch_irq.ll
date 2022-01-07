; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_dispatch_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_dispatch_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.dpu_hw_intr = type { i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dpu_hw_intr.0*, i32)* }
%struct.dpu_hw_intr.0 = type opaque

@dpu_intr_set = common dso_local global %struct.TYPE_6__* null, align 8
@dpu_irq_map = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_intr*, void (i8*, i32)*, i8*)* @dpu_hw_intr_dispatch_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_intr_dispatch_irq(%struct.dpu_hw_intr* %0, void (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca %struct.dpu_hw_intr*, align 8
  %5 = alloca void (i8*, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dpu_hw_intr* %0, %struct.dpu_hw_intr** %4, align 8
  store void (i8*, i32)* %1, void (i8*, i32)** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %14 = icmp ne %struct.dpu_hw_intr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %117

16:                                               ; preds = %3
  %17 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %17, i32 0, i32 1
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %109, %16
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dpu_intr_set, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %112

26:                                               ; preds = %21
  %27 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %28 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dpu_irq_map, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %39)
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dpu_irq_map, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %44)
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %26
  br label %109

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %105, %48
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i1 [ false, %50 ], [ %56, %54 ]
  br i1 %58, label %59, label %108

59:                                               ; preds = %57
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dpu_irq_map, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %60, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %59
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dpu_irq_map, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %69
  %79 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8
  %80 = icmp ne void (i8*, i32)* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load void (i8*, i32)*, void (i8*, i32)** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %8, align 4
  call void %82(i8* %83, i32 %84)
  br label %94

85:                                               ; preds = %78
  %86 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %87 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32 (%struct.dpu_hw_intr.0*, i32)*, i32 (%struct.dpu_hw_intr.0*, i32)** %88, align 8
  %90 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %91 = bitcast %struct.dpu_hw_intr* %90 to %struct.dpu_hw_intr.0*
  %92 = load i32, i32* %8, align 4
  %93 = call i32 %89(%struct.dpu_hw_intr.0* %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %81
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dpu_irq_map, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %94, %69, %59
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %50

108:                                              ; preds = %57
  br label %109

109:                                              ; preds = %108, %47
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %21

112:                                              ; preds = %21
  %113 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %114 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %113, i32 0, i32 1
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  br label %117

117:                                              ; preds = %112, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
