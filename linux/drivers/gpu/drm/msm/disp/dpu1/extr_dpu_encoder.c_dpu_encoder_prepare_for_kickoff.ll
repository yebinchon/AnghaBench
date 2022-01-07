; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_prepare_for_kickoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_prepare_for_kickoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys** }
%struct.dpu_encoder_phys = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_encoder_phys*)* }

@.str = private unnamed_addr constant [24 x i8] c"enc_prepare_for_kickoff\00", align 1
@DPU_ENC_ERR_NEEDS_HW_RESET = common dso_local global i64 0, align 8
@DPU_ENC_RC_EVENT_KICKOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_prepare_for_kickoff(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %7)
  store %struct.dpu_encoder_virt* %8, %struct.dpu_encoder_virt** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call i32 @DRMID(%struct.drm_encoder* %9)
  %11 = call i32 @trace_dpu_enc_prepare_kickoff(i32 %10)
  %12 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 1
  %22 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %22, i64 %24
  %26 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %25, align 8
  store %struct.dpu_encoder_phys* %26, %struct.dpu_encoder_phys** %4, align 8
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %28 = icmp ne %struct.dpu_encoder_phys* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %19
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %32, align 8
  %34 = icmp ne i32 (%struct.dpu_encoder_phys*)* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %37 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %38, align 8
  %40 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %41 = call i32 %39(%struct.dpu_encoder_phys* %40)
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DPU_ENC_ERR_NEEDS_HW_RESET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %19
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %13

54:                                               ; preds = %13
  %55 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %57 = load i32, i32* @DPU_ENC_RC_EVENT_KICKOFF, align 4
  %58 = call i32 @dpu_encoder_resource_control(%struct.drm_encoder* %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %54
  %62 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %63 = call i32 @DRMID(%struct.drm_encoder* %62)
  %64 = call i32 @trace_dpu_enc_prepare_kickoff_reset(i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %80, %61
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %68 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %73 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %72, i32 0, i32 1
  %74 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %74, i64 %76
  %78 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %77, align 8
  %79 = call i32 @dpu_encoder_helper_hw_reset(%struct.dpu_encoder_phys* %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %65

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %54
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @trace_dpu_enc_prepare_kickoff(i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

declare dso_local i32 @dpu_encoder_resource_control(%struct.drm_encoder*, i32) #1

declare dso_local i32 @trace_dpu_enc_prepare_kickoff_reset(i32) #1

declare dso_local i32 @dpu_encoder_helper_hw_reset(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
