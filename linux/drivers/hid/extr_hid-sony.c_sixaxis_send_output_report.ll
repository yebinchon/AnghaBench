; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_send_output_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_send_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sixaxis_output_report_01 = type { i32 }
%struct.sony_sc = type { i32*, i32, i32, i64*, i64*, i32, i64, i64 }
%struct.sixaxis_output_report = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@sixaxis_send_output_report.default_report = internal constant %union.sixaxis_output_report_01 { i32 1 }, align 4
@SHANWAN_GAMEPAD = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sony_sc*)* @sixaxis_send_output_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sixaxis_send_output_report(%struct.sony_sc* %0) #0 {
  %2 = alloca %struct.sony_sc*, align 8
  %3 = alloca %struct.sixaxis_output_report*, align 8
  %4 = alloca i32, align 4
  store %struct.sony_sc* %0, %struct.sony_sc** %2, align 8
  %5 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %6 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.sixaxis_output_report*
  store %struct.sixaxis_output_report* %8, %struct.sixaxis_output_report** %3, align 8
  %9 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %10 = call i32 @memcpy(%struct.sixaxis_output_report* %9, %union.sixaxis_output_report_01* @sixaxis_send_output_report.default_report, i32 24)
  %11 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %12 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 1
  %17 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %18 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %22 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 2
  %27 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %28 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %32 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 3
  %37 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %38 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %42 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %48 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %52 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 30
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %1
  %57 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %58 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, 32
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %1
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %115, %61
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %118

65:                                               ; preds = %62
  %66 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %67 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %76 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %74, %65
  %84 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %85 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %84, i32 0, i32 4
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %92 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 3, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 %90, i64* %98, align 8
  %99 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %100 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %99, i32 0, i32 3
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %107 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sub nsw i32 3, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i64 %105, i64* %113, align 8
  br label %114

114:                                              ; preds = %83, %74
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %62

118:                                              ; preds = %62
  %119 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %120 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SHANWAN_GAMEPAD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %127 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %130 = bitcast %struct.sixaxis_output_report* %129 to i32*
  %131 = call i32 @hid_hw_output_report(i32 %128, i32* %130, i32 24)
  br label %144

132:                                              ; preds = %118
  %133 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %134 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %137 = getelementptr inbounds %struct.sixaxis_output_report, %struct.sixaxis_output_report* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.sixaxis_output_report*, %struct.sixaxis_output_report** %3, align 8
  %140 = bitcast %struct.sixaxis_output_report* %139 to i32*
  %141 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %142 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %143 = call i32 @hid_hw_raw_request(i32 %135, i32 %138, i32* %140, i32 24, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %132, %125
  ret void
}

declare dso_local i32 @memcpy(%struct.sixaxis_output_report*, %union.sixaxis_output_report_01*, i32) #1

declare dso_local i32 @hid_hw_output_report(i32, i32*, i32) #1

declare dso_local i32 @hid_hw_raw_request(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
