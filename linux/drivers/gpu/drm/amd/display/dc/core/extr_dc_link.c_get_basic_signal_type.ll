; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_basic_signal_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_basic_signal_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_object_id = type { i64, i32 }

@OBJECT_TYPE_CONNECTOR = common dso_local global i64 0, align 8
@SIGNAL_TYPE_RGB = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_SINGLE_LINK = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_DUAL_LINK = common dso_local global i32 0, align 4
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i32 0, align 4
@SIGNAL_TYPE_LVDS = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i32 0, align 4
@SIGNAL_TYPE_EDP = common dso_local global i32 0, align 4
@SIGNAL_TYPE_NONE = common dso_local global i32 0, align 4
@OBJECT_TYPE_ENCODER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i32)* @get_basic_signal_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_basic_signal_type(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.graphics_object_id, align 8
  %7 = alloca %struct.graphics_object_id, align 8
  %8 = bitcast %struct.graphics_object_id* %6 to { i64, i32 }*
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.graphics_object_id* %7 to { i64, i32 }*
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBJECT_TYPE_CONNECTOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %49 [
    i32 135, label %21
    i32 140, label %28
    i32 136, label %35
    i32 141, label %37
    i32 134, label %39
    i32 138, label %41
    i32 137, label %43
    i32 142, label %45
    i32 139, label %47
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %26 [
    i32 131, label %24
    i32 129, label %24
    i32 130, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %21, %21, %21, %21
  %25 = load i32, i32* @SIGNAL_TYPE_RGB, align 4
  store i32 %25, i32* %5, align 4
  br label %66

26:                                               ; preds = %21
  %27 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  store i32 %27, i32* %5, align 4
  br label %66

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %33 [
    i32 131, label %31
    i32 129, label %31
    i32 130, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %28, %28, %28, %28
  %32 = load i32, i32* @SIGNAL_TYPE_RGB, align 4
  store i32 %32, i32* %5, align 4
  br label %66

33:                                               ; preds = %28
  %34 = load i32, i32* @SIGNAL_TYPE_DVI_DUAL_LINK, align 4
  store i32 %34, i32* %5, align 4
  br label %66

35:                                               ; preds = %18
  %36 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  store i32 %36, i32* %5, align 4
  br label %66

37:                                               ; preds = %18
  %38 = load i32, i32* @SIGNAL_TYPE_DVI_DUAL_LINK, align 4
  store i32 %38, i32* %5, align 4
  br label %66

39:                                               ; preds = %18
  %40 = load i32, i32* @SIGNAL_TYPE_RGB, align 4
  store i32 %40, i32* %5, align 4
  br label %66

41:                                               ; preds = %18
  %42 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  store i32 %42, i32* %5, align 4
  br label %66

43:                                               ; preds = %18
  %44 = load i32, i32* @SIGNAL_TYPE_LVDS, align 4
  store i32 %44, i32* %5, align 4
  br label %66

45:                                               ; preds = %18
  %46 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT, align 4
  store i32 %46, i32* %5, align 4
  br label %66

47:                                               ; preds = %18
  %48 = load i32, i32* @SIGNAL_TYPE_EDP, align 4
  store i32 %48, i32* %5, align 4
  br label %66

49:                                               ; preds = %18
  %50 = load i32, i32* @SIGNAL_TYPE_NONE, align 4
  store i32 %50, i32* %5, align 4
  br label %66

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OBJECT_TYPE_ENCODER, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %61 [
    i32 133, label %59
    i32 132, label %59
  ]

59:                                               ; preds = %56, %56
  %60 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT, align 4
  store i32 %60, i32* %5, align 4
  br label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @SIGNAL_TYPE_NONE, align 4
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @SIGNAL_TYPE_NONE, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %61, %59, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %26, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
