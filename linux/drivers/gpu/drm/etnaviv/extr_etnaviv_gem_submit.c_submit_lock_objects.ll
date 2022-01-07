; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_lock_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_lock_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_submit = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@BO_LOCKED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BO at index %u already on submit list\0A\00", align 1
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_submit*, %struct.ww_acquire_ctx*)* @submit_lock_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_lock_objects(%struct.etnaviv_gem_submit* %0, %struct.ww_acquire_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etnaviv_gem_submit*, align 8
  %5 = alloca %struct.ww_acquire_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %4, align 8
  store %struct.ww_acquire_ctx* %1, %struct.ww_acquire_ctx** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %123, %2
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %76, %12
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %13
  %20 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %36 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BO_LOCKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %33
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %48 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %5, align 8
  %52 = call i32 @ww_mutex_lock_interruptible(i32* %50, %struct.ww_acquire_ctx* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @EALREADY, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %46
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %82

64:                                               ; preds = %60
  %65 = load i32, i32* @BO_LOCKED, align 4
  %66 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %67 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %65
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %64, %33
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %13

79:                                               ; preds = %13
  %80 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %5, align 8
  %81 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %80)
  store i32 0, i32* %3, align 4
  br label %138

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %90, %82
  %84 = load i32, i32* %8, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @submit_unlock_object(%struct.etnaviv_gem_submit* %87, i32 %88)
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %83

93:                                               ; preds = %83
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @submit_unlock_object(%struct.etnaviv_gem_submit* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @EDEADLK, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %100
  %106 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %107 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store %struct.drm_gem_object* %114, %struct.drm_gem_object** %11, align 8
  %115 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %116 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %5, align 8
  %120 = call i32 @ww_mutex_lock_slow_interruptible(i32* %118, %struct.ww_acquire_ctx* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %105
  %124 = load i32, i32* @BO_LOCKED, align 4
  %125 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %126 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %124
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %7, align 4
  br label %12

135:                                              ; preds = %105
  br label %136

136:                                              ; preds = %135, %100
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %79
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @ww_mutex_lock_interruptible(i32*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @ww_acquire_done(%struct.ww_acquire_ctx*) #1

declare dso_local i32 @submit_unlock_object(%struct.etnaviv_gem_submit*, i32) #1

declare dso_local i32 @ww_mutex_lock_slow_interruptible(i32*, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
