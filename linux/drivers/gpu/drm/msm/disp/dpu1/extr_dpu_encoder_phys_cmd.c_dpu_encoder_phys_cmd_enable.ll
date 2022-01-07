; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dpu_encoder_phys_cmd = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid phys encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pp %d\0A\00", align 1
@PINGPONG_0 = common dso_local global i64 0, align 8
@DPU_ENC_ENABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"already enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_enable(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %4 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %5 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %4)
  store %struct.dpu_encoder_phys_cmd* %5, %struct.dpu_encoder_phys_cmd** %3, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %1
  %14 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

15:                                               ; preds = %8
  %16 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %3, align 8
  %17 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PINGPONG_0, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @DPU_DEBUG_CMDENC(%struct.dpu_encoder_phys_cmd* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DPU_ENC_ENABLED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %38

32:                                               ; preds = %15
  %33 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %34 = call i32 @dpu_encoder_phys_cmd_enable_helper(%struct.dpu_encoder_phys* %33)
  %35 = load i64, i64* @DPU_ENC_ENABLED, align 8
  %36 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %37 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %30, %13
  ret void
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @DPU_DEBUG_CMDENC(%struct.dpu_encoder_phys_cmd*, i8*, i64) #1

declare dso_local i32 @dpu_encoder_phys_cmd_enable_helper(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
