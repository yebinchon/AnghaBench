; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.mdp4_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.mdp4_kms = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.msm_kms }
%struct.msm_kms = type { i32 }

@CURSOR_WIDTH = common dso_local global i8* null, align 8
@CURSOR_HEIGHT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"bad cursor size: %dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PENDING_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i8*, i8*, i8*)* @mdp4_crtc_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp4_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mdp4_crtc*, align 8
  %13 = alloca %struct.mdp4_kms*, align 8
  %14 = alloca %struct.msm_kms*, align 8
  %15 = alloca %struct.drm_device*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca %struct.drm_gem_object*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %22 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %21)
  store %struct.mdp4_crtc* %22, %struct.mdp4_crtc** %12, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %24 = call %struct.mdp4_kms* @get_kms(%struct.drm_crtc* %23)
  store %struct.mdp4_kms* %24, %struct.mdp4_kms** %13, align 8
  %25 = load %struct.mdp4_kms*, %struct.mdp4_kms** %13, align 8
  %26 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.msm_kms* %27, %struct.msm_kms** %14, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load %struct.drm_device*, %struct.drm_device** %29, align 8
  store %struct.drm_device* %30, %struct.drm_device** %15, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** @CURSOR_WIDTH, align 8
  %33 = icmp ugt i8* %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %5
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** @CURSOR_HEIGHT, align 8
  %37 = icmp ugt i8* %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34, %5
  %39 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @DRM_DEV_ERROR(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %124

47:                                               ; preds = %34
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %51, i8* %52)
  store %struct.drm_gem_object* %53, %struct.drm_gem_object** %16, align 8
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %55 = icmp ne %struct.drm_gem_object* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %124

59:                                               ; preds = %50
  br label %61

60:                                               ; preds = %47
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %16, align 8
  br label %61

61:                                               ; preds = %60, %59
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %63 = icmp ne %struct.drm_gem_object* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %66 = load %struct.msm_kms*, %struct.msm_kms** %14, align 8
  %67 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object* %65, i32 %68, i64* %19)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %120

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %61
  store i64 0, i64* %19, align 8
  br label %75

75:                                               ; preds = %74, %73
  %76 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %77 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %18, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %82 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  %84 = load %struct.drm_gem_object*, %struct.drm_gem_object** %83, align 8
  store %struct.drm_gem_object* %84, %struct.drm_gem_object** %17, align 8
  %85 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %86 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %87 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  store %struct.drm_gem_object* %85, %struct.drm_gem_object** %88, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %91 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  store i64 %89, i64* %92, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %95 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i8* %93, i8** %96, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %99 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i8* %97, i8** %100, align 8
  %101 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %102 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %105 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %110 = icmp ne %struct.drm_gem_object* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %75
  %112 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %12, align 8
  %113 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %112, i32 0, i32 0
  %114 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %115 = call i32 @drm_flip_work_queue(i32* %113, %struct.drm_gem_object* %114)
  br label %116

116:                                              ; preds = %111, %75
  %117 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %118 = load i32, i32* @PENDING_CURSOR, align 4
  %119 = call i32 @request_pending(%struct.drm_crtc* %117, i32 %118)
  store i32 0, i32* %6, align 4
  br label %124

120:                                              ; preds = %72
  %121 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %122 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %121)
  %123 = load i32, i32* %20, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %116, %56, %38
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i8*, i8*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i8*) #1

declare dso_local i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object*, i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_flip_work_queue(i32*, %struct.drm_gem_object*) #1

declare dso_local i32 @request_pending(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
