; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_set_view.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_set_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vbox_private* }
%struct.vbox_private = type { i32, i64 }
%struct.vbox_crtc = type { i32, i64 }
%struct.vbva_infoview = type { i32, i64, i64, i64 }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_INFO_VIEW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VBVA_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @vbox_set_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbox_set_view(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.vbox_crtc*, align 8
  %5 = alloca %struct.vbox_private*, align 8
  %6 = alloca %struct.vbva_infoview*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.vbox_crtc* @to_vbox_crtc(%struct.drm_crtc* %7)
  store %struct.vbox_crtc* %8, %struct.vbox_crtc** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.vbox_private*, %struct.vbox_private** %12, align 8
  store %struct.vbox_private* %13, %struct.vbox_private** %5, align 8
  %14 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %15 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %18 = load i32, i32* @VBVA_INFO_VIEW, align 4
  %19 = call %struct.vbva_infoview* @hgsmi_buffer_alloc(i32 %16, i32 32, i32 %17, i32 %18)
  store %struct.vbva_infoview* %19, %struct.vbva_infoview** %6, align 8
  %20 = load %struct.vbva_infoview*, %struct.vbva_infoview** %6, align 8
  %21 = icmp ne %struct.vbva_infoview* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %27 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vbva_infoview*, %struct.vbva_infoview** %6, align 8
  %30 = getelementptr inbounds %struct.vbva_infoview, %struct.vbva_infoview* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %32 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.vbva_infoview*, %struct.vbva_infoview** %6, align 8
  %35 = getelementptr inbounds %struct.vbva_infoview, %struct.vbva_infoview* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %37 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %40 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %44 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VBVA_MIN_BUFFER_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %42, %48
  %50 = load %struct.vbva_infoview*, %struct.vbva_infoview** %6, align 8
  %51 = getelementptr inbounds %struct.vbva_infoview, %struct.vbva_infoview* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %53 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %56 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.vbva_infoview*, %struct.vbva_infoview** %6, align 8
  %60 = getelementptr inbounds %struct.vbva_infoview, %struct.vbva_infoview* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %62 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vbva_infoview*, %struct.vbva_infoview** %6, align 8
  %65 = call i32 @hgsmi_buffer_submit(i32 %63, %struct.vbva_infoview* %64)
  %66 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %67 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vbva_infoview*, %struct.vbva_infoview** %6, align 8
  %70 = call i32 @hgsmi_buffer_free(i32 %68, %struct.vbva_infoview* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %25, %22
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.vbox_crtc* @to_vbox_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.vbva_infoview* @hgsmi_buffer_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(i32, %struct.vbva_infoview*) #1

declare dso_local i32 @hgsmi_buffer_free(i32, %struct.vbva_infoview*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
