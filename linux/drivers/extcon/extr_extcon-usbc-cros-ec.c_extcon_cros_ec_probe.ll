; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usbc-cros-ec.c_extcon_cros_ec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usbc-cros-ec.c_extcon_cros_ec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.cros_ec_extcon_info = type { i32, i32, %struct.TYPE_3__, %struct.cros_ec_device*, i32, i32, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.cros_ec_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"google,usb-port-id\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Missing google,usb-port-id property\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed getting number of ports! ret = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"This system only supports %d ports\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@usb_type_c_cable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_PROP_USB_VBUS = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@EXTCON_PROP_USB_TYPEC_POLARITY = common dso_local global i32 0, align 4
@EXTCON_DISP_DP = common dso_local global i32 0, align 4
@EXTCON_PROP_USB_SS = common dso_local global i32 0, align 4
@EXTCON_PROP_DISP_HPD = common dso_local global i32 0, align 4
@DR_NONE = common dso_local global i32 0, align 4
@extcon_cros_ec_event = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to register notifier\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to detect initial cable state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @extcon_cros_ec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extcon_cros_ec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_extcon_info*, align 8
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.cros_ec_device* @dev_get_drvdata(i32 %14)
  store %struct.cros_ec_device* %15, %struct.cros_ec_device** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %7, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cros_ec_extcon_info* @devm_kzalloc(%struct.device* %21, i32 40, i32 %22)
  store %struct.cros_ec_extcon_info* %23, %struct.cros_ec_extcon_info** %4, align 8
  %24 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %25 = icmp ne %struct.cros_ec_extcon_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %205

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %32 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %31, i32 0, i32 6
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %34 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %35 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %34, i32 0, i32 3
  store %struct.cros_ec_device* %33, %struct.cros_ec_device** %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %2, align 4
  br label %205

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %50 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %57

51:                                               ; preds = %29
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %56 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %59 = call i32 @cros_ec_pd_get_num_ports(%struct.cros_ec_extcon_info* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %205

67:                                               ; preds = %57
  %68 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %69 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %205

79:                                               ; preds = %67
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load i32, i32* @usb_type_c_cable, align 4
  %82 = call i32 @devm_extcon_dev_allocate(%struct.device* %80, i32 %81)
  %83 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %84 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %86 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %205

95:                                               ; preds = %79
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %98 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @devm_extcon_dev_register(%struct.device* %96, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %2, align 4
  br label %205

107:                                              ; preds = %95
  %108 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %109 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @EXTCON_USB, align 4
  %112 = load i32, i32* @EXTCON_PROP_USB_VBUS, align 4
  %113 = call i32 @extcon_set_property_capability(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %115 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @EXTCON_USB_HOST, align 4
  %118 = load i32, i32* @EXTCON_PROP_USB_VBUS, align 4
  %119 = call i32 @extcon_set_property_capability(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %121 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @EXTCON_USB, align 4
  %124 = load i32, i32* @EXTCON_PROP_USB_TYPEC_POLARITY, align 4
  %125 = call i32 @extcon_set_property_capability(i32 %122, i32 %123, i32 %124)
  %126 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %127 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @EXTCON_USB_HOST, align 4
  %130 = load i32, i32* @EXTCON_PROP_USB_TYPEC_POLARITY, align 4
  %131 = call i32 @extcon_set_property_capability(i32 %128, i32 %129, i32 %130)
  %132 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %133 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @EXTCON_DISP_DP, align 4
  %136 = load i32, i32* @EXTCON_PROP_USB_TYPEC_POLARITY, align 4
  %137 = call i32 @extcon_set_property_capability(i32 %134, i32 %135, i32 %136)
  %138 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %139 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @EXTCON_USB, align 4
  %142 = load i32, i32* @EXTCON_PROP_USB_SS, align 4
  %143 = call i32 @extcon_set_property_capability(i32 %140, i32 %141, i32 %142)
  %144 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %145 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @EXTCON_USB_HOST, align 4
  %148 = load i32, i32* @EXTCON_PROP_USB_SS, align 4
  %149 = call i32 @extcon_set_property_capability(i32 %146, i32 %147, i32 %148)
  %150 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %151 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @EXTCON_DISP_DP, align 4
  %154 = load i32, i32* @EXTCON_PROP_USB_SS, align 4
  %155 = call i32 @extcon_set_property_capability(i32 %152, i32 %153, i32 %154)
  %156 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %157 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @EXTCON_DISP_DP, align 4
  %160 = load i32, i32* @EXTCON_PROP_DISP_HPD, align 4
  %161 = call i32 @extcon_set_property_capability(i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* @DR_NONE, align 4
  %163 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %164 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %166 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %169 = call i32 @platform_set_drvdata(%struct.platform_device* %167, %struct.cros_ec_extcon_info* %168)
  %170 = load i32, i32* @extcon_cros_ec_event, align 4
  %171 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %172 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %175 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %174, i32 0, i32 3
  %176 = load %struct.cros_ec_device*, %struct.cros_ec_device** %175, align 8
  %177 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %176, i32 0, i32 0
  %178 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %179 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %178, i32 0, i32 2
  %180 = call i32 @blocking_notifier_chain_register(i32* %177, %struct.TYPE_3__* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %107
  %184 = load %struct.device*, %struct.device** %6, align 8
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %205

187:                                              ; preds = %107
  %188 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %189 = call i32 @extcon_cros_ec_detect_cable(%struct.cros_ec_extcon_info* %188, i32 1)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.device*, %struct.device** %6, align 8
  %194 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %196

195:                                              ; preds = %187
  store i32 0, i32* %2, align 4
  br label %205

196:                                              ; preds = %192
  %197 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %198 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %197, i32 0, i32 3
  %199 = load %struct.cros_ec_device*, %struct.cros_ec_device** %198, align 8
  %200 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %199, i32 0, i32 0
  %201 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %202 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %201, i32 0, i32 2
  %203 = call i32 @blocking_notifier_chain_unregister(i32* %200, %struct.TYPE_3__* %202)
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %196, %195, %183, %103, %90, %73, %62, %43, %26
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.cros_ec_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_extcon_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cros_ec_pd_get_num_ports(%struct.cros_ec_extcon_info*) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i32) #1

declare dso_local i32 @extcon_set_property_capability(i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cros_ec_extcon_info*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @extcon_cros_ec_detect_cable(%struct.cros_ec_extcon_info*, i32) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
