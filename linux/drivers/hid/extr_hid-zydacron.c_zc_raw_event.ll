; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.zc_device = type { i32*, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@KEY_MODE = common dso_local global i32 0, align 4
@KEY_SCREEN = common dso_local global i32 0, align 4
@KEY_INFO = common dso_local global i32 0, align 4
@KEY_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @zc_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zc_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_report* %1, %struct.hid_report** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %14 = call %struct.zc_device* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.zc_device* %14, %struct.zc_device** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %16 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %4
  store i16 0, i16* %12, align 2
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i16, i16* %12, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load %struct.zc_device*, %struct.zc_device** %9, align 8
  %29 = getelementptr inbounds %struct.zc_device, %struct.zc_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i16, i16* %12, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %27
  %38 = load %struct.zc_device*, %struct.zc_device** %9, align 8
  %39 = getelementptr inbounds %struct.zc_device, %struct.zc_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EV_KEY, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @input_event(i32 %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.zc_device*, %struct.zc_device** %9, align 8
  %45 = getelementptr inbounds %struct.zc_device, %struct.zc_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i16, i16* %12, align 2
  %48 = zext i16 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %37, %27
  br label %51

51:                                               ; preds = %50
  %52 = load i16, i16* %12, align 2
  %53 = add i16 %52, 1
  store i16 %53, i16* %12, align 2
  br label %23

54:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %55 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %56 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %88 [
    i32 2, label %58
    i32 3, label %58
  ]

58:                                               ; preds = %54, %54
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %70 [
    i32 16, label %62
    i32 48, label %64
    i32 112, label %66
    i32 4, label %68
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @KEY_MODE, align 4
  store i32 %63, i32* %11, align 4
  store i16 0, i16* %12, align 2
  br label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @KEY_SCREEN, align 4
  store i32 %65, i32* %11, align 4
  store i16 1, i16* %12, align 2
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @KEY_INFO, align 4
  store i32 %67, i32* %11, align 4
  store i16 2, i16* %12, align 2
  br label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @KEY_RADIO, align 4
  store i32 %69, i32* %11, align 4
  store i16 3, i16* %12, align 2
  br label %70

70:                                               ; preds = %58, %68, %66, %64, %62
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load %struct.zc_device*, %struct.zc_device** %9, align 8
  %75 = getelementptr inbounds %struct.zc_device, %struct.zc_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EV_KEY, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @input_event(i32 %76, i32 %77, i32 %78, i32 1)
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.zc_device*, %struct.zc_device** %9, align 8
  %82 = getelementptr inbounds %struct.zc_device, %struct.zc_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i16, i16* %12, align 2
  %85 = zext i16 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %73, %70
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %54, %87
  br label %89

89:                                               ; preds = %88, %4
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local %struct.zc_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
