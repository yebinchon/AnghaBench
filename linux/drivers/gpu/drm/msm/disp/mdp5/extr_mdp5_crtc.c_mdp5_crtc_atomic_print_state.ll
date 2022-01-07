; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_print_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_atomic_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mdp5_crtc_state = type { i8*, i64, %struct.mdp5_pipeline }
%struct.mdp5_pipeline = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.mdp5_kms = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"\09ctl=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\09hwmixer=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@MDP_CAP_SRC_SPLIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\09right hwmixer=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\09cmd_mode=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.drm_crtc_state*)* @mdp5_crtc_atomic_print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_atomic_print_state(%struct.drm_printer* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.mdp5_crtc_state*, align 8
  %6 = alloca %struct.mdp5_pipeline*, align 8
  %7 = alloca %struct.mdp5_kms*, align 8
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %9 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state* %8)
  store %struct.mdp5_crtc_state* %9, %struct.mdp5_crtc_state** %5, align 8
  %10 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %11 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %10, i32 0, i32 2
  store %struct.mdp5_pipeline* %11, %struct.mdp5_pipeline** %6, align 8
  %12 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mdp5_kms* @get_kms(i32 %14)
  store %struct.mdp5_kms* %15, %struct.mdp5_kms** %7, align 8
  %16 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %17 = icmp ne %struct.mdp5_pipeline* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %30 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @mdp5_ctl_get_ctl_id(i64 %32)
  %34 = call i32 @drm_printf(%struct.drm_printer* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %37 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %38 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %43 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  br label %48

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i8* [ %46, %41 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %47 ]
  %50 = call i32 @drm_printf(%struct.drm_printer* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %52 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MDP_CAP_SRC_SPLIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %59 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %60 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %65 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i8* [ %68, %63 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %69 ]
  %72 = call i32 @drm_printf(%struct.drm_printer* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %48
  %74 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %75 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %76 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @drm_printf(%struct.drm_printer* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %22
  ret void
}

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local %struct.mdp5_kms* @get_kms(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i8*) #1

declare dso_local i8* @mdp5_ctl_get_ctl_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
