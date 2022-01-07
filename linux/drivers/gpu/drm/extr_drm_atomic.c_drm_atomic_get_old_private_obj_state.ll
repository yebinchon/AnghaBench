; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_old_private_obj_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_old_private_obj_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_private_state = type { i32 }
%struct.drm_atomic_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_private_state*, %struct.drm_private_obj* }
%struct.drm_private_obj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_private_state* @drm_atomic_get_old_private_obj_state(%struct.drm_atomic_state* %0, %struct.drm_private_obj* %1) #0 {
  %3 = alloca %struct.drm_private_state*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_private_obj*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.drm_private_obj* %1, %struct.drm_private_obj** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %10 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %16 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.drm_private_obj*, %struct.drm_private_obj** %21, align 8
  %23 = icmp eq %struct.drm_private_obj* %14, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %26 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.drm_private_state*, %struct.drm_private_state** %31, align 8
  store %struct.drm_private_state* %32, %struct.drm_private_state** %3, align 8
  br label %38

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store %struct.drm_private_state* null, %struct.drm_private_state** %3, align 8
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.drm_private_state*, %struct.drm_private_state** %3, align 8
  ret %struct.drm_private_state* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
