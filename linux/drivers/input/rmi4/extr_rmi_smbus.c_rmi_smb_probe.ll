; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_smbus.c_rmi_smb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_smbus.c_rmi_smb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.rmi_device_platform_data = type { i32 }
%struct.rmi_smb_xport = type { %struct.TYPE_2__, i32, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i8*, i32*, %struct.rmi_device_platform_data, i32* }

@.str = private unnamed_addr constant [28 x i8] c"no platform data, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_HOST_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"adapter does not support required functionality\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"no IRQ provided, giving up\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@RMI_DEBUG_XPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Probing %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@rmi_smb_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Smbus version is %d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unrecognized SMB version %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"registering SMbus-connected sensor\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to register sensor: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rmi_smb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_smb_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rmi_device_platform_data*, align 8
  %7 = alloca %struct.rmi_smb_xport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.rmi_device_platform_data* @dev_get_platdata(i32* %11)
  store %struct.rmi_device_platform_data* %12, %struct.rmi_device_platform_data** %6, align 8
  %13 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %14 = icmp ne %struct.rmi_device_platform_data* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %155

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %26 = load i32, i32* @I2C_FUNC_SMBUS_HOST_NOTIFY, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @i2c_check_functionality(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %155

36:                                               ; preds = %21
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  br label %57

53:                                               ; preds = %41
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i64 [ %52, %49 ], [ %56, %53 ]
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %155

60:                                               ; preds = %36
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.rmi_smb_xport* @devm_kzalloc(i32* %62, i32 48, i32 %63)
  store %struct.rmi_smb_xport* %64, %struct.rmi_smb_xport** %7, align 8
  %65 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %66 = icmp ne %struct.rmi_smb_xport* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %155

70:                                               ; preds = %60
  %71 = load i32, i32* @RMI_DEBUG_XPORT, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = call i32 @dev_name(i32* %75)
  %77 = call i32 @rmi_dbg(i32 %71, i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %80 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %79, i32 0, i32 3
  store %struct.i2c_client* %78, %struct.i2c_client** %80, align 8
  %81 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %82 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %81, i32 0, i32 2
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %85 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %84, i32 0, i32 1
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 1
  %89 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %90 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i32* %88, i32** %91, align 8
  %92 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %93 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %96 = bitcast %struct.rmi_device_platform_data* %94 to i8*
  %97 = bitcast %struct.rmi_device_platform_data* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %103 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %107 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %108, align 8
  %109 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %110 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32* @rmi_smb_ops, i32** %111, align 8
  %112 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %113 = call i32 @rmi_smb_get_version(%struct.rmi_smb_xport* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %70
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %155

118:                                              ; preds = %70
  %119 = load i32, i32* @RMI_DEBUG_XPORT, align 4
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 1
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @rmi_dbg(i32 %119, i32* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 2
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 3
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 1
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %155

136:                                              ; preds = %126, %118
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %139 = call i32 @i2c_set_clientdata(%struct.i2c_client* %137, %struct.rmi_smb_xport* %138)
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 1
  %142 = call i32 @dev_info(i32* %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %143 = load %struct.rmi_smb_xport*, %struct.rmi_smb_xport** %7, align 8
  %144 = getelementptr inbounds %struct.rmi_smb_xport, %struct.rmi_smb_xport* %143, i32 0, i32 0
  %145 = call i32 @rmi_register_transport_device(%struct.TYPE_2__* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 1
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %155

154:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %148, %129, %116, %67, %57, %30, %15
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.rmi_device_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.rmi_smb_xport* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @rmi_dbg(i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rmi_smb_get_version(%struct.rmi_smb_xport*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rmi_smb_xport*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @rmi_register_transport_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
