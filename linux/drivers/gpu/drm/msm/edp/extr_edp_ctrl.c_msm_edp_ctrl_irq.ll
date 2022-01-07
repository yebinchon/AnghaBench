; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_msm_edp_ctrl_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_msm_edp_ctrl_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_EDP_INTERRUPT_REG_1 = common dso_local global i64 0, align 8
@REG_EDP_INTERRUPT_REG_2 = common dso_local global i64 0, align 8
@EDP_INTR_MASK1 = common dso_local global i32 0, align 4
@EDP_INTR_MASK2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"isr=%x mask=%x isr2=%x mask2=%x\00", align 1
@EDP_INTR_STATUS1 = common dso_local global i32 0, align 4
@EDP_INTR_STATUS2 = common dso_local global i32 0, align 4
@EDP_INTERRUPT_REG_1_HPD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"edp_hpd\00", align 1
@EDP_INTERRUPT_REG_2_READY_FOR_VIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"edp_video_ready\00", align 1
@EDP_INTERRUPT_REG_2_IDLE_PATTERNs_SENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"idle_patterns_sent\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_edp_ctrl_irq(%struct.edp_ctrl* %0) #0 {
  %2 = alloca %struct.edp_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %2, align 8
  %8 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_EDP_INTERRUPT_REG_1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @edp_read(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_EDP_INTERRUPT_REG_2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @edp_read(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @EDP_INTR_MASK1, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EDP_INTR_MASK2, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @EDP_INTR_STATUS1, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %52 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @REG_EDP_INTERRUPT_REG_1, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @edp_write(i64 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EDP_INTR_STATUS2, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %67 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REG_EDP_INTERRUPT_REG_2, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @edp_write(i64 %70, i32 %71)
  %73 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %74 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @EDP_INTERRUPT_REG_1_HPD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %1
  %81 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %1
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @EDP_INTERRUPT_REG_2_READY_FOR_VIDEO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @EDP_INTERRUPT_REG_2_IDLE_PATTERNs_SENT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %97 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %96, i32 0, i32 1
  %98 = call i32 @complete(i32* %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %101 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @msm_edp_aux_irq(i32 %102, i32 %103)
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %105
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @edp_read(i64) #1

declare dso_local i32 @edp_write(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @msm_edp_aux_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
