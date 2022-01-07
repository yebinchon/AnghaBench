; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c___hidinput_change_resolution_multipliers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c___hidinput_change_resolution_multipliers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32*, %struct.hid_usage*, i32, i32 }
%struct.hid_usage = type { i64 }

@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@HID_GD_RESOLUTION_MULTIPLIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32)* @__hidinput_change_resolution_multipliers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hidinput_change_resolution_multipliers(%struct.hid_device* %0, %struct.hid_report* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_report* %1, %struct.hid_report** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %14 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %128

18:                                               ; preds = %3
  %19 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %25 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %26 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %27 = call i32 @hid_hw_request(%struct.hid_device* %24, %struct.hid_report* %25, i32 %26)
  %28 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %29 = call i32 @hid_hw_wait(%struct.hid_device* %28)
  br label %30

30:                                               ; preds = %23, %18
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %123, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %34 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %126

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %42 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  br label %60

50:                                               ; preds = %37
  %51 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %52 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  br label %60

60:                                               ; preds = %50, %40
  %61 = phi i32 [ %49, %40 ], [ %59, %50 ]
  store i32 %61, i32* %12, align 4
  %62 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %63 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %123

73:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %119, %73
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %77 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %75, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %74
  %87 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %88 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %89, i64 %91
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load %struct.hid_usage*, %struct.hid_usage** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %95, i64 %97
  store %struct.hid_usage* %98, %struct.hid_usage** %8, align 8
  %99 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %100 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HID_GD_RESOLUTION_MULTIPLIER, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %119

105:                                              ; preds = %86
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %108 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %106, i32* %118, align 4
  store i32 1, i32* %9, align 4
  br label %119

119:                                              ; preds = %105, %104
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %74

122:                                              ; preds = %74
  br label %123

123:                                              ; preds = %122, %72
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %31

126:                                              ; preds = %31
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %17
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.hid_report*, i32) #1

declare dso_local i32 @hid_hw_wait(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
