; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_wait_for_commit_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_wait_for_commit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32 }
%struct.dpu_encoder_phys_cmd = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_wait_for_commit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_phys_cmd_wait_for_commit_done(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %13 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %12)
  store %struct.dpu_encoder_phys_cmd* %13, %struct.dpu_encoder_phys_cmd** %5, align 8
  %14 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %15 = call i64 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %19 = call i32 @_dpu_encoder_phys_cmd_wait_for_ctl_start(%struct.dpu_encoder_phys* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %30 = call i32 @dpu_encoder_phys_cmd_prepare_for_kickoff(%struct.dpu_encoder_phys* %29)
  br label %31

31:                                               ; preds = %28, %23, %20
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i64 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @_dpu_encoder_phys_cmd_wait_for_ctl_start(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @dpu_encoder_phys_cmd_prepare_for_kickoff(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
