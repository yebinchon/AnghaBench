; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_intr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dpu_irq_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid IRQ index: [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_intr*, i32)* @dpu_hw_intr_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_intr_disable_irq(%struct.dpu_hw_intr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_intr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dpu_hw_intr* %0, %struct.dpu_hw_intr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %8 = icmp ne %struct.dpu_hw_intr* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @dpu_irq_map, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %15
  %26 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %27 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dpu_hw_intr_disable_irq_nolock(%struct.dpu_hw_intr* %30, i32 %31)
  %33 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %34 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %25, %20, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dpu_hw_intr_disable_irq_nolock(%struct.dpu_hw_intr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
