; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_drm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_drm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@WIIPROTO_FLAG_DRM_LOCKED = common dso_local global i32 0, align 4
@WIIPROTO_REQ_NULL = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiproto_req_drm(%struct.wiimote_data* %0, i64 %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i64], align 16
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %7 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @WIIPROTO_FLAG_DRM_LOCKED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %15 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  br label %26

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @WIIPROTO_REQ_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %24 = call i64 @select_drm(%struct.wiimote_data* %23)
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i64, i64* @WIIPROTO_REQ_DRM, align 8
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %30, i64* %31, align 16
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %34 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %38 = call i32 @wiiproto_keep_rumble(%struct.wiimote_data* %36, i64* %37)
  %39 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %41 = call i32 @wiimote_queue(%struct.wiimote_data* %39, i64* %40, i32 24)
  ret void
}

declare dso_local i64 @select_drm(%struct.wiimote_data*) #1

declare dso_local i32 @wiiproto_keep_rumble(%struct.wiimote_data*, i64*) #1

declare dso_local i32 @wiimote_queue(%struct.wiimote_data*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
