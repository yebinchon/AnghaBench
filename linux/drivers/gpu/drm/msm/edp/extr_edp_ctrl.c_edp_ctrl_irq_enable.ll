; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@REG_EDP_INTERRUPT_REG_1 = common dso_local global i64 0, align 8
@EDP_INTR_MASK1 = common dso_local global i32 0, align 4
@REG_EDP_INTERRUPT_REG_2 = common dso_local global i64 0, align 8
@EDP_INTR_MASK2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edp_ctrl*, i32)* @edp_ctrl_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_ctrl_irq_enable(%struct.edp_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_EDP_INTERRUPT_REG_1, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @EDP_INTR_MASK1, align 4
  %21 = call i32 @edp_write(i64 %19, i32 %20)
  %22 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_EDP_INTERRUPT_REG_2, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @EDP_INTR_MASK2, align 4
  %28 = call i32 @edp_write(i64 %26, i32 %27)
  br label %42

29:                                               ; preds = %2
  %30 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REG_EDP_INTERRUPT_REG_1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @edp_write(i64 %34, i32 0)
  %36 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REG_EDP_INTERRUPT_REG_2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @edp_write(i64 %40, i32 0)
  br label %42

42:                                               ; preds = %29, %14
  %43 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @edp_write(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
