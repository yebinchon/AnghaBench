; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_dock_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_dock_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_muic_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"external connector is %s (adc:0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@MAX77693_CABLE_GROUP_VBVOLT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot detect external power supply\0A\00", align 1
@EXTCON_DOCK = common dso_local global i32 0, align 4
@EXTCON_DISP_MHL = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to detect %s dock device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX77693_CONTROL1_SW_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_muic_info*, i32, i32)* @max77693_muic_dock_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_muic_dock_handler(%struct.max77693_muic_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max77693_muic_info* %0, %struct.max77693_muic_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %13 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %78 [
    i32 128, label %22
    i32 130, label %60
    i32 129, label %62
  ]

22:                                               ; preds = %3
  %23 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %24 = load i32, i32* @MAX77693_CABLE_GROUP_VBVOLT, align 4
  %25 = call i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info* %23, i32 %24, i32* %10)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %33 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

36:                                               ; preds = %28, %22
  %37 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %38 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %39 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @max77693_muic_set_path(%struct.max77693_muic_info* %37, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %106

47:                                               ; preds = %36
  %48 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %49 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EXTCON_DOCK, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @extcon_set_state_sync(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %55 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @extcon_set_state_sync(i32 %56, i32 %57, i32 %58)
  br label %105

60:                                               ; preds = %3
  %61 = load i32, i32* @EXTCON_DOCK, align 4
  store i32 %61, i32* %11, align 4
  br label %89

62:                                               ; preds = %3
  %63 = load i32, i32* @EXTCON_DOCK, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %68 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EXTCON_USB, align 4
  %71 = call i32 @extcon_set_state_sync(i32 %69, i32 %70, i32 0)
  %72 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %73 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %76 = call i32 @extcon_set_state_sync(i32 %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %66, %62
  br label %89

78:                                               ; preds = %3
  %79 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %80 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %106

89:                                               ; preds = %77, %60
  %90 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %91 = load i32, i32* @MAX77693_CONTROL1_SW_AUDIO, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @max77693_muic_set_path(%struct.max77693_muic_info* %90, i32 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %106

98:                                               ; preds = %89
  %99 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %100 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @extcon_set_state_sync(i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %47
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %96, %78, %45, %31
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

declare dso_local i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @max77693_muic_set_path(%struct.max77693_muic_info*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
