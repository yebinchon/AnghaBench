; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_wait_for_ctl_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_wait_for_ctl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, i32, i32 }
%struct.dpu_encoder_phys_cmd = type { i32 }
%struct.dpu_encoder_wait_info = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"invalid argument(s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KICKOFF_TIMEOUT_MS = common dso_local global i32 0, align 4
@INTR_IDX_CTL_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ctl start interrupt wait failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @_dpu_encoder_phys_cmd_wait_for_ctl_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_encoder_phys_cmd_wait_for_ctl_start(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  %5 = alloca %struct.dpu_encoder_wait_info, align 8
  %6 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  %7 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %8 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %7)
  store %struct.dpu_encoder_phys_cmd* %8, %struct.dpu_encoder_phys_cmd** %4, align 8
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %10 = icmp ne %struct.dpu_encoder_phys* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11, %1
  %17 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %11
  %21 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %5, i32 0, i32 2
  store i32* %22, i32** %23, align 8
  %24 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %5, i32 0, i32 1
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* @KICKOFF_TIMEOUT_MS, align 4
  %28 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %30 = load i32, i32* @INTR_IDX_CTL_START, align 4
  %31 = call i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys* %29, i32 %30, %struct.dpu_encoder_wait_info* %5)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %4, align 8
  %38 = call i32 @DPU_ERROR_CMDENC(%struct.dpu_encoder_phys_cmd* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %20
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys*, i32, %struct.dpu_encoder_wait_info*) #1

declare dso_local i32 @DPU_ERROR_CMDENC(%struct.dpu_encoder_phys_cmd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
