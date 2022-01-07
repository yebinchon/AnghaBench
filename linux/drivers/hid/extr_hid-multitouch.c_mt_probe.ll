; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_class = type { i64, i32 }
%struct.hid_device = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hid_device_id = type { i64, i64, i64, i64 }
%struct.mt_device = type { i32, i32, i32, i32, i32, %struct.mt_class, %struct.hid_device* }

@mt_classes = common dso_local global %struct.mt_class* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot allocate multitouch data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MT_INPUTMODE_TOUCHSCREEN = common dso_local global i32 0, align 4
@HID_ANY_ID = common dso_local global i64 0, align 8
@HID_QUIRK_NO_INPUT_SYNC = common dso_local global i32 0, align 4
@HID_QUIRK_INPUT_PER_APP = common dso_local global i32 0, align 4
@HID_GROUP_MULTITOUCH_WIN_8 = common dso_local global i64 0, align 8
@HID_QUIRK_MULTI_INPUT = common dso_local global i32 0, align 4
@mt_expired_timeout = common dso_local global i32 0, align 4
@MT_QUIRK_FIX_CONST_CONTACT_ID = common dso_local global i32 0, align 4
@HID_DG_CONTACTID = common dso_local global i32 0, align 4
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@mt_attribute_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot allocate sysfs group for %s\0A\00", align 1
@HID_LATENCY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @mt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt_device*, align 8
  %9 = alloca %struct.mt_class*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %10 = load %struct.mt_class*, %struct.mt_class** @mt_classes, align 8
  store %struct.mt_class* %10, %struct.mt_class** %9, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %36, %2
  %12 = load %struct.mt_class*, %struct.mt_class** @mt_classes, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %12, i64 %14
  %16 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %11
  %20 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mt_class*, %struct.mt_class** @mt_classes, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %23, i64 %25
  %27 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %22, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.mt_class*, %struct.mt_class** @mt_classes, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %31, i64 %33
  store %struct.mt_class* %34, %struct.mt_class** %9, align 8
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %11

39:                                               ; preds = %30, %11
  %40 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %41 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.mt_device* @devm_kzalloc(%struct.TYPE_4__* %41, i32 48, i32 %42)
  store %struct.mt_device* %43, %struct.mt_device** %8, align 8
  %44 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %45 = icmp ne %struct.mt_device* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %48 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %47, i32 0, i32 1
  %49 = call i32 @dev_err(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %157

52:                                               ; preds = %39
  %53 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %54 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %55 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %54, i32 0, i32 6
  store %struct.hid_device* %53, %struct.hid_device** %55, align 8
  %56 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %57 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %56, i32 0, i32 5
  %58 = load %struct.mt_class*, %struct.mt_class** %9, align 8
  %59 = bitcast %struct.mt_class* %57 to i8*
  %60 = bitcast %struct.mt_class* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = load i32, i32* @MT_INPUTMODE_TOUCHSCREEN, align 4
  %62 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %63 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %65 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %66 = call i32 @hid_set_drvdata(%struct.hid_device* %64, %struct.mt_device* %65)
  %67 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %68 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %67, i32 0, i32 3
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %71 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %70, i32 0, i32 2
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %74 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @HID_ANY_ID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %52
  %79 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %80 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @HID_ANY_ID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %86 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %78, %52
  %88 = load i32, i32* @HID_QUIRK_NO_INPUT_SYNC, align 4
  %89 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %90 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @HID_QUIRK_INPUT_PER_APP, align 4
  %94 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %95 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %99 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HID_GROUP_MULTITOUCH_WIN_8, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %87
  %104 = load i32, i32* @HID_QUIRK_MULTI_INPUT, align 4
  %105 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %106 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %87
  %110 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %111 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %110, i32 0, i32 1
  %112 = load i32, i32* @mt_expired_timeout, align 4
  %113 = call i32 @timer_setup(i32* %111, i32 %112, i32 0)
  %114 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %115 = call i32 @hid_parse(%struct.hid_device* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %157

120:                                              ; preds = %109
  %121 = load %struct.mt_class*, %struct.mt_class** %9, align 8
  %122 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MT_QUIRK_FIX_CONST_CONTACT_ID, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %129 = load i32, i32* @HID_DG_CONTACTID, align 4
  %130 = call i32 @mt_fix_const_fields(%struct.hid_device* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %120
  %132 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %133 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %134 = call i32 @hid_hw_start(%struct.hid_device* %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %157

139:                                              ; preds = %131
  %140 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %141 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @sysfs_create_group(i32* %142, i32* @mt_attribute_group)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %148 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %147, i32 0, i32 1
  %149 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %150 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dev_warn(%struct.TYPE_4__* %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %146, %139
  %154 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %155 = load i32, i32* @HID_LATENCY_NORMAL, align 4
  %156 = call i32 @mt_set_modes(%struct.hid_device* %154, i32 %155, i32 1, i32 1)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %137, %118, %46
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.mt_device* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.mt_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @mt_fix_const_fields(%struct.hid_device*, i32) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @mt_set_modes(%struct.hid_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
