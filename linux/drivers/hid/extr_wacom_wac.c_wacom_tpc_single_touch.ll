; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_tpc_single_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_tpc_single_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.input_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }

@WACOM_PKGLEN_TPC2FG = common dso_local global i64 0, align 8
@WACOM_PKGLEN_TPC1FG = common dso_local global i64 0, align 8
@WACOM_PKGLEN_TPC1FG_B = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i64)* @wacom_tpc_single_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_tpc_single_touch(%struct.wacom_wac* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %15 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %14, i32 0, i32 3
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %7, align 8
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %18 = call i32 @report_touch_events(%struct.wacom_wac* %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %20 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @WACOM_PKGLEN_TPC2FG, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %119

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @WACOM_PKGLEN_TPC1FG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %36, %33
  %44 = phi i1 [ false, %33 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i32 @get_unaligned_le16(i8* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = call i32 @get_unaligned_le16(i8* %50)
  store i32 %51, i32* %10, align 4
  br label %97

52:                                               ; preds = %29
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @WACOM_PKGLEN_TPC1FG_B, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %59, %56
  %67 = phi i1 [ false, %56 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = call i32 @get_unaligned_le16(i8* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = call i32 @get_unaligned_le16(i8* %73)
  store i32 %74, i32* %10, align 4
  br label %96

75:                                               ; preds = %52
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %78, %75
  %86 = phi i1 [ false, %75 ], [ %84, %78 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = bitcast i8* %89 to i32*
  %91 = call i32 @le16_to_cpup(i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  %94 = bitcast i8* %93 to i32*
  %95 = call i32 @le16_to_cpup(i32* %94)
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %85, %66
  br label %97

97:                                               ; preds = %96, %43
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = load i32, i32* @ABS_X, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @input_report_abs(%struct.input_dev* %101, i32 %102, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %106 = load i32, i32* @ABS_Y, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @input_report_abs(%struct.input_dev* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %97
  %110 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %111 = load i32, i32* @BTN_TOUCH, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @input_report_key(%struct.input_dev* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %116 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  store i32 1, i32* %3, align 4
  br label %119

119:                                              ; preds = %109, %28
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
