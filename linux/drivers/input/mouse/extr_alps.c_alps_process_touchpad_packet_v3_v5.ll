; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_touchpad_packet_v3_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_touchpad_packet_v3_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.alps_data* }
%struct.alps_data = type { i32, i8*, i32, i32, i32 (%struct.alps_fields*, i8*, %struct.psmouse*)*, %struct.alps_fields, %struct.input_dev* }
%struct.alps_fields = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.input_dev = type { i32 }

@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@ALPS_QUIRK_TRACKSTICK_BUTTONS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_touchpad_packet_v3_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_touchpad_packet_v3_v5(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.alps_fields*, align 8
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %3, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %15 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %14, i32 0, i32 6
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %18 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %17, i32 0, i32 5
  store %struct.alps_fields* %18, %struct.alps_fields** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %20 = call i32 @memset(%struct.alps_fields* %19, i32 0, i32 56)
  %21 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %22 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %21, i32 0, i32 4
  %23 = load i32 (%struct.alps_fields*, i8*, %struct.psmouse*)*, i32 (%struct.alps_fields*, i8*, %struct.psmouse*)** %22, align 8
  %24 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %27 = call i32 %23(%struct.alps_fields* %24, i8* %25, %struct.psmouse* %26)
  %28 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %29 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %1
  %33 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %34 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %39 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %42 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %41, i32 0, i32 4
  %43 = load i32 (%struct.alps_fields*, i8*, %struct.psmouse*)*, i32 (%struct.alps_fields*, i8*, %struct.psmouse*)** %42, align 8
  %44 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %45 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %46 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %49 = call i32 %43(%struct.alps_fields* %44, i8* %47, %struct.psmouse* %48)
  %50 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %51 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %52 = call i64 @alps_process_bitmap(%struct.alps_data* %50, %struct.alps_fields* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %37
  br label %59

56:                                               ; preds = %32
  %57 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %58 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %55
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %62 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %142

66:                                               ; preds = %60
  %67 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %68 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %73 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %78 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %80 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @memcpy(i8* %81, i8* %82, i32 8)
  br label %142

84:                                               ; preds = %71, %66
  %85 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %86 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %88 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %84
  %93 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %94 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %100 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %142

104:                                              ; preds = %98, %92, %84
  %105 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @alps_report_semi_mt_data(%struct.psmouse* %105, i32 %106)
  %108 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %109 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ALPS_DUALPOINT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %104
  %115 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %116 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %142, label %121

121:                                              ; preds = %114
  %122 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %123 = load i32, i32* @BTN_LEFT, align 4
  %124 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %125 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @input_report_key(%struct.input_dev* %122, i32 %123, i32 %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %129 = load i32, i32* @BTN_RIGHT, align 4
  %130 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %131 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @input_report_key(%struct.input_dev* %128, i32 %129, i32 %132)
  %134 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %135 = load i32, i32* @BTN_MIDDLE, align 4
  %136 = load %struct.alps_fields*, %struct.alps_fields** %6, align 8
  %137 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @input_report_key(%struct.input_dev* %134, i32 %135, i32 %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %141 = call i32 @input_sync(%struct.input_dev* %140)
  br label %142

142:                                              ; preds = %65, %76, %103, %121, %114, %104
  ret void
}

declare dso_local i32 @memset(%struct.alps_fields*, i32, i32) #1

declare dso_local i64 @alps_process_bitmap(%struct.alps_data*, %struct.alps_fields*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @alps_report_semi_mt_data(%struct.psmouse*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
