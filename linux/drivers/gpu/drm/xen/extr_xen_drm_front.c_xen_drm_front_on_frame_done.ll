; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_on_frame_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_on_frame_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { %struct.TYPE_2__, %struct.xen_drm_front_drm_info* }
%struct.TYPE_2__ = type { i32 }
%struct.xen_drm_front_drm_info = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_drm_front_on_frame_done(%struct.xen_drm_front_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xen_drm_front_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_drm_front_drm_info*, align 8
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %9 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %8, i32 0, i32 1
  %10 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %9, align 8
  store %struct.xen_drm_front_drm_info* %10, %struct.xen_drm_front_drm_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %13 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %7, align 8
  %23 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @xen_drm_front_kms_on_frame_done(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xen_drm_front_kms_on_frame_done(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
