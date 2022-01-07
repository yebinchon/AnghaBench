; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_wait_for_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_wait_for_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, i32 }
%struct.dpu_encoder_phys_cmd = type { i64 }
%struct.dpu_encoder_wait_info = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KICKOFF_TIMEOUT_MS = common dso_local global i32 0, align 4
@INTR_IDX_PINGPONG = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @_dpu_encoder_phys_cmd_wait_for_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_encoder_phys_cmd_wait_for_idle(%struct.dpu_encoder_phys* %0) #0 {
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
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %5, i32 0, i32 2
  store i32* %17, i32** %18, align 8
  %19 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %5, i32 0, i32 1
  store i32* %20, i32** %21, align 8
  %22 = load i32, i32* @KICKOFF_TIMEOUT_MS, align 4
  %23 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %25 = load i32, i32* @INTR_IDX_PINGPONG, align 4
  %26 = call i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys* %24, i32 %25, %struct.dpu_encoder_wait_info* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %33 = call i32 @_dpu_encoder_phys_cmd_handle_ppdone_timeout(%struct.dpu_encoder_phys* %32)
  br label %41

34:                                               ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys*, i32, %struct.dpu_encoder_wait_info*) #1

declare dso_local i32 @_dpu_encoder_phys_cmd_handle_ppdone_timeout(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
