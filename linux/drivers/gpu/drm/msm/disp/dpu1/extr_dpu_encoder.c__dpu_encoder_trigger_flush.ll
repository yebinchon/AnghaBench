; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_trigger_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_trigger_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_phys = type { i32, %struct.dpu_hw_ctl*, i32 }
%struct.dpu_hw_ctl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.1*)*, i32 (%struct.dpu_hw_ctl.2*, i32)* }
%struct.dpu_hw_ctl.0 = type opaque
%struct.dpu_hw_ctl.1 = type opaque
%struct.dpu_hw_ctl.2 = type opaque

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid pingpong hw\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"missing trigger cb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.dpu_encoder_phys*, i32)* @_dpu_encoder_trigger_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_trigger_flush(%struct.drm_encoder* %0, %struct.dpu_encoder_phys* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.dpu_encoder_phys*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_hw_ctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.dpu_encoder_phys* %1, %struct.dpu_encoder_phys** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @UINT_MAX, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %12 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %85

17:                                               ; preds = %3
  %18 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %19 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %18, i32 0, i32 1
  %20 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %19, align 8
  store %struct.dpu_hw_ctl* %20, %struct.dpu_hw_ctl** %7, align 8
  %21 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %22 = icmp ne %struct.dpu_hw_ctl* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.dpu_hw_ctl.1*)*, i32 (%struct.dpu_hw_ctl.1*)** %26, align 8
  %28 = icmp ne i32 (%struct.dpu_hw_ctl.1*)* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23, %17
  %30 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %85

31:                                               ; preds = %23
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %33 = call i32 @dpu_encoder_phys_inc_pending(%struct.dpu_encoder_phys* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %38 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32 (%struct.dpu_hw_ctl.2*, i32)*, i32 (%struct.dpu_hw_ctl.2*, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.dpu_hw_ctl.2*, i32)* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %44 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32 (%struct.dpu_hw_ctl.2*, i32)*, i32 (%struct.dpu_hw_ctl.2*, i32)** %45, align 8
  %47 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %48 = bitcast %struct.dpu_hw_ctl* %47 to %struct.dpu_hw_ctl.2*
  %49 = load i32, i32* %6, align 4
  %50 = call i32 %46(%struct.dpu_hw_ctl.2* %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %36, %31
  %52 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %53 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.dpu_hw_ctl.1*)*, i32 (%struct.dpu_hw_ctl.1*)** %54, align 8
  %56 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %57 = bitcast %struct.dpu_hw_ctl* %56 to %struct.dpu_hw_ctl.1*
  %58 = call i32 %55(%struct.dpu_hw_ctl.1* %57)
  %59 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %60 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %61, align 8
  %63 = icmp ne i32 (%struct.dpu_hw_ctl.0*)* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %51
  %65 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %66 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %67, align 8
  %69 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %70 = bitcast %struct.dpu_hw_ctl* %69 to %struct.dpu_hw_ctl.0*
  %71 = call i32 %68(%struct.dpu_hw_ctl.0* %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %64, %51
  %73 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %74 = call i32 @DRMID(%struct.drm_encoder* %73)
  %75 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %76 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  %80 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @trace_dpu_enc_trigger_flush(i32 %74, i32 %77, i32 %78, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %29, %15
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @dpu_encoder_phys_inc_pending(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @trace_dpu_enc_trigger_flush(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
