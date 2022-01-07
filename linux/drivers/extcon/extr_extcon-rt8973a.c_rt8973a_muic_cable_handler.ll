; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_cable_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_cable_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt8973a_muic_info = type { i32, i32 }

@rt8973a_muic_cable_handler.prev_cable_type = internal global i32 0, align 4
@DM_DP_SWITCH_UART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"happen Over %s issue. Need to disconnect all cables\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Voltage\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Temperature\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot handle this event (event:%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@DM_DP_SWITCH_USB = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@DM_DP_SWITCH_OPEN = common dso_local global i32 0, align 4
@EXTCON_JIG = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Unknown accessory type (adc:0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Audio device/button type (adc:0x%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Cannot handle this cable_type (adc:0x%x)\0A\00", align 1
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt8973a_muic_info*, i32)* @rt8973a_muic_cable_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt8973a_muic_cable_handler(%struct.rt8973a_muic_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt8973a_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt8973a_muic_info* %0, %struct.rt8973a_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @DM_DP_SWITCH_UART, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %28 [
    i32 164, label %13
    i32 163, label %16
    i32 161, label %18
    i32 162, label %18
  ]

13:                                               ; preds = %2
  %14 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %15 = call i32 @rt8973a_muic_get_cable_type(%struct.rt8973a_muic_info* %14)
  store i32 %15, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* @rt8973a_muic_cable_handler.prev_cable_type, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %36

18:                                               ; preds = %2, %2
  %19 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %20 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 161
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (i32, i8*, ...) @dev_warn(i32 %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @rt8973a_muic_cable_handler.prev_cable_type, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %30 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %103

36:                                               ; preds = %18, %16, %13
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* @rt8973a_muic_cable_handler.prev_cable_type, align 4
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %68 [
    i32 141, label %39
    i32 134, label %42
    i32 145, label %45
    i32 143, label %45
    i32 146, label %48
    i32 144, label %48
    i32 128, label %51
    i32 142, label %54
    i32 133, label %55
    i32 132, label %55
    i32 131, label %55
    i32 130, label %55
    i32 129, label %55
    i32 148, label %61
    i32 157, label %61
    i32 156, label %61
    i32 155, label %61
    i32 154, label %61
    i32 153, label %61
    i32 152, label %61
    i32 151, label %61
    i32 150, label %61
    i32 149, label %61
    i32 160, label %61
    i32 159, label %61
    i32 158, label %61
    i32 147, label %61
    i32 139, label %67
    i32 138, label %67
    i32 137, label %67
    i32 136, label %67
    i32 135, label %67
    i32 140, label %67
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* @EXTCON_USB_HOST, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @DM_DP_SWITCH_USB, align 4
  store i32 %41, i32* %6, align 4
  br label %76

42:                                               ; preds = %36
  %43 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @DM_DP_SWITCH_OPEN, align 4
  store i32 %44, i32* %6, align 4
  br label %76

45:                                               ; preds = %36, %36
  %46 = load i32, i32* @EXTCON_JIG, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @DM_DP_SWITCH_USB, align 4
  store i32 %47, i32* %6, align 4
  br label %76

48:                                               ; preds = %36, %36
  %49 = load i32, i32* @EXTCON_JIG, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @DM_DP_SWITCH_UART, align 4
  store i32 %50, i32* %6, align 4
  br label %76

51:                                               ; preds = %36
  %52 = load i32, i32* @EXTCON_USB, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @DM_DP_SWITCH_USB, align 4
  store i32 %53, i32* %6, align 4
  br label %76

54:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %103

55:                                               ; preds = %36, %36, %36, %36, %36
  %56 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %57 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @dev_warn(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  store i32 0, i32* %3, align 4
  br label %103

61:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36
  %62 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %63 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i32, i8*, ...) @dev_warn(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  store i32 0, i32* %3, align 4
  br label %103

67:                                               ; preds = %36, %36, %36, %36, %36, %36
  store i32 0, i32* %3, align 4
  br label %103

68:                                               ; preds = %36
  %69 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %70 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %51, %48, %45, %42, %39
  %77 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @rt8973a_muic_set_path(%struct.rt8973a_muic_info* %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %103

85:                                               ; preds = %76
  %86 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %87 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @extcon_set_state_sync(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @EXTCON_USB, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %4, align 8
  %97 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @extcon_set_state_sync(i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %85
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %83, %68, %67, %61, %55, %54, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @rt8973a_muic_get_cable_type(%struct.rt8973a_muic_info*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rt8973a_muic_set_path(%struct.rt8973a_muic_info*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
