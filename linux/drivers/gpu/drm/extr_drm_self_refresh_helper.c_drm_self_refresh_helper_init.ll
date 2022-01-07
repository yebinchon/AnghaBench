; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_self_refresh_helper.c_drm_self_refresh_helper_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_self_refresh_helper.c_drm_self_refresh_helper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_self_refresh_data* }
%struct.drm_self_refresh_data = type { i32, i32, i32, %struct.drm_crtc*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@drm_self_refresh_helper_entry_work = common dso_local global i32 0, align 4
@SELF_REFRESH_AVG_SEED_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_self_refresh_helper_init(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_self_refresh_data*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %6, align 8
  store %struct.drm_self_refresh_data* %7, %struct.drm_self_refresh_data** %4, align 8
  %8 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %9 = call i64 @WARN_ON(%struct.drm_self_refresh_data* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.drm_self_refresh_data* @kzalloc(i32 32, i32 %15)
  store %struct.drm_self_refresh_data* %16, %struct.drm_self_refresh_data** %4, align 8
  %17 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %18 = icmp ne %struct.drm_self_refresh_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %14
  %23 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %24 = getelementptr inbounds %struct.drm_self_refresh_data, %struct.drm_self_refresh_data* %23, i32 0, i32 4
  %25 = load i32, i32* @drm_self_refresh_helper_entry_work, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %29 = getelementptr inbounds %struct.drm_self_refresh_data, %struct.drm_self_refresh_data* %28, i32 0, i32 3
  store %struct.drm_crtc* %27, %struct.drm_crtc** %29, align 8
  %30 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %31 = getelementptr inbounds %struct.drm_self_refresh_data, %struct.drm_self_refresh_data* %30, i32 0, i32 2
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %34 = getelementptr inbounds %struct.drm_self_refresh_data, %struct.drm_self_refresh_data* %33, i32 0, i32 1
  %35 = call i32 @ewma_psr_time_init(i32* %34)
  %36 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %37 = getelementptr inbounds %struct.drm_self_refresh_data, %struct.drm_self_refresh_data* %36, i32 0, i32 0
  %38 = call i32 @ewma_psr_time_init(i32* %37)
  %39 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %40 = getelementptr inbounds %struct.drm_self_refresh_data, %struct.drm_self_refresh_data* %39, i32 0, i32 1
  %41 = load i32, i32* @SELF_REFRESH_AVG_SEED_MS, align 4
  %42 = call i32 @ewma_psr_time_add(i32* %40, i32 %41)
  %43 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %44 = getelementptr inbounds %struct.drm_self_refresh_data, %struct.drm_self_refresh_data* %43, i32 0, i32 0
  %45 = load i32, i32* @SELF_REFRESH_AVG_SEED_MS, align 4
  %46 = call i32 @ewma_psr_time_add(i32* %44, i32 %45)
  %47 = load %struct.drm_self_refresh_data*, %struct.drm_self_refresh_data** %4, align 8
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  store %struct.drm_self_refresh_data* %47, %struct.drm_self_refresh_data** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %22, %19, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @WARN_ON(%struct.drm_self_refresh_data*) #1

declare dso_local %struct.drm_self_refresh_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ewma_psr_time_init(i32*) #1

declare dso_local i32 @ewma_psr_time_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
