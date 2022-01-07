; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_t4_read_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_t4_read_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@T4_FEATURE_REPORT_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@T4_FEATURE_REPORT_ID = common dso_local global i32 0, align 4
@T4_CMD_REGISTER_READ = common dso_local global i32 0, align 4
@T4_CMD_REGISTER_WRITE = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read command (%d)\0A\00", align 1
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed read register (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"read register address error (%x,%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"read register size error (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"read register checksum error (%x,%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32, i32*, i32, i32)* @t4_read_write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_read_write_register(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @T4_FEATURE_REPORT_LEN, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 %16, i32 %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %161

24:                                               ; preds = %5
  %25 = load i32, i32* @T4_FEATURE_REPORT_ID, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* @T4_CMD_REGISTER_READ, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  store i32 0, i32* %35, align 4
  br label %43

36:                                               ; preds = %24
  %37 = load i32, i32* @T4_CMD_REGISTER_WRITE, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = call i32 @put_unaligned_le32(i32 %44, i32* %46)
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32 1, i32* %49, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @t4_calc_check_sum(i32* %52, i32 1, i32 8)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 9
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 8
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 10
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 11
  store i32 0, i32* %62, align 4
  %63 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %64 = load i32, i32* @T4_FEATURE_REPORT_ID, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* @T4_FEATURE_REPORT_LEN, align 4
  %67 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %68 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %69 = call i32 @hid_hw_raw_request(%struct.hid_device* %63, i32 %64, i32* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %43
  %73 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %74 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %73, i32 0, i32 0
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %157

77:                                               ; preds = %43
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %153

80:                                               ; preds = %77
  %81 = load i32, i32* @T4_FEATURE_REPORT_LEN, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32* @kzalloc(i32 %81, i32 %82)
  store i32* %83, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %157

89:                                               ; preds = %80
  %90 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %91 = load i32, i32* @T4_FEATURE_REPORT_ID, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* @T4_FEATURE_REPORT_LEN, align 4
  %94 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %95 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %96 = call i32 @hid_hw_raw_request(%struct.hid_device* %90, i32 %91, i32* %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %101 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %100, i32 0, i32 0
  %102 = load i32, i32* %12, align 4
  %103 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %154

104:                                              ; preds = %89
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %12, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %114 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %113, i32 0, i32 0
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  br label %154

120:                                              ; preds = %104
  %121 = load i32*, i32** %15, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 10
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %127 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %126, i32 0, i32 0
  %128 = load i32*, i32** %15, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %154

132:                                              ; preds = %120
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @t4_calc_check_sum(i32* %133, i32 6, i32 7)
  store i32 %134, i32* %13, align 4
  %135 = load i32*, i32** %15, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 13
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %132
  %141 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %142 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %141, i32 0, i32 0
  %143 = load i32*, i32** %15, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 13
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 %146)
  br label %154

148:                                              ; preds = %132
  %149 = load i32*, i32** %15, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 12
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %148, %77
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %153, %140, %125, %112, %99
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @kfree(i32* %155)
  br label %157

157:                                              ; preds = %154, %86, %72
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @kfree(i32* %158)
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %157, %21
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @t4_calc_check_sum(i32*, i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
