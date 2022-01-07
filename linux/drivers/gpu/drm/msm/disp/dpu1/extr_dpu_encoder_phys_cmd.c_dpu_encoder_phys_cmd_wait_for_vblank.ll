; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_wait_for_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_wait_for_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32 }
%struct.dpu_encoder_phys_cmd = type { i32, i32 }
%struct.dpu_encoder_wait_info = type { i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@KICKOFF_TIMEOUT_MS = common dso_local global i32 0, align 4
@INTR_IDX_RDPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_wait_for_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_phys_cmd_wait_for_vblank(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  %6 = alloca %struct.dpu_encoder_wait_info, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %8 = icmp ne %struct.dpu_encoder_phys* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %14 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %13)
  store %struct.dpu_encoder_phys_cmd* %14, %struct.dpu_encoder_phys_cmd** %5, align 8
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %16 = call i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %6, i32 0, i32 2
  store i32* %22, i32** %23, align 8
  %24 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %6, i32 0, i32 1
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* @KICKOFF_TIMEOUT_MS, align 4
  %28 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %33 = load i32, i32* @INTR_IDX_RDPTR, align 4
  %34 = call i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys* %32, i32 %33, %struct.dpu_encoder_wait_info* %6)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %20, %18, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys*, i32, %struct.dpu_encoder_wait_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
