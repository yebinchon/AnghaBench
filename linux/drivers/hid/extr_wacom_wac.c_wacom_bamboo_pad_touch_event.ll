; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bamboo_pad_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bamboo_pad_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.input_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_bamboo_pad_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_bamboo_pad_touch_event(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %13 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %12, i32 0, i32 2
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %87, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %21 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %18
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = call zeroext i8 @BIT(i32 %28)
  %30 = zext i8 %29 to i32
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %35 = call i64 @report_touch_events(%struct.wacom_wac* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi i1 [ false, %25 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @input_mt_slot(%struct.input_dev* %40, i32 %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %44 = load i32, i32* @MT_TOOL_FINGER, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @input_mt_report_slot_state(%struct.input_dev* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %87

50:                                               ; preds = %37
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 %53, 3
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  %66 = shl i32 %65, 8
  %67 = or i32 %60, %66
  store i32 %67, i32* %9, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 4
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = ashr i32 %76, 4
  %78 = or i32 %72, %77
  store i32 %78, i32* %10, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %84 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @input_report_abs(%struct.input_dev* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %50, %49
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %18

90:                                               ; preds = %18
  %91 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %92 = call i32 @input_mt_sync_frame(%struct.input_dev* %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %94 = load i32, i32* @BTN_LEFT, align 4
  %95 = load i8, i8* %7, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 64
  %98 = trunc i32 %97 to i8
  %99 = call i32 @input_report_key(%struct.input_dev* %93, i32 %94, i8 zeroext %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = load i32, i32* @BTN_RIGHT, align 4
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 128
  %105 = trunc i32 %104 to i8
  %106 = call i32 @input_report_key(%struct.input_dev* %100, i32 %101, i8 zeroext %105)
  %107 = load i8, i8* %7, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %90
  %110 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %111 = call i64 @report_touch_events(%struct.wacom_wac* %110)
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %109, %90
  %114 = phi i1 [ false, %90 ], [ %112, %109 ]
  %115 = zext i1 %114 to i32
  %116 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %117 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  ret i32 1
}

declare dso_local zeroext i8 @BIT(i32) #1

declare dso_local i64 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
