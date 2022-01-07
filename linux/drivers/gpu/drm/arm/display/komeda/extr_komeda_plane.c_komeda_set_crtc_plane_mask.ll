; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_set_crtc_plane_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_set_crtc_plane_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { i32, %struct.komeda_crtc* }
%struct.komeda_crtc = type { i32, %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32 }
%struct.drm_plane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_kms_dev*, %struct.komeda_pipeline*, %struct.drm_plane*)* @komeda_set_crtc_plane_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_set_crtc_plane_mask(%struct.komeda_kms_dev* %0, %struct.komeda_pipeline* %1, %struct.drm_plane* %2) #0 {
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.komeda_pipeline*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.komeda_crtc*, align 8
  %8 = alloca i32, align 4
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_pipeline* %1, %struct.komeda_pipeline** %5, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %12 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %17 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %16, i32 0, i32 1
  %18 = load %struct.komeda_crtc*, %struct.komeda_crtc** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %18, i64 %20
  store %struct.komeda_crtc* %21, %struct.komeda_crtc** %7, align 8
  %22 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %5, align 8
  %23 = load %struct.komeda_crtc*, %struct.komeda_crtc** %7, align 8
  %24 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %23, i32 0, i32 1
  %25 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %24, align 8
  %26 = icmp eq %struct.komeda_pipeline* %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %29 = call i32 @drm_plane_index(%struct.drm_plane* %28)
  %30 = call i32 @BIT(i32 %29)
  %31 = load %struct.komeda_crtc*, %struct.komeda_crtc** %7, align 8
  %32 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %27, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

39:                                               ; preds = %9
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_plane_index(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
