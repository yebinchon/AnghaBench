; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hid_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.rmi_data = type { i32, i64, i64, %struct.TYPE_6__, i32, i32, i32, i8*, i8*, %struct.hid_device*, i32 }
%struct.TYPE_6__ = type { i8*, i32*, %struct.TYPE_7__, i32 }
%struct.hid_report = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rmi_reset_work = common dso_local global i32 0, align 4
@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4
@HID_QUIRK_NO_INPUT_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@RMI_SET_RMI_MODE_REPORT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"device does not have set mode feature report\0A\00", align 1
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@RMI_ATTN_REPORT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"device does not have attention input report\0A\00", align 1
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@RMI_WRITE_REPORT_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"device does not have rmi write output report\0A\00", align 1
@RMI_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to allocate buffer for HID reports\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to allocate IRQ domain\0A\00", align 1
@RMI_DEVICE_HAS_PHYS_BUTTONS = common dso_local global i32 0, align 4
@rmi_hid_pdata = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@hid_rmi_ops = common dso_local global i32 0, align 4
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @rmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.rmi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.hid_report*, align 8
  %10 = alloca %struct.hid_report*, align 8
  %11 = alloca %struct.hid_report*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  store %struct.rmi_data* null, %struct.rmi_data** %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @devm_kzalloc(%struct.TYPE_8__* %13, i64 104, i32 %14)
  %16 = bitcast i8* %15 to %struct.rmi_data*
  store %struct.rmi_data* %16, %struct.rmi_data** %6, align 8
  %17 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %18 = icmp ne %struct.rmi_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %196

22:                                               ; preds = %2
  %23 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %24 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %23, i32 0, i32 10
  %25 = load i32, i32* @rmi_reset_work, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %28 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %29 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %28, i32 0, i32 9
  store %struct.hid_device* %27, %struct.hid_device** %29, align 8
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %32 = call i32 @hid_set_drvdata(%struct.hid_device* %30, %struct.rmi_data* %31)
  %33 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @HID_QUIRK_NO_INPUT_SYNC, align 4
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = call i32 @hid_parse(%struct.hid_device* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %22
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = call i32 @hid_err(%struct.hid_device* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %196

51:                                               ; preds = %22
  %52 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %61 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %64 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %65 = load i32, i32* @RMI_SET_RMI_MODE_REPORT_ID, align 4
  %66 = call i32 @rmi_check_valid_report_id(%struct.hid_device* %63, i32 %64, i32 %65, %struct.hid_report** %11)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = call i32 @hid_dbg(%struct.hid_device* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %185

71:                                               ; preds = %62
  %72 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %73 = load i32, i32* @HID_INPUT_REPORT, align 4
  %74 = load i32, i32* @RMI_ATTN_REPORT_ID, align 4
  %75 = call i32 @rmi_check_valid_report_id(%struct.hid_device* %72, i32 %73, i32 %74, %struct.hid_report** %9)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %79 = call i32 @hid_dbg(%struct.hid_device* %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %185

80:                                               ; preds = %71
  %81 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %82 = call i8* @hid_report_len(%struct.hid_report* %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %85 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %87 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %88 = load i32, i32* @RMI_WRITE_REPORT_ID, align 4
  %89 = call i32 @rmi_check_valid_report_id(%struct.hid_device* %86, i32 %87, i32 %88, %struct.hid_report** %10)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %80
  %92 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %93 = call i32 @hid_dbg(%struct.hid_device* %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %185

94:                                               ; preds = %80
  %95 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %96 = call i8* @hid_report_len(%struct.hid_report* %95)
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %99 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @RMI_DEVICE, align 4
  %101 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %102 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %106 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %109 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %107, %110
  store i64 %111, i64* %8, align 8
  %112 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %113 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %112, i32 0, i32 0
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @devm_kzalloc(%struct.TYPE_8__* %113, i64 %114, i32 %115)
  %117 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %118 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %120 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %94
  %124 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %125 = call i32 @hid_err(%struct.hid_device* %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %196

128:                                              ; preds = %94
  %129 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %130 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %129, i32 0, i32 7
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %133 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr i8, i8* %131, i64 %134
  %136 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %137 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %136, i32 0, i32 8
  store i8* %135, i8** %137, align 8
  %138 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %139 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %138, i32 0, i32 6
  %140 = call i32 @init_waitqueue_head(i32* %139)
  %141 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %142 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %141, i32 0, i32 5
  %143 = call i32 @mutex_init(i32* %142)
  %144 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %145 = call i32 @rmi_setup_irq_domain(%struct.hid_device* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %128
  %149 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %150 = call i32 @hid_err(%struct.hid_device* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %3, align 4
  br label %196

152:                                              ; preds = %128
  %153 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %154 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @RMI_DEVICE_HAS_PHYS_BUTTONS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rmi_hid_pdata, i32 0, i32 1, i32 0), align 4
  br label %160

160:                                              ; preds = %159, %152
  %161 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %162 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %166 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 8
  %168 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %169 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = bitcast %struct.TYPE_7__* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %171, i8* align 4 bitcast (%struct.TYPE_7__* @rmi_hid_pdata to i8*), i64 8, i1 false)
  %172 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %173 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %176 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 8
  %179 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %180 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %181, align 8
  %182 = load %struct.rmi_data*, %struct.rmi_data** %6, align 8
  %183 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  store i32* @hid_rmi_ops, i32** %184, align 8
  br label %185

185:                                              ; preds = %160, %91, %77, %68
  %186 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %187 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %188 = call i32 @hid_hw_start(%struct.hid_device* %186, i32 %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %193 = call i32 @hid_err(%struct.hid_device* %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %3, align 4
  br label %196

195:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %191, %148, %123, %47, %19
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.rmi_data*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @rmi_check_valid_report_id(%struct.hid_device*, i32, i32, %struct.hid_report**) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*) #1

declare dso_local i8* @hid_report_len(%struct.hid_report*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rmi_setup_irq_domain(%struct.hid_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
