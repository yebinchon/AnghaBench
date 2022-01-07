; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32, i8**, i8**, %struct.led_classdev** }

@.str = private unnamed_addr constant [16 x i8] c"No device data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SONY_WORKER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @sony_led_blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_led_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hid_device*, align 8
  %10 = alloca %struct.sony_sc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %15 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = call %struct.hid_device* @to_hid_device(%struct.device* %19)
  store %struct.hid_device* %20, %struct.hid_device** %9, align 8
  %21 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %22 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %21)
  store %struct.sony_sc* %22, %struct.sony_sc** %10, align 8
  %23 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %24 = icmp ne %struct.sony_sc* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %27 = call i32 @hid_err(%struct.hid_device* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %131

30:                                               ; preds = %3
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %32, 2550
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64*, i64** %6, align 8
  store i64 2550, i64* %35, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %38, 2550
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64*, i64** %7, align 8
  store i64 2550, i64* %41, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i64*, i64** %7, align 8
  store i64 500, i64* %51, align 8
  %52 = load i64*, i64** %6, align 8
  store i64 500, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %46, %42
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = udiv i64 %55, 10
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %12, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = udiv i64 %59, 10
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %80, %53
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %65 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %70 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %71 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %70, i32 0, i32 3
  %72 = load %struct.led_classdev**, %struct.led_classdev*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %72, i64 %74
  %76 = load %struct.led_classdev*, %struct.led_classdev** %75, align 8
  %77 = icmp eq %struct.led_classdev* %69, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %83

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %62

83:                                               ; preds = %78, %62
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %86 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %131

92:                                               ; preds = %83
  %93 = load i8*, i8** %12, align 8
  %94 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %95 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %93, %100
  br i1 %101, label %112, label %102

102:                                              ; preds = %92
  %103 = load i8*, i8** %13, align 8
  %104 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %105 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %103, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %102, %92
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %115 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %113, i8** %119, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %122 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %120, i8** %126, align 8
  %127 = load %struct.sony_sc*, %struct.sony_sc** %10, align 8
  %128 = load i32, i32* @SONY_WORKER_STATE, align 4
  %129 = call i32 @sony_schedule_work(%struct.sony_sc* %127, i32 %128)
  br label %130

130:                                              ; preds = %112, %102
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %89, %25
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @sony_schedule_work(%struct.sony_sc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
