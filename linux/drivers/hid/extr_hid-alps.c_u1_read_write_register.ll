; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_u1_read_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_u1_read_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@U1_FEATURE_REPORT_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U1_FEATURE_REPORT_ID = common dso_local global i32 0, align 4
@U1_CMD_REGISTER_READ = common dso_local global i32 0, align 4
@U1_CMD_REGISTER_WRITE = common dso_local global i32 0, align 4
@U1_FEATURE_REPORT_LEN_ALL = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read command (%d)\0A\00", align 1
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed read register (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32, i32*, i32, i32)* @u1_read_write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u1_read_write_register(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @U1_FEATURE_REPORT_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kzalloc(i32 %17, i32 %18)
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %125

25:                                               ; preds = %5
  %26 = load i32, i32* @U1_FEATURE_REPORT_ID, align 4
  %27 = load i32*, i32** %15, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @U1_CMD_REGISTER_READ, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  store i32 0, i32* %36, align 4
  br label %44

37:                                               ; preds = %25
  %38 = load i32, i32* @U1_CMD_REGISTER_WRITE, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = call i32 @put_unaligned_le32(i32 %45, i32* %47)
  %49 = load i32, i32* @U1_FEATURE_REPORT_LEN_ALL, align 4
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %63, %44
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @U1_FEATURE_REPORT_LEN, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %71 = load i32, i32* @U1_FEATURE_REPORT_ID, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* @U1_FEATURE_REPORT_LEN, align 4
  %74 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %75 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %76 = call i32 @hid_hw_raw_request(%struct.hid_device* %70, i32 %71, i32* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %81 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %80, i32 0, i32 0
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %121

84:                                               ; preds = %66
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %84
  %88 = load i32, i32* @U1_FEATURE_REPORT_LEN, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32* @kzalloc(i32 %88, i32 %89)
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %121

96:                                               ; preds = %87
  %97 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %98 = load i32, i32* @U1_FEATURE_REPORT_ID, align 4
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* @U1_FEATURE_REPORT_LEN, align 4
  %101 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %102 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %103 = call i32 @hid_hw_raw_request(%struct.hid_device* %97, i32 %98, i32* %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %108 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %107, i32 0, i32 0
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @kfree(i32* %111)
  br label %121

113:                                              ; preds = %96
  %114 = load i32*, i32** %16, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 6
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @kfree(i32* %118)
  br label %120

120:                                              ; preds = %113, %84
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %106, %93, %79
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @kfree(i32* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %22
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
