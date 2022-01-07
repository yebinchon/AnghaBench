; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_lock_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_lock_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_submit = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.msm_gem_object* }
%struct.msm_gem_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BO_LOCKED = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gem_submit*)* @submit_lock_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_lock_objects(%struct.msm_gem_submit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gem_submit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_gem_object*, align 8
  %9 = alloca %struct.msm_gem_object*, align 8
  store %struct.msm_gem_submit* %0, %struct.msm_gem_submit** %3, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %116, %1
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %67, %10
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %14 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %11
  %18 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %19 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.msm_gem_object*, %struct.msm_gem_object** %24, align 8
  store %struct.msm_gem_object* %25, %struct.msm_gem_object** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %33 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BO_LOCKED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %30
  %44 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %45 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %50 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %49, i32 0, i32 2
  %51 = call i32 @ww_mutex_lock_interruptible(i32* %48, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %74

55:                                               ; preds = %43
  %56 = load i32, i32* @BO_LOCKED, align 4
  %57 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %58 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %56
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %55, %30
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %11

70:                                               ; preds = %11
  %71 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %72 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %71, i32 0, i32 2
  %73 = call i32 @ww_acquire_done(i32* %72)
  store i32 0, i32* %2, align 4
  br label %131

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %82, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @submit_unlock_unpin_bo(%struct.msm_gem_submit* %79, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  br label %75

85:                                               ; preds = %75
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @submit_unlock_unpin_bo(%struct.msm_gem_submit* %89, i32 %90, i32 1)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @EDEADLK, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %92
  %98 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %99 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.msm_gem_object*, %struct.msm_gem_object** %104, align 8
  store %struct.msm_gem_object* %105, %struct.msm_gem_object** %9, align 8
  %106 = load %struct.msm_gem_object*, %struct.msm_gem_object** %9, align 8
  %107 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %112 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %111, i32 0, i32 2
  %113 = call i32 @ww_mutex_lock_slow_interruptible(i32* %110, i32* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %97
  %117 = load i32, i32* @BO_LOCKED, align 4
  %118 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %3, align 8
  %119 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %117
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %5, align 4
  br label %10

128:                                              ; preds = %97
  br label %129

129:                                              ; preds = %128, %92
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %70
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @ww_mutex_lock_interruptible(i32*, i32*) #1

declare dso_local i32 @ww_acquire_done(i32*) #1

declare dso_local i32 @submit_unlock_unpin_bo(%struct.msm_gem_submit*, i32, i32) #1

declare dso_local i32 @ww_mutex_lock_slow_interruptible(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
