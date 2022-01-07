; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.navpoint = type { i32*, i32, i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"spurious packet: data=0x%02x,0x%02x,...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.navpoint*)* @navpoint_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @navpoint_packet(%struct.navpoint* %0) #0 {
  %2 = alloca %struct.navpoint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.navpoint* %0, %struct.navpoint** %2, align 8
  %8 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %9 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %108 [
    i32 255, label %13
    i32 0, label %13
    i32 14, label %14
    i32 25, label %98
  ]

13:                                               ; preds = %1, %1
  br label %123

14:                                               ; preds = %1
  %15 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %16 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %22 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 2
  store i32 %26, i32* %4, align 4
  %27 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %28 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 31
  %33 = shl i32 %32, 8
  %34 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %35 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %33, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %41 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 31
  %46 = shl i32 %45, 8
  %47 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %48 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %54 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %59 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BTN_TOUCH, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @input_report_key(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %65 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ABS_X, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @input_report_abs(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %71 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ABS_Y, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @input_report_abs(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %77 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ABS_PRESSURE, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @input_report_abs(i32 %78, i32 %79, i32 %80)
  %82 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %83 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @input_report_key(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %89 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BTN_LEFT, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @input_report_key(i32 %90, i32 %91, i32 %92)
  %94 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %95 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @input_sync(i32 %96)
  br label %123

98:                                               ; preds = %1
  %99 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %100 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 240
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %123

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %1, %107
  %109 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %110 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %113 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %118 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_warn(i32 %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %121)
  br label %123

123:                                              ; preds = %108, %106, %14, %13
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
