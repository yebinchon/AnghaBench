; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i8* }

@WIIMOTE_DEV_GENERIC = common dso_local global i64 0, align 8
@WIIMOTE_EXT_BALANCE_BOARD = common dso_local global i64 0, align 8
@WIIMOTE_DEV_BALANCE_BOARD = common dso_local global i64 0, align 8
@WIIMOTE_EXT_PRO_CONTROLLER = common dso_local global i64 0, align 8
@WIIMOTE_DEV_PRO_CONTROLLER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Nintendo RVL-CNT-01\00", align 1
@WIIMOTE_DEV_GEN10 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Nintendo RVL-CNT-01-TR\00", align 1
@WIIMOTE_DEV_GEN20 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Nintendo RVL-WBC-01\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Nintendo RVL-CNT-01-UC\00", align 1
@USB_VENDOR_ID_NINTENDO = common dso_local global i64 0, align 8
@USB_DEVICE_ID_NINTENDO_WIIMOTE = common dso_local global i64 0, align 8
@USB_DEVICE_ID_NINTENDO_WIIMOTE2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"cannot detect device; NAME: %s VID: %04x PID: %04x EXT: %04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"detected device: %s\0A\00", align 1
@wiimote_devtype_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i64)* @wiimote_init_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_init_set_type(%struct.wiimote_data* %0, i64 %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @WIIMOTE_DEV_GENERIC, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %11 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %16 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %21 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @WIIMOTE_EXT_BALANCE_BOARD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @WIIMOTE_DEV_BALANCE_BOARD, align 8
  store i64 %29, i64* %5, align 8
  br label %83

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @WIIMOTE_EXT_PRO_CONTROLLER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @WIIMOTE_DEV_PRO_CONTROLLER, align 8
  store i64 %35, i64* %5, align 8
  br label %83

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @WIIMOTE_DEV_GEN10, align 8
  store i64 %42, i64* %5, align 8
  br label %83

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @WIIMOTE_DEV_GEN20, align 8
  store i64 %48, i64* %5, align 8
  br label %83

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @WIIMOTE_DEV_BALANCE_BOARD, align 8
  store i64 %54, i64* %5, align 8
  br label %83

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @WIIMOTE_DEV_PRO_CONTROLLER, align 8
  store i64 %60, i64* %5, align 8
  br label %83

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @USB_VENDOR_ID_NINTENDO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @USB_DEVICE_ID_NINTENDO_WIIMOTE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @WIIMOTE_DEV_GEN10, align 8
  store i64 %73, i64* %5, align 8
  br label %83

74:                                               ; preds = %68
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @USB_DEVICE_ID_NINTENDO_WIIMOTE2, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @WIIMOTE_DEV_GEN20, align 8
  store i64 %79, i64* %5, align 8
  br label %83

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %78, %72, %59, %53, %47, %41, %34, %28
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @WIIMOTE_DEV_GENERIC, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %89 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i32 (%struct.TYPE_2__*, i8*, i8*, ...) @hid_info(%struct.TYPE_2__* %90, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %91, i64 %92, i64 %93, i64 %94)
  br label %107

96:                                               ; preds = %83
  %97 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %98 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32*, i32** @wiimote_devtype_names, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 (%struct.TYPE_2__*, i8*, i8*, ...) @hid_info(%struct.TYPE_2__* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %96, %87
  %108 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @wiimote_modules_load(%struct.wiimote_data* %108, i64 %109)
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @hid_info(%struct.TYPE_2__*, i8*, i8*, ...) #1

declare dso_local i32 @wiimote_modules_load(%struct.wiimote_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
