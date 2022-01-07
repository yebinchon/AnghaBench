; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_prepare_for_kickoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_prepare_for_kickoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dpu_encoder_phys_cmd = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"id:%u pp:%d pending_cnt:%d\0A\00", align 1
@PINGPONG_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"failed wait_for_idle: id:%u ret:%d pp:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"pp:%d pending_cnt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_prepare_for_kickoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_prepare_for_kickoff(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %5 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %6 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %5)
  store %struct.dpu_encoder_phys_cmd* %6, %struct.dpu_encoder_phys_cmd** %3, align 8
  %7 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %8 = icmp ne %struct.dpu_encoder_phys* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %1
  %15 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %66

16:                                               ; preds = %9
  %17 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DRMID(i32 %19)
  %21 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PINGPONG_0, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %28, i32 0, i32 0
  %30 = call i32 @atomic_read(i32* %29)
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20, i64 %27, i32 %30)
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %33 = call i32 @_dpu_encoder_phys_cmd_wait_for_idle(%struct.dpu_encoder_phys* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %16
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %37, i32 0, i32 0
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %41 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DRMID(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %46 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PINGPONG_0, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44, i64 %51)
  br label %53

53:                                               ; preds = %36, %16
  %54 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %3, align 8
  %55 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %56 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PINGPONG_0, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %63 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = call i32 @DPU_DEBUG_CMDENC(%struct.dpu_encoder_phys_cmd* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %61, i32 %64)
  br label %66

66:                                               ; preds = %53, %14
  ret void
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @_dpu_encoder_phys_cmd_wait_for_idle(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i64) #1

declare dso_local i32 @DPU_DEBUG_CMDENC(%struct.dpu_encoder_phys_cmd*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
