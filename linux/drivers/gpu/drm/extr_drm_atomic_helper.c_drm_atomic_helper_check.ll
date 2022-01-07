; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_atomic_state = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_check(%struct.drm_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %9 = call i32 @drm_atomic_helper_check_modeset(%struct.drm_device* %7, %struct.drm_atomic_state* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %23 = call i32 @drm_atomic_normalize_zpos(%struct.drm_device* %21, %struct.drm_atomic_state* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %32 = call i32 @drm_atomic_helper_check_planes(%struct.drm_device* %30, %struct.drm_atomic_state* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %29
  %38 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %39 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %45 = call i32 @drm_atomic_helper_async_check(%struct.drm_device* %43, %struct.drm_atomic_state* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %50 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %53 = call i32 @drm_self_refresh_helper_alter_state(%struct.drm_atomic_state* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %35, %26, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @drm_atomic_helper_check_modeset(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_normalize_zpos(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_check_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_async_check(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_self_refresh_helper_alter_state(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
