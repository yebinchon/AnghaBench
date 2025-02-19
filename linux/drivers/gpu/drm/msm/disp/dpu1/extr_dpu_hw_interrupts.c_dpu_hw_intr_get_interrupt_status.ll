; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_get_interrupt_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_get_interrupt_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dpu_hw_intr = type { i32, i32 }

@dpu_irq_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid IRQ index: [%d]\0A\00", align 1
@dpu_intr_set = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_intr*, i32, i32)* @dpu_hw_intr_get_interrupt_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_intr_get_interrupt_status(%struct.dpu_hw_intr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_hw_intr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dpu_hw_intr* %0, %struct.dpu_hw_intr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %5, align 8
  %12 = icmp ne %struct.dpu_hw_intr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpu_irq_map, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %16)
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %4, align 4
  br label %75

25:                                               ; preds = %19
  %26 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %5, align 8
  %27 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %26, i32 0, i32 0
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpu_irq_map, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %5, align 8
  %37 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dpu_intr_set, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DPU_REG_READ(i32* %37, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpu_irq_map, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %44, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %25
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %5, align 8
  %59 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dpu_intr_set, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @DPU_REG_WRITE(i32* %59, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %54, %25
  %69 = call i32 (...) @wmb()
  %70 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %5, align 8
  %71 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %70, i32 0, i32 0
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %22, %13
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DPU_REG_READ(i32*, i32) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
