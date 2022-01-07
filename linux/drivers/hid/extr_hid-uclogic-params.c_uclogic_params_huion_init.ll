; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_huion_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_huion_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_params = type { i32, i32, i32, i32 }
%struct.hid_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@uclogic_params_huion_init.transition_ver = internal constant [18 x i8] c"HUION_T153_160607\00", align 16
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed retrieving Huion firmware version: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"transition firmware detected, not probing pen v2 parameters\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed probing pen v2 parameters: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"pen v2 parameters found\0A\00", align 1
@uclogic_rdesc_buttonpad_v2_arr = common dso_local global i32 0, align 4
@uclogic_rdesc_buttonpad_v2_size = common dso_local global i32 0, align 4
@UCLOGIC_RDESC_BUTTONPAD_V2_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"failed creating v2 buttonpad parameters: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"pen v2 parameters not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"failed probing pen v1 parameters: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"pen v1 parameters found\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"v1 buttonpad probing failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"buttonpad v1 parameters%s found\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"pen v1 parameters not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uclogic_params*, %struct.hid_device*)* @uclogic_params_huion_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_params_huion_init(%struct.uclogic_params* %0, %struct.hid_device* %1) #0 {
  %3 = alloca %struct.uclogic_params*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uclogic_params, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.uclogic_params* %0, %struct.uclogic_params** %3, align 8
  store %struct.hid_device* %1, %struct.hid_device** %4, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.usb_interface* @to_usb_interface(i32 %18)
  store %struct.usb_interface* %19, %struct.usb_interface** %7, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = bitcast %struct.uclogic_params* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 16, i1 false)
  store i8* null, i8** %11, align 8
  store i64 19, i64* %12, align 8
  %27 = load %struct.uclogic_params*, %struct.uclogic_params** %3, align 8
  %28 = icmp eq %struct.uclogic_params* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = icmp eq %struct.hid_device* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %152

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @uclogic_params_init_with_pen_unused(%struct.uclogic_params* %10)
  br label %148

40:                                               ; preds = %35
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i64 19, i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %152

48:                                               ; preds = %40
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @usb_string(%struct.usb_device* %49, i32 201, i8* %50, i64 19)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EPIPE, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  store i8 0, i8* %57, align 1
  br label %66

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @hid_err(%struct.hid_device* %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %152

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @uclogic_params_huion_init.transition_ver, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %72 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %71, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %106

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %10, i32 0, i32 2
  %75 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %76 = call i32 @uclogic_params_pen_init_v2(i32* %74, i32* %9, %struct.hid_device* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @hid_err(%struct.hid_device* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %152

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %88 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %89 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %10, i32 0, i32 1
  %90 = load i32, i32* @uclogic_rdesc_buttonpad_v2_arr, align 4
  %91 = load i32, i32* @uclogic_rdesc_buttonpad_v2_size, align 4
  %92 = load i32, i32* @UCLOGIC_RDESC_BUTTONPAD_V2_ID, align 4
  %93 = call i32 @uclogic_params_frame_init_with_desc(i32* %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @hid_err(%struct.hid_device* %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %152

100:                                              ; preds = %86
  %101 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %10, i32 0, i32 0
  store i32 32, i32* %101, align 4
  br label %148

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %105 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %70
  %107 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %10, i32 0, i32 2
  %108 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %109 = call i32 @uclogic_params_pen_init_v1(i32* %107, i32* %9, %struct.hid_device* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @hid_err(%struct.hid_device* %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  br label %152

116:                                              ; preds = %106
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %116
  %120 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %121 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %122 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %10, i32 0, i32 1
  %123 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %124 = call i32 @uclogic_params_frame_init_v1_buttonpad(i32* %122, i32* %9, %struct.hid_device* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @hid_err(%struct.hid_device* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %152

131:                                              ; preds = %119
  %132 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %137 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %10, i32 0, i32 0
  store i32 32, i32* %141, align 4
  br label %142

142:                                              ; preds = %140, %131
  br label %148

143:                                              ; preds = %116
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %146 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %147 = call i32 @uclogic_params_init_invalid(%struct.uclogic_params* %10)
  br label %148

148:                                              ; preds = %144, %142, %100, %38
  %149 = load %struct.uclogic_params*, %struct.uclogic_params** %3, align 8
  %150 = call i32 @memcpy(%struct.uclogic_params* %149, %struct.uclogic_params* %10, i32 16)
  %151 = call i32 @memset(%struct.uclogic_params* %10, i32 0, i32 16)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %127, %112, %96, %79, %61, %45, %32
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 @kfree(i8* %153)
  %155 = call i32 @uclogic_params_cleanup(%struct.uclogic_params* %10)
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @uclogic_params_init_with_pen_unused(%struct.uclogic_params*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i64) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, ...) #1

declare dso_local i32 @uclogic_params_pen_init_v2(i32*, i32*, %struct.hid_device*) #1

declare dso_local i32 @uclogic_params_frame_init_with_desc(i32*, i32, i32, i32) #1

declare dso_local i32 @uclogic_params_pen_init_v1(i32*, i32*, %struct.hid_device*) #1

declare dso_local i32 @uclogic_params_frame_init_v1_buttonpad(i32*, i32*, %struct.hid_device*) #1

declare dso_local i32 @uclogic_params_init_invalid(%struct.uclogic_params*) #1

declare dso_local i32 @memcpy(%struct.uclogic_params*, %struct.uclogic_params*, i32) #1

declare dso_local i32 @memset(%struct.uclogic_params*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @uclogic_params_cleanup(%struct.uclogic_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
