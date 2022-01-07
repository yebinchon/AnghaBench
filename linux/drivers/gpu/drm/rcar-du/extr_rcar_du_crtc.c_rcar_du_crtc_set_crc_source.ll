; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_set_crc_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_set_crc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.rcar_du_crtc = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.rcar_du_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i8*)* @rcar_du_crtc_set_crc_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_crtc_set_crc_source(%struct.drm_crtc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rcar_du_crtc*, align 8
  %7 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca %struct.drm_atomic_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rcar_du_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = call %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc* %14)
  store %struct.rcar_du_crtc* %15, %struct.rcar_du_crtc** %6, align 8
  %16 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @rcar_du_crtc_parse_crc_source(%struct.rcar_du_crtc* %16, i8* %17, i32* %10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %11, align 4
  %25 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %7, i32 0)
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %28)
  store %struct.drm_atomic_state* %29, %struct.drm_atomic_state** %9, align 8
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %31 = icmp ne %struct.drm_atomic_state* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %73

35:                                               ; preds = %23
  %36 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %37 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %36, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %7, %struct.drm_modeset_acquire_ctx** %37, align 8
  br label %38

38:                                               ; preds = %66, %35
  %39 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %41 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %39, %struct.drm_crtc* %40)
  store %struct.drm_crtc_state* %41, %struct.drm_crtc_state** %8, align 8
  %42 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %43 = call i32 @IS_ERR(%struct.drm_crtc_state* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %47 = call %struct.rcar_du_crtc_state* @to_rcar_crtc_state(%struct.drm_crtc_state* %46)
  store %struct.rcar_du_crtc_state* %47, %struct.rcar_du_crtc_state** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %13, align 8
  %50 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %13, align 8
  %54 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %57 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %56)
  store i32 %57, i32* %12, align 4
  br label %61

58:                                               ; preds = %38
  %59 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %60 = call i32 @PTR_ERR(%struct.drm_crtc_state* %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @EDEADLK, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %68 = call i32 @drm_atomic_state_clear(%struct.drm_atomic_state* %67)
  %69 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %7)
  br label %38

70:                                               ; preds = %61
  %71 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %72 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %71)
  br label %73

73:                                               ; preds = %70, %32
  %74 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %7)
  %75 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %7)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @rcar_du_crtc_parse_crc_source(%struct.rcar_du_crtc*, i8*, i32*) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local %struct.rcar_du_crtc_state* @to_rcar_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_state_clear(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
