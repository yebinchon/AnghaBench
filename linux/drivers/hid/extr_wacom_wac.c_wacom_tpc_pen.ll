; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_tpc_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_tpc_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_tpc_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_tpc_pen(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 3
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 12
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %38 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %1
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %44 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %48 = call i32 @delay_pen_events(%struct.wacom_wac* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %112, label %50

50:                                               ; preds = %41
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = load i32, i32* @BTN_STYLUS, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 2
  %58 = call i32 @input_report_key(%struct.input_dev* %51, i32 %52, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %60 = load i32, i32* @BTN_STYLUS2, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 16
  %66 = call i32 @input_report_key(%struct.input_dev* %59, i32 %60, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = load i32, i32* @ABS_X, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = bitcast i8* %70 to i32*
  %72 = call zeroext i8 @le16_to_cpup(i32* %71)
  %73 = call i32 @input_report_abs(%struct.input_dev* %67, i32 %68, i8 zeroext %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = load i32, i32* @ABS_Y, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = bitcast i8* %77 to i32*
  %79 = call zeroext i8 @le16_to_cpup(i32* %78)
  %80 = call i32 @input_report_abs(%struct.input_dev* %74, i32 %75, i8 zeroext %79)
  %81 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %82 = load i32, i32* @ABS_PRESSURE, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 7
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 7
  %88 = shl i32 %87, 8
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 6
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %88, %92
  %94 = trunc i32 %93 to i8
  %95 = call i32 @input_report_abs(%struct.input_dev* %81, i32 %82, i8 zeroext %94)
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = load i32, i32* @BTN_TOUCH, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 5
  %103 = call i32 @input_report_key(%struct.input_dev* %96, i32 %97, i32 %102)
  %104 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %105 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %106 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @input_report_key(%struct.input_dev* %104, i32 %109, i32 %110)
  store i32 1, i32* %2, align 4
  br label %113

112:                                              ; preds = %41
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %50
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @delay_pen_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
