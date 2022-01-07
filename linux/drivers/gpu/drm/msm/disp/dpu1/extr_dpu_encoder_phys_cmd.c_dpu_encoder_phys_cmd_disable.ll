; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.dpu_encoder_phys_cmd = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"id:%u pp:%d state:%d\0A\00", align 1
@PINGPONG_0 = common dso_local global i64 0, align 8
@DPU_ENC_DISABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"already disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_disable(%struct.dpu_encoder_phys* %0) #0 {
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
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %1
  %14 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %62

15:                                               ; preds = %8
  %16 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DRMID(i32 %18)
  %20 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PINGPONG_0, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %28 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %19, i64 %26, i64 %29)
  %31 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DPU_ENC_DISABLED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %15
  %37 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %3, align 8
  %38 = call i32 @DPU_ERROR_CMDENC(%struct.dpu_encoder_phys_cmd* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %62

39:                                               ; preds = %15
  %40 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %41 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_4__*, i32)* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %49 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %52, align 8
  %54 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %55 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 %53(%struct.TYPE_4__* %56, i32 0)
  br label %58

58:                                               ; preds = %47, %39
  %59 = load i64, i64* @DPU_ENC_DISABLED, align 8
  %60 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %61 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %36, %13
  ret void
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64, i64) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @DPU_ERROR_CMDENC(%struct.dpu_encoder_phys_cmd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
