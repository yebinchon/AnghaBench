; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_create_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_create_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, %struct.TYPE_2__*, %struct.xen_drm_front_cfg }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xen_drm_front_cfg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EVTCHNL_TYPE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error allocating control channel\0A\00", align 1
@EVTCHNL_TYPE_EVT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error allocating in-event channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_evtchnl_create_all(%struct.xen_drm_front_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_drm_front_info*, align 8
  %4 = alloca %struct.xen_drm_front_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %3, align 8
  %7 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %8 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %7, i32 0, i32 2
  store %struct.xen_drm_front_cfg* %8, %struct.xen_drm_front_cfg** %4, align 8
  %9 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_2__* @kcalloc(i32 %11, i32 4, i32 %12)
  %14 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %15 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %14, i32 0, i32 1
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  %16 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %17 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %72

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %34 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* @EVTCHNL_TYPE_REQ, align 4
  %41 = call i32 @evtchnl_alloc(%struct.xen_drm_front_info* %31, i32 %32, i32* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %72

46:                                               ; preds = %30
  %47 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %50 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* @EVTCHNL_TYPE_EVT, align 4
  %57 = call i32 @evtchnl_alloc(%struct.xen_drm_front_info* %47, i32 %48, i32* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %72

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %24

66:                                               ; preds = %24
  %67 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %4, align 8
  %68 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %71 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %76

72:                                               ; preds = %60, %44, %20
  %73 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %74 = call i32 @xen_drm_front_evtchnl_free_all(%struct.xen_drm_front_info* %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_2__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @evtchnl_alloc(%struct.xen_drm_front_info*, i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @xen_drm_front_evtchnl_free_all(%struct.xen_drm_front_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
