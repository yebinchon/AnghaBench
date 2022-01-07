; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_unlock_unpin_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_unlock_unpin_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_submit = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.msm_gem_object* }
%struct.msm_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BO_PINNED = common dso_local global i32 0, align 4
@BO_LOCKED = common dso_local global i32 0, align 4
@BO_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gem_submit*, i32, i32)* @submit_unlock_unpin_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_unlock_unpin_bo(%struct.msm_gem_submit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_gem_submit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_gem_object*, align 8
  store %struct.msm_gem_submit* %0, %struct.msm_gem_submit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %9 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.msm_gem_object*, %struct.msm_gem_object** %14, align 8
  store %struct.msm_gem_object* %15, %struct.msm_gem_object** %7, align 8
  %16 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %17 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BO_PINNED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.msm_gem_object*, %struct.msm_gem_object** %7, align 8
  %29 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %28, i32 0, i32 0
  %30 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %31 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @msm_gem_unpin_iova(%struct.TYPE_6__* %29, i32 %32)
  br label %34

34:                                               ; preds = %27, %3
  %35 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %36 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BO_LOCKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load %struct.msm_gem_object*, %struct.msm_gem_object** %7, align 8
  %48 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @ww_mutex_unlock(i32* %51)
  br label %53

53:                                               ; preds = %46, %34
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %58 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BO_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %56
  %69 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %70 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %68, %56, %53
  %77 = load i32, i32* @BO_LOCKED, align 4
  %78 = load i32, i32* @BO_PINNED, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %82 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %80
  store i32 %89, i32* %87, align 8
  ret void
}

declare dso_local i32 @msm_gem_unpin_iova(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ww_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
