; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_hid_description_header_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_hid_description_header_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i8*, i8* }

@PIP_HID_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_HID_BL_REPORT_ID = common dso_local global i64 0, align 8
@CYAPA_GEN5 = common dso_local global i8* null, align 8
@CYAPA_STATE_GEN5_BL = common dso_local global i8* null, align 8
@CYAPA_STATE_GEN5_APP = common dso_local global i8* null, align 8
@GEN5_BL_MAX_OUTPUT_LENGTH = common dso_local global i32 0, align 4
@PIP_HID_APP_REPORT_ID = common dso_local global i64 0, align 8
@GEN5_APP_MAX_OUTPUT_LENGTH = common dso_local global i32 0, align 4
@CYAPA_STATE_NO_DEVICE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64*)* @gen5_hid_description_header_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen5_hid_description_header_parse(%struct.cyapa* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %11 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %12 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %13 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %10, i64* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  br label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  store i32 %26, i32* %3, align 4
  br label %106

27:                                               ; preds = %2
  %28 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %29 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %28
  %30 = call i32 @get_unaligned_le16(i64* %29)
  store i32 %30, i32* %6, align 4
  %31 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 16
  %32 = call i32 @get_unaligned_le16(i64* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %27
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PIP_HID_BL_REPORT_ID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i8*, i8** @CYAPA_GEN5, align 8
  %45 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %46 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @CYAPA_STATE_GEN5_BL, align 8
  %48 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %49 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %57

50:                                               ; preds = %36
  %51 = load i8*, i8** @CYAPA_GEN5, align 8
  %52 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %53 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @CYAPA_STATE_GEN5_APP, align 8
  %55 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %56 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %50, %43
  br label %105

58:                                               ; preds = %27
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 2
  %64 = load i64, i64* %63, align 16
  %65 = load i64, i64* @PIP_HID_BL_REPORT_ID, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @GEN5_BL_MAX_OUTPUT_LENGTH, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i8*, i8** @CYAPA_GEN5, align 8
  %73 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %74 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @CYAPA_STATE_GEN5_BL, align 8
  %76 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %77 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %104

78:                                               ; preds = %67, %62, %58
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %84 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PIP_HID_APP_REPORT_ID, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @GEN5_APP_MAX_OUTPUT_LENGTH, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8*, i8** @CYAPA_GEN5, align 8
  %94 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %95 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @CYAPA_STATE_GEN5_APP, align 8
  %97 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %98 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %103

99:                                               ; preds = %88, %82, %78
  %100 = load i8*, i8** @CYAPA_STATE_NO_DEVICE, align 8
  %101 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %102 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %99, %92
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %57
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %25
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @cyapa_i2c_pip_read(%struct.cyapa*, i64*, i32) #1

declare dso_local i32 @get_unaligned_le16(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
