; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_wait_for_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_wait_for_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, i32 }
%struct.dpu_encoder_wait_info = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KICKOFF_TIMEOUT_MS = common dso_local global i32 0, align 4
@INTR_IDX_VSYNC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_vid_wait_for_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_phys_vid_wait_for_vblank(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.dpu_encoder_wait_info, align 8
  %5 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %4, i32 0, i32 2
  store i32* %14, i32** %15, align 8
  %16 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %4, i32 0, i32 1
  store i32* %17, i32** %18, align 8
  %19 = load i32, i32* @KICKOFF_TIMEOUT_MS, align 4
  %20 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %22 = call i32 @dpu_encoder_phys_vid_is_master(%struct.dpu_encoder_phys* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %39

25:                                               ; preds = %12
  %26 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %27 = load i32, i32* @INTR_IDX_VSYNC, align 4
  %28 = call i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys* %26, i32 %27, %struct.dpu_encoder_wait_info* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %35 = load i32, i32* @INTR_IDX_VSYNC, align 4
  %36 = call i32 @dpu_encoder_helper_report_irq_timeout(%struct.dpu_encoder_phys* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %24, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dpu_encoder_phys_vid_is_master(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @dpu_encoder_helper_wait_for_irq(%struct.dpu_encoder_phys*, i32, %struct.dpu_encoder_wait_info*) #1

declare dso_local i32 @dpu_encoder_helper_report_irq_timeout(%struct.dpu_encoder_phys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
