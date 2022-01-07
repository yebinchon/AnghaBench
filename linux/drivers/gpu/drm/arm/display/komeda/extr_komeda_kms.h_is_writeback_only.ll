; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.h_is_writeback_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.h_is_writeback_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i64, i32 }
%struct.komeda_wb_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_connector }
%struct.drm_connector = type { i32 }
%struct.TYPE_4__ = type { %struct.komeda_wb_connector* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc_state*)* @is_writeback_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_writeback_only(%struct.drm_crtc_state* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.komeda_wb_connector*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  store %struct.drm_crtc_state* %0, %struct.drm_crtc_state** %2, align 8
  %5 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.TYPE_4__* @to_kcrtc(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %9, align 8
  store %struct.komeda_wb_connector* %10, %struct.komeda_wb_connector** %3, align 8
  %11 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %3, align 8
  %12 = icmp ne %struct.komeda_wb_connector* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %3, align 8
  %15 = getelementptr inbounds %struct.komeda_wb_connector, %struct.komeda_wb_connector* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi %struct.drm_connector* [ %16, %13 ], [ null, %17 ]
  store %struct.drm_connector* %19, %struct.drm_connector** %4, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = icmp ne %struct.drm_connector* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  %24 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = call i32 @drm_connector_index(%struct.drm_connector* %26)
  %28 = call i64 @BIT(i32 %27)
  %29 = icmp eq i64 %25, %28
  br label %30

30:                                               ; preds = %22, %18
  %31 = phi i1 [ false, %18 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local %struct.TYPE_4__* @to_kcrtc(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @drm_connector_index(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
