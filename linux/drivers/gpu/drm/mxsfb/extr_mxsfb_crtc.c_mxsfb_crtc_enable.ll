; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_crtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_crtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mxsfb_crtc_enable(%struct.mxsfb_drm_private* %0) #0 {
  %2 = alloca %struct.mxsfb_drm_private*, align 8
  %3 = alloca i64, align 8
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %2, align 8
  %4 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %5 = call i32 @mxsfb_enable_axi_clk(%struct.mxsfb_drm_private* %4)
  %6 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %7 = call i32 @mxsfb_crtc_mode_set_nofb(%struct.mxsfb_drm_private* %6)
  %8 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %9 = call i64 @mxsfb_get_fb_paddr(%struct.mxsfb_drm_private* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %15 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %18 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = call i32 @writel(i64 %13, i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %26 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %29 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %27, %32
  %34 = call i32 @writel(i64 %24, i64 %33)
  br label %35

35:                                               ; preds = %12, %1
  %36 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %37 = call i32 @mxsfb_enable_controller(%struct.mxsfb_drm_private* %36)
  ret void
}

declare dso_local i32 @mxsfb_enable_axi_clk(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @mxsfb_crtc_mode_set_nofb(%struct.mxsfb_drm_private*) #1

declare dso_local i64 @mxsfb_get_fb_paddr(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @mxsfb_enable_controller(%struct.mxsfb_drm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
