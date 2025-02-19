; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_submit = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_gem_object* }
%struct.msm_gem_object = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gem_submit*)* @submit_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_cleanup(%struct.msm_gem_submit* %0) #0 {
  %2 = alloca %struct.msm_gem_submit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_gem_object*, align 8
  store %struct.msm_gem_submit* %0, %struct.msm_gem_submit** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %8 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %13 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.msm_gem_object*, %struct.msm_gem_object** %18, align 8
  store %struct.msm_gem_object* %19, %struct.msm_gem_object** %4, align 8
  %20 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @submit_unlock_unpin_bo(%struct.msm_gem_submit* %20, i32 %21, i32 0)
  %23 = load %struct.msm_gem_object*, %struct.msm_gem_object** %4, align 8
  %24 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %23, i32 0, i32 1
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.msm_gem_object*, %struct.msm_gem_object** %4, align 8
  %27 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %26, i32 0, i32 0
  %28 = call i32 @drm_gem_object_put(i32* %27)
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %34 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %33, i32 0, i32 1
  %35 = call i32 @ww_acquire_fini(i32* %34)
  ret void
}

declare dso_local i32 @submit_unlock_unpin_bo(%struct.msm_gem_submit*, i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @drm_gem_object_put(i32*) #1

declare dso_local i32 @ww_acquire_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
