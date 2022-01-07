; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_misc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_misc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm12u320_device = type { i8**, i32 }

@cmd_misc = common dso_local global i32 0, align 4
@CMD_SIZE = common dso_local global i32 0, align 4
@MISC_SND_EPT = common dso_local global i32 0, align 4
@CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Misc. req. error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MISC_RCV_EPT = common dso_local global i32 0, align 4
@MISC_VALUE_SIZE = common dso_local global i32 0, align 4
@DATA_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Misc. value error %d\0A\00", align 1
@READ_STATUS_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Misc. status error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gm12u320_device*, i8*, i8*, i8*, i8*, i8*, i8*)* @gm12u320_misc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm12u320_misc_request(%struct.gm12u320_device* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gm12u320_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gm12u320_device* %0, %struct.gm12u320_device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %19 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* @CMD_SIZE, align 4
  %22 = call i32 @memcpy(i8** %20, i32* @cmd_misc, i32 %21)
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %25 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 20
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %30 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 21
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %35 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 22
  store i8* %33, i8** %37, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %40 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 23
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %45 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 24
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %50 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 25
  store i8* %48, i8** %52, align 8
  %53 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %54 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %57 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MISC_SND_EPT, align 4
  %60 = call i32 @usb_sndbulkpipe(i32 %58, i32 %59)
  %61 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %62 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* @CMD_SIZE, align 4
  %65 = load i32, i32* @CMD_TIMEOUT, align 4
  %66 = call i32 @usb_bulk_msg(i32 %55, i32 %60, i8** %63, i32 %64, i32* %17, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %7
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @CMD_SIZE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %7
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @GM12U320_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %131

78:                                               ; preds = %69
  %79 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %80 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %83 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MISC_RCV_EPT, align 4
  %86 = call i32 @usb_rcvbulkpipe(i32 %84, i32 %85)
  %87 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %88 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* @MISC_VALUE_SIZE, align 4
  %91 = load i32, i32* @DATA_TIMEOUT, align 4
  %92 = call i32 @usb_bulk_msg(i32 %81, i32 %86, i8** %89, i32 %90, i32* %17, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %78
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @MISC_VALUE_SIZE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95, %78
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @GM12U320_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %131

104:                                              ; preds = %95
  %105 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %106 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %109 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MISC_RCV_EPT, align 4
  %112 = call i32 @usb_rcvbulkpipe(i32 %110, i32 %111)
  %113 = load %struct.gm12u320_device*, %struct.gm12u320_device** %9, align 8
  %114 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* @READ_STATUS_SIZE, align 4
  %117 = load i32, i32* @CMD_TIMEOUT, align 4
  %118 = call i32 @usb_bulk_msg(i32 %107, i32 %112, i8** %115, i32 %116, i32* %17, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @READ_STATUS_SIZE, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121, %104
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @GM12U320_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %131

130:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %125, %99, %73
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8**, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @GM12U320_ERR(i8*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
