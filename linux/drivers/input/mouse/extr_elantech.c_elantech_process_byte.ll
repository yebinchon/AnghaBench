; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, i64, %struct.elantech_data* }
%struct.elantech_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2
  %8 = load %struct.elantech_data*, %struct.elantech_data** %7, align 8
  store %struct.elantech_data* %8, %struct.elantech_data** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %17, i32* %2, align 4
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %20 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %26 = call i32 @elantech_packet_dump(%struct.psmouse* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %29 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %99 [
    i32 1, label %32
    i32 2, label %47
    i32 3, label %68
    i32 4, label %84
  ]

32:                                               ; preds = %27
  %33 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %34 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %40 = call i32 @elantech_packet_check_v1(%struct.psmouse* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %43, i32* %2, align 4
  br label %101

44:                                               ; preds = %38, %32
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = call i32 @elantech_report_absolute_v1(%struct.psmouse* %45)
  br label %99

47:                                               ; preds = %27
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = call i32 @elantech_debounce_check_v2(%struct.psmouse* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %52, i32* %2, align 4
  br label %101

53:                                               ; preds = %47
  %54 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %55 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = call i32 @elantech_packet_check_v2(%struct.psmouse* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %64, i32* %2, align 4
  br label %101

65:                                               ; preds = %59, %53
  %66 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %67 = call i32 @elantech_report_absolute_v2(%struct.psmouse* %66)
  br label %99

68:                                               ; preds = %27
  %69 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %70 = call i32 @elantech_packet_check_v3(%struct.psmouse* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %79 [
    i32 128, label %72
    i32 130, label %74
    i32 129, label %75
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %73, i32* %2, align 4
  br label %101

74:                                               ; preds = %68
  br label %83

75:                                               ; preds = %68
  %76 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @elantech_report_trackpoint(%struct.psmouse* %76, i32 %77)
  br label %83

79:                                               ; preds = %68
  %80 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @elantech_report_absolute_v3(%struct.psmouse* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %75, %74
  br label %99

84:                                               ; preds = %27
  %85 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %86 = call i32 @elantech_packet_check_v4(%struct.psmouse* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  switch i32 %87, label %94 [
    i32 128, label %88
    i32 129, label %90
  ]

88:                                               ; preds = %84
  %89 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %89, i32* %2, align 4
  br label %101

90:                                               ; preds = %84
  %91 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @elantech_report_trackpoint(%struct.psmouse* %91, i32 %92)
  br label %98

94:                                               ; preds = %84
  %95 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @elantech_report_absolute_v4(%struct.psmouse* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %27, %98, %83, %65, %44
  %100 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %88, %72, %63, %51, %42, %16
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @elantech_packet_dump(%struct.psmouse*) #1

declare dso_local i32 @elantech_packet_check_v1(%struct.psmouse*) #1

declare dso_local i32 @elantech_report_absolute_v1(%struct.psmouse*) #1

declare dso_local i32 @elantech_debounce_check_v2(%struct.psmouse*) #1

declare dso_local i32 @elantech_packet_check_v2(%struct.psmouse*) #1

declare dso_local i32 @elantech_report_absolute_v2(%struct.psmouse*) #1

declare dso_local i32 @elantech_packet_check_v3(%struct.psmouse*) #1

declare dso_local i32 @elantech_report_trackpoint(%struct.psmouse*, i32) #1

declare dso_local i32 @elantech_report_absolute_v3(%struct.psmouse*, i32) #1

declare dso_local i32 @elantech_packet_check_v4(%struct.psmouse*) #1

declare dso_local i32 @elantech_report_absolute_v4(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
