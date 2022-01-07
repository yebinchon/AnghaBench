; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ibm-cffps.c_ibm_cffps_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ibm-cffps.c_ibm_cffps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.i2c_device_id = type { i64 }
%struct.dentry = type { i32 }
%struct.ibm_cffps = type { i32, i32*, %struct.TYPE_4__, %struct.i2c_client* }
%struct.TYPE_4__ = type { i64, i32 }

@cffps1 = common dso_local global i32 0, align 4
@ibm_cffps_pdata = common dso_local global i32 0, align 4
@ibm_cffps_info = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CFFPS_DEBUGFS_NUM_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"input_history\00", align 1
@CFFPS_DEBUGFS_INPUT_HISTORY = common dso_local global i64 0, align 8
@ibm_cffps_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fru\00", align 1
@CFFPS_DEBUGFS_FRU = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"part_number\00", align 1
@CFFPS_DEBUGFS_PN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"serial_number\00", align 1
@CFFPS_DEBUGFS_SN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"ccin\00", align 1
@CFFPS_DEBUGFS_CCIN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@CFFPS_DEBUGFS_FW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ibm_cffps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibm_cffps_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.ibm_cffps*, align 8
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = call i8* @of_device_get_match_data(%struct.TYPE_5__* %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %12, align 8
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %23 = icmp ne %struct.i2c_device_id* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @cffps1, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32* @ibm_cffps_pdata, i32** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = load i32*, i32** @ibm_cffps_info, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @pmbus_do_probe(%struct.i2c_client* %36, %struct.i2c_device_id* %37, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %147

47:                                               ; preds = %32
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.ibm_cffps* @devm_kzalloc(%struct.TYPE_5__* %49, i32 40, i32 %50)
  store %struct.ibm_cffps* %51, %struct.ibm_cffps** %11, align 8
  %52 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %53 = icmp ne %struct.ibm_cffps* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %147

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %58 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %61 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %60, i32 0, i32 3
  store %struct.i2c_client* %59, %struct.i2c_client** %61, align 8
  %62 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %63 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* @HZ, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %70 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %73 = call i32 @ibm_cffps_create_led_class(%struct.ibm_cffps* %72)
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = call %struct.dentry* @pmbus_get_debugfs_dir(%struct.i2c_client* %74)
  store %struct.dentry* %75, %struct.dentry** %9, align 8
  %76 = load %struct.dentry*, %struct.dentry** %9, align 8
  %77 = icmp ne %struct.dentry* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %147

79:                                               ; preds = %55
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.dentry*, %struct.dentry** %9, align 8
  %84 = call %struct.dentry* @debugfs_create_dir(i32 %82, %struct.dentry* %83)
  store %struct.dentry* %84, %struct.dentry** %10, align 8
  %85 = load %struct.dentry*, %struct.dentry** %10, align 8
  %86 = icmp ne %struct.dentry* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %147

88:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @CFFPS_DEBUGFS_NUM_ENTRIES, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %96 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load %struct.dentry*, %struct.dentry** %10, align 8
  %106 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %107 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @CFFPS_DEBUGFS_INPUT_HISTORY, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 292, %struct.dentry* %105, i32* %110, i32* @ibm_cffps_fops)
  %112 = load %struct.dentry*, %struct.dentry** %10, align 8
  %113 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %114 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @CFFPS_DEBUGFS_FRU, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %112, i32* %117, i32* @ibm_cffps_fops)
  %119 = load %struct.dentry*, %struct.dentry** %10, align 8
  %120 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %121 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @CFFPS_DEBUGFS_PN, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %119, i32* %124, i32* @ibm_cffps_fops)
  %126 = load %struct.dentry*, %struct.dentry** %10, align 8
  %127 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %128 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @CFFPS_DEBUGFS_SN, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 292, %struct.dentry* %126, i32* %131, i32* @ibm_cffps_fops)
  %133 = load %struct.dentry*, %struct.dentry** %10, align 8
  %134 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %135 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @CFFPS_DEBUGFS_CCIN, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 292, %struct.dentry* %133, i32* %138, i32* @ibm_cffps_fops)
  %140 = load %struct.dentry*, %struct.dentry** %10, align 8
  %141 = load %struct.ibm_cffps*, %struct.ibm_cffps** %11, align 8
  %142 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @CFFPS_DEBUGFS_FW, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 292, %struct.dentry* %140, i32* %145, i32* @ibm_cffps_fops)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %104, %87, %78, %54, %45
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i8* @of_device_get_match_data(%struct.TYPE_5__*) #1

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, i32*) #1

declare dso_local %struct.ibm_cffps* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ibm_cffps_create_led_class(%struct.ibm_cffps*) #1

declare dso_local %struct.dentry* @pmbus_get_debugfs_dir(%struct.i2c_client*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
