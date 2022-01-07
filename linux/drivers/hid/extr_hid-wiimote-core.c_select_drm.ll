; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_select_drm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_select_drm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@WIIPROTO_FLAGS_IR = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_EXT_USED = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_MP_USED = common dso_local global i32 0, align 4
@WIIMOTE_DEV_BALANCE_BOARD = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM_KEE = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM_K = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_IR_BASIC = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_ACCEL = common dso_local global i32 0, align 4
@WIIPROTO_REQ_DRM_KAIE = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM_KIE = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_IR_EXT = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM_KAI = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_IR_FULL = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM_SKAI1 = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM_KAE = common dso_local global i64 0, align 8
@WIIPROTO_REQ_DRM_KA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wiimote_data*)* @select_drm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @select_drm(%struct.wiimote_data* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  %6 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %7 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WIIPROTO_FLAGS_IR, align 8
  %11 = and i64 %9, %10
  store i64 %11, i64* %4, align 8
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @WIIPROTO_FLAG_EXT_USED, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %15, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %22 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @WIIPROTO_FLAG_MP_USED, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %20, %1
  %30 = phi i1 [ true, %1 ], [ %28, %20 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %33 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WIIMOTE_DEV_BALANCE_BOARD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @WIIPROTO_REQ_DRM_KEE, align 8
  store i64 %42, i64* %2, align 8
  br label %97

43:                                               ; preds = %38
  %44 = load i64, i64* @WIIPROTO_REQ_DRM_K, align 8
  store i64 %44, i64* %2, align 8
  br label %97

45:                                               ; preds = %29
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @WIIPROTO_FLAG_IR_BASIC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %51 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @WIIPROTO_FLAG_ACCEL, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %53, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64, i64* @WIIPROTO_REQ_DRM_KAIE, align 8
  store i64 %59, i64* %2, align 8
  br label %97

60:                                               ; preds = %49
  %61 = load i64, i64* @WIIPROTO_REQ_DRM_KIE, align 8
  store i64 %61, i64* %2, align 8
  br label %97

62:                                               ; preds = %45
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @WIIPROTO_FLAG_IR_EXT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* @WIIPROTO_REQ_DRM_KAI, align 8
  store i64 %67, i64* %2, align 8
  br label %97

68:                                               ; preds = %62
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @WIIPROTO_FLAG_IR_FULL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @WIIPROTO_REQ_DRM_SKAI1, align 8
  store i64 %73, i64* %2, align 8
  br label %97

74:                                               ; preds = %68
  %75 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %76 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @WIIPROTO_FLAG_ACCEL, align 4
  %80 = sext i32 %79 to i64
  %81 = and i64 %78, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* @WIIPROTO_REQ_DRM_KAE, align 8
  store i64 %87, i64* %2, align 8
  br label %97

88:                                               ; preds = %83
  %89 = load i64, i64* @WIIPROTO_REQ_DRM_KA, align 8
  store i64 %89, i64* %2, align 8
  br label %97

90:                                               ; preds = %74
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* @WIIPROTO_REQ_DRM_KEE, align 8
  store i64 %94, i64* %2, align 8
  br label %97

95:                                               ; preds = %90
  %96 = load i64, i64* @WIIPROTO_REQ_DRM_K, align 8
  store i64 %96, i64* %2, align 8
  br label %97

97:                                               ; preds = %95, %93, %88, %86, %72, %66, %60, %58, %43, %41
  %98 = load i64, i64* %2, align 8
  ret i64 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
