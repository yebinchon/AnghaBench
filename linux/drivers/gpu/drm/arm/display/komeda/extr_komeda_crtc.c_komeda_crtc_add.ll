; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { i32 }
%struct.komeda_crtc = type { %struct.TYPE_2__*, %struct.drm_crtc }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc = type { i32 }

@komeda_crtc_funcs = common dso_local global i32 0, align 4
@komeda_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_kms_dev*, %struct.komeda_crtc*)* @komeda_crtc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_crtc_add(%struct.komeda_kms_dev* %0, %struct.komeda_crtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.komeda_crtc*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_crtc* %1, %struct.komeda_crtc** %5, align 8
  %8 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %9 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %8, i32 0, i32 1
  store %struct.drm_crtc* %9, %struct.drm_crtc** %6, align 8
  %10 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %11 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %10, i32 0, i32 0
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %13 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %14 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %15 = call i32 @get_crtc_primary(%struct.komeda_kms_dev* %13, %struct.komeda_crtc* %14)
  %16 = call i32 @drm_crtc_init_with_planes(i32* %11, %struct.drm_crtc* %12, i32 %15, i32* null, i32* @komeda_crtc_funcs, i32* null)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %23 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %22, i32* @komeda_crtc_helper_funcs)
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %25 = call i32 @drm_crtc_vblank_reset(%struct.drm_crtc* %24)
  %26 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @drm_crtc_init_with_planes(i32*, %struct.drm_crtc*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @get_crtc_primary(%struct.komeda_kms_dev*, %struct.komeda_crtc*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_reset(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
