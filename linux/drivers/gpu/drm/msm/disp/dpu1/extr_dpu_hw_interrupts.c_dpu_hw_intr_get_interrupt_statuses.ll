; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_get_interrupt_statuses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_get_interrupt_statuses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.dpu_hw_intr = type { i32*, i32, i32 }

@dpu_intr_set = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_intr*)* @dpu_hw_intr_get_interrupt_statuses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_intr_get_interrupt_statuses(%struct.dpu_hw_intr* %0) #0 {
  %2 = alloca %struct.dpu_hw_intr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dpu_hw_intr* %0, %struct.dpu_hw_intr** %2, align 8
  %6 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %7 = icmp ne %struct.dpu_hw_intr* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %90

9:                                                ; preds = %1
  %10 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %81, %9
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dpu_intr_set, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %14
  %20 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %21 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dpu_intr_set, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @DPU_REG_READ(i32* %21, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %31 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %37 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dpu_intr_set, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @DPU_REG_READ(i32* %37, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %47 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %19
  %55 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %56 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dpu_intr_set, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %64 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DPU_REG_WRITE(i32* %56, i32 %62, i32 %69)
  br label %71

71:                                               ; preds = %54, %19
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %74 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %72
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %14

84:                                               ; preds = %14
  %85 = call i32 (...) @wmb()
  %86 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %2, align 8
  %87 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %86, i32 0, i32 1
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %84, %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i8* @DPU_REG_READ(i32*, i32) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
