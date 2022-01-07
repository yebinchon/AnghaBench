; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_irq_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_irq_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dpu_encoder_phys_cmd = type { i32 }

@PINGPONG_0 = common dso_local global i64 0, align 8
@INTR_IDX_PINGPONG = common dso_local global i32 0, align 4
@INTR_IDX_UNDERRUN = common dso_local global i32 0, align 4
@INTR_IDX_CTL_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*, i32)* @dpu_encoder_phys_cmd_irq_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_irq_control(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %64

9:                                                ; preds = %2
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %11 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %10)
  store %struct.dpu_encoder_phys_cmd* %11, %struct.dpu_encoder_phys_cmd** %5, align 8
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @DRMID(i32 %14)
  %16 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PINGPONG_0, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = call i32 @trace_dpu_enc_phys_cmd_irq_ctrl(i32 %15, i64 %22, i32 %23, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %9
  %31 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %32 = load i32, i32* @INTR_IDX_PINGPONG, align 4
  %33 = call i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys* %31, i32 %32)
  %34 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %35 = load i32, i32* @INTR_IDX_UNDERRUN, align 4
  %36 = call i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys* %34, i32 %35)
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %38 = call i32 @dpu_encoder_phys_cmd_control_vblank_irq(%struct.dpu_encoder_phys* %37, i32 1)
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %40 = call i64 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %44 = load i32, i32* @INTR_IDX_CTL_START, align 4
  %45 = call i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %30
  br label %64

47:                                               ; preds = %9
  %48 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %49 = call i64 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %53 = load i32, i32* @INTR_IDX_CTL_START, align 4
  %54 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %57 = load i32, i32* @INTR_IDX_UNDERRUN, align 4
  %58 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %56, i32 %57)
  %59 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %60 = call i32 @dpu_encoder_phys_cmd_control_vblank_irq(%struct.dpu_encoder_phys* %59, i32 0)
  %61 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %62 = load i32, i32* @INTR_IDX_PINGPONG, align 4
  %63 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %61, i32 %62)
  br label %64

64:                                               ; preds = %8, %55, %46
  ret void
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @trace_dpu_enc_phys_cmd_irq_ctrl(i32, i64, i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i32 @dpu_encoder_phys_cmd_control_vblank_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i64 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
