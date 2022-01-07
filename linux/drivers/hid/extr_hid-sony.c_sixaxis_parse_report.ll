; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32, i32, i32, i32, i32, i32 }

@sixaxis_parse_report.sixaxis_battery_capacity = internal constant [6 x i32] [i32 0, i32 1, i32 25, i32 50, i32 75, i32 100], align 16
@MOTION_CONTROLLER = common dso_local global i32 0, align 4
@SIXAXIS_CONTROLLER = common dso_local global i32 0, align 4
@SIXAXIS_INPUT_REPORT_ACC_X_OFFSET = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sony_sc*, i32*, i32)* @sixaxis_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sixaxis_parse_report(%struct.sony_sc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sony_sc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sony_sc* %0, %struct.sony_sc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %15 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MOTION_CONTROLLER, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 12, i32 30
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 238
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  store i32 100, i32* %10, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %58

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 5
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ 5, %51 ]
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* @sixaxis_parse_report.sixaxis_battery_capacity, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %52, %28
  %59 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %60 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %59, i32 0, i32 5
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %65 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %68 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %71 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %73 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %72, i32 0, i32 5
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %77 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SIXAXIS_CONTROLLER, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %150

82:                                               ; preds = %58
  %83 = load i32, i32* @SIXAXIS_INPUT_REPORT_ACC_X_OFFSET, align 4
  store i32 %83, i32* %8, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %90, %95
  %97 = sub nsw i32 %96, 511
  store i32 %97, i32* %13, align 4
  %98 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %99 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ABS_X, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @input_report_abs(i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 5
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %110, %116
  %118 = sub nsw i32 511, %117
  store i32 %118, i32* %13, align 4
  %119 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %120 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ABS_Y, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @input_report_abs(i32 %121, i32 %122, i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 3
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 8
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %131, %137
  %139 = sub nsw i32 511, %138
  store i32 %139, i32* %13, align 4
  %140 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %141 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ABS_Z, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @input_report_abs(i32 %142, i32 %143, i32 %144)
  %146 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %147 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @input_sync(i32 %148)
  br label %150

150:                                              ; preds = %82, %58
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
