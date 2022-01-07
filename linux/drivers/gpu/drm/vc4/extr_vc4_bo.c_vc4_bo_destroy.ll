; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_bo = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.vc4_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_bo*)* @vc4_bo_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_bo_destroy(%struct.vc4_bo* %0) #0 {
  %2 = alloca %struct.vc4_bo*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  store %struct.vc4_bo* %0, %struct.vc4_bo** %2, align 8
  %5 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %6 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.drm_gem_object* %7, %struct.drm_gem_object** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vc4_dev* @to_vc4_dev(i32 %10)
  store %struct.vc4_dev* %11, %struct.vc4_dev** %4, align 8
  %12 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %16 = call i32 @vc4_bo_set_label(%struct.drm_gem_object* %15, i32 -1)
  %17 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %18 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %23 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @kfree(%struct.TYPE_4__* %26)
  %28 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %29 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @kfree(%struct.TYPE_4__* %32)
  %34 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %35 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @kfree(%struct.TYPE_4__* %36)
  %38 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %39 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %38, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %39, align 8
  br label %40

40:                                               ; preds = %21, %1
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %42 = call i32 @drm_gem_cma_free_object(%struct.drm_gem_object* %41)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @vc4_bo_set_label(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_gem_cma_free_object(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
