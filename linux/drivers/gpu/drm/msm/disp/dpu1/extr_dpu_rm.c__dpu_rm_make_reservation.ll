; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_make_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_make_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_rm = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.dpu_rm_requirements = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"unable to find appropriate mixers\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to find appropriate CTL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_rm*, %struct.drm_encoder*, %struct.drm_crtc_state*, %struct.dpu_rm_requirements*)* @_dpu_rm_make_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_rm_make_reservation(%struct.dpu_rm* %0, %struct.drm_encoder* %1, %struct.drm_crtc_state* %2, %struct.dpu_rm_requirements* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_rm*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca %struct.dpu_rm_requirements*, align 8
  %10 = alloca i32, align 4
  store %struct.dpu_rm* %0, %struct.dpu_rm** %6, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %7, align 8
  store %struct.drm_crtc_state* %2, %struct.drm_crtc_state** %8, align 8
  store %struct.dpu_rm_requirements* %3, %struct.dpu_rm_requirements** %9, align 8
  %11 = load %struct.dpu_rm*, %struct.dpu_rm** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %9, align 8
  %17 = call i32 @_dpu_rm_reserve_lms(%struct.dpu_rm* %11, i32 %15, %struct.dpu_rm_requirements* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.dpu_rm*, %struct.dpu_rm** %6, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %9, align 8
  %30 = getelementptr inbounds %struct.dpu_rm_requirements, %struct.dpu_rm_requirements* %29, i32 0, i32 1
  %31 = call i32 @_dpu_rm_reserve_ctls(%struct.dpu_rm* %24, i32 %28, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %52

37:                                               ; preds = %23
  %38 = load %struct.dpu_rm*, %struct.dpu_rm** %6, align 8
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %40 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %9, align 8
  %44 = getelementptr inbounds %struct.dpu_rm_requirements, %struct.dpu_rm_requirements* %43, i32 0, i32 0
  %45 = call i32 @_dpu_rm_reserve_intf_related_hw(%struct.dpu_rm* %38, i32 %42, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48, %34, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @_dpu_rm_reserve_lms(%struct.dpu_rm*, i32, %struct.dpu_rm_requirements*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @_dpu_rm_reserve_ctls(%struct.dpu_rm*, i32, i32*) #1

declare dso_local i32 @_dpu_rm_reserve_intf_related_hw(%struct.dpu_rm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
