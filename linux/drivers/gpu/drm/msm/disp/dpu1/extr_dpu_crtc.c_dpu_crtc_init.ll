; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__, %struct.drm_device* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.drm_plane = type { i32 }
%struct.dpu_crtc = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.drm_crtc }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dpu_kms = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dpu_crtc_frame_event_work = common dso_local global i32 0, align 4
@dpu_crtc_funcs = common dso_local global i32 0, align 4
@dpu_crtc_helper_funcs = common dso_local global i32 0, align 4
@DPU_CRTC_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"crtc%u\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: successfully initialized crtc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_crtc* @dpu_crtc_init(%struct.drm_device* %0, %struct.drm_plane* %1, %struct.drm_plane* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.dpu_crtc*, align 8
  %10 = alloca %struct.msm_drm_private*, align 8
  %11 = alloca %struct.dpu_kms*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %6, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %7, align 8
  store %struct.drm_crtc* null, %struct.drm_crtc** %8, align 8
  store %struct.dpu_crtc* null, %struct.dpu_crtc** %9, align 8
  store %struct.msm_drm_private* null, %struct.msm_drm_private** %10, align 8
  store %struct.dpu_kms* null, %struct.dpu_kms** %11, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %10, align 8
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %10, align 8
  %17 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dpu_kms* @to_dpu_kms(i32 %18)
  store %struct.dpu_kms* %19, %struct.dpu_kms** %11, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dpu_crtc* @kzalloc(i32 48, i32 %20)
  store %struct.dpu_crtc* %21, %struct.dpu_crtc** %9, align 8
  %22 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %23 = icmp ne %struct.dpu_crtc* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.drm_crtc* @ERR_PTR(i32 %26)
  store %struct.drm_crtc* %27, %struct.drm_crtc** %4, align 8
  br label %109

28:                                               ; preds = %3
  %29 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %30 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %29, i32 0, i32 7
  store %struct.drm_crtc* %30, %struct.drm_crtc** %8, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 1
  store %struct.drm_device* %31, %struct.drm_device** %33, align 8
  %34 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %35 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %34, i32 0, i32 6
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %38 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %37, i32 0, i32 5
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %41 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %40, i32 0, i32 4
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %44 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %43, i32 0, i32 3
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %81, %28
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %49 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %50)
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %46
  %54 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %55 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %63 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %70 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %69, i32 0, i32 3
  %71 = call i32 @list_add(i32* %68, i32* %70)
  %72 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %73 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* @dpu_crtc_frame_event_work, align 4
  %80 = call i32 @kthread_init_work(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %53
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %46

84:                                               ; preds = %46
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %87 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %88 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %89 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %85, %struct.drm_crtc* %86, %struct.drm_plane* %87, %struct.drm_plane* %88, i32* @dpu_crtc_funcs, i32* null)
  %90 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %91 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %90, i32* @dpu_crtc_helper_funcs)
  %92 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %93 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DPU_CRTC_NAME_SIZE, align 4
  %96 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %97 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @snprintf(i32 %94, i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %102 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %101, i32 0, i32 1
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load %struct.dpu_crtc*, %struct.dpu_crtc** %9, align 8
  %105 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  store %struct.drm_crtc* %108, %struct.drm_crtc** %4, align 8
  br label %109

109:                                              ; preds = %84, %24
  %110 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  ret %struct.drm_crtc* %110
}

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local %struct.dpu_crtc* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_crtc* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kthread_init_work(i32*, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
