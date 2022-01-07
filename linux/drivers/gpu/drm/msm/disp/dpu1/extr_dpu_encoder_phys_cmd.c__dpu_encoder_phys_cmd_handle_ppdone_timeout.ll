; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_handle_ppdone_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_handle_ppdone_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.dpu_encoder_phys*, i32)* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.dpu_encoder_phys_cmd = type { i32 }

@DPU_ENCODER_FRAME_EVENT_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PP_TIMEOUT_MAX_TRIALS = common dso_local global i32 0, align 4
@DPU_ENCODER_FRAME_EVENT_PANEL_DEAD = common dso_local global i32 0, align 4
@PINGPONG_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"id:%d pp:%d kickoff timeout %d cnt %d koff_cnt %d\0A\00", align 1
@CTL_0 = common dso_local global i64 0, align 8
@INTR_IDX_RDPTR = common dso_local global i32 0, align 4
@DPU_ENC_ERR_NEEDS_HW_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @_dpu_encoder_phys_cmd_handle_ppdone_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_encoder_phys_cmd_handle_ppdone_timeout(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  %7 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %8 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %7)
  store %struct.dpu_encoder_phys_cmd* %8, %struct.dpu_encoder_phys_cmd** %4, align 8
  %9 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_ERROR, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %11 = icmp ne %struct.dpu_encoder_phys* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %19 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %18, i32 0, i32 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %12, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %125

25:                                               ; preds = %17
  %26 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PP_TIMEOUT_MAX_TRIALS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_PANEL_DEAD, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %39
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %48 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DRMID(i32 %49)
  %51 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %52 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PINGPONG_0, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %62 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %61, i32 0, i32 3
  %63 = call i32 @atomic_read(i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @trace_dpu_enc_phys_cmd_pdone_timeout(i32 %50, i64 %57, i32 %60, i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %46
  %69 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %70 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @DRMID(i32 %71)
  %73 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %74 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PINGPONG_0, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %81 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %80, i32 0, i32 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CTL_0, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %91 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %90, i32 0, i32 3
  %92 = call i32 @atomic_read(i32* %91)
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %79, i64 %86, i32 %89, i32 %92)
  %94 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %95 = load i32, i32* @INTR_IDX_RDPTR, align 4
  %96 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %94, i32 %95)
  br label %97

97:                                               ; preds = %68, %46
  %98 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %99 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %98, i32 0, i32 3
  %100 = call i32 @atomic_add_unless(i32* %99, i32 -1, i32 0)
  %101 = load i32, i32* @DPU_ENC_ERR_NEEDS_HW_RESET, align 4
  %102 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %103 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %105 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*, i32)** %107, align 8
  %109 = icmp ne i32 (i32, %struct.dpu_encoder_phys*, i32)* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %97
  %111 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %112 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*, i32)** %114, align 8
  %116 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %117 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 %115(i32 %118, %struct.dpu_encoder_phys* %119, i32 %120)
  br label %122

122:                                              ; preds = %110, %97
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %22
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @trace_dpu_enc_phys_cmd_pdone_timeout(i32, i64, i32, i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
