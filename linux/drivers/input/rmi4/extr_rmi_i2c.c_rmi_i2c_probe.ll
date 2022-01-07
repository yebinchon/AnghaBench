; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_i2c.c_rmi_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_i2c.c_rmi_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rmi_device_platform_data = type { i32 }
%struct.rmi_i2c_xport = type { %struct.TYPE_13__, i32, %struct.i2c_client*, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i8*, i32*, %struct.TYPE_14__*, %struct.rmi_device_platform_data }
%struct.TYPE_15__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RMI_DEBUG_XPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Probing %s.\0A\00", align 1
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"adapter does not support required functionality\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@rmi_i2c_regulator_bulk_disable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"syna,startup-delay-ms\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@rmi_i2c_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to set page select to 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"registering I2C-connected sensor\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to register sensor: %d\0A\00", align 1
@rmi_i2c_unregister_transport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rmi_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rmi_device_platform_data*, align 8
  %7 = alloca %struct.rmi_device_platform_data*, align 8
  %8 = alloca %struct.rmi_i2c_xport*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.rmi_device_platform_data* @dev_get_platdata(%struct.TYPE_14__* %11)
  store %struct.rmi_device_platform_data* %12, %struct.rmi_device_platform_data** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rmi_i2c_xport* @devm_kzalloc(%struct.TYPE_14__* %14, i32 64, i32 %15)
  store %struct.rmi_i2c_xport* %16, %struct.rmi_i2c_xport** %8, align 8
  %17 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %18 = icmp ne %struct.rmi_i2c_xport* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %179

22:                                               ; preds = %2
  %23 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %24 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  store %struct.rmi_device_platform_data* %25, %struct.rmi_device_platform_data** %6, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %7, align 8
  %33 = icmp ne %struct.rmi_device_platform_data* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %36 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %7, align 8
  %37 = bitcast %struct.rmi_device_platform_data* %35 to i8*
  %38 = bitcast %struct.rmi_device_platform_data* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %39

39:                                               ; preds = %34, %31, %22
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %44 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @RMI_DEBUG_XPORT, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @dev_name(%struct.TYPE_14__* %49)
  %51 = call i32 @rmi_dbg(i32 %45, %struct.TYPE_14__* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I2C_FUNC_I2C, align 4
  %56 = call i32 @i2c_check_functionality(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %39
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %179

64:                                               ; preds = %39
  %65 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %66 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %65, i32 0, i32 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %69, align 8
  %70 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %71 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %70, i32 0, i32 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %78 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %77, i32 0, i32 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %79)
  %81 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %82 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %81, i32 0, i32 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = call i32 @devm_regulator_bulk_get(%struct.TYPE_14__* %76, i32 %80, %struct.TYPE_15__* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %64
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %179

89:                                               ; preds = %64
  %90 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %91 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %90, i32 0, i32 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %92)
  %94 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %95 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %94, i32 0, i32 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = call i32 @regulator_bulk_enable(i32 %93, %struct.TYPE_15__* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %179

102:                                              ; preds = %89
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* @rmi_i2c_regulator_bulk_disable, align 4
  %106 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %107 = call i32 @devm_add_action_or_reset(%struct.TYPE_14__* %104, i32 %105, %struct.rmi_i2c_xport* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %179

112:                                              ; preds = %102
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %118 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %117, i32 0, i32 3
  %119 = call i32 @of_property_read_u32(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %118)
  %120 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %121 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @msleep(i32 %122)
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %126 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %125, i32 0, i32 2
  store %struct.i2c_client* %124, %struct.i2c_client** %126, align 8
  %127 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %128 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %127, i32 0, i32 1
  %129 = call i32 @mutex_init(i32* %128)
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %133 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  store %struct.TYPE_14__* %131, %struct.TYPE_14__** %134, align 8
  %135 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %136 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %137, align 8
  %138 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %139 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  store i32* @rmi_i2c_ops, i32** %140, align 8
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %143 = call i32 @i2c_set_clientdata(%struct.i2c_client* %141, %struct.rmi_i2c_xport* %142)
  %144 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %145 = call i32 @rmi_set_page(%struct.rmi_i2c_xport* %144, i32 0)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %112
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %179

153:                                              ; preds = %112
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = call i32 @dev_info(%struct.TYPE_14__* %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %157 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %158 = getelementptr inbounds %struct.rmi_i2c_xport, %struct.rmi_i2c_xport* %157, i32 0, i32 0
  %159 = call i32 @rmi_register_transport_device(%struct.TYPE_13__* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = load i32, i32* %9, align 4
  %166 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %3, align 4
  br label %179

168:                                              ; preds = %153
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = load i32, i32* @rmi_i2c_unregister_transport, align 4
  %172 = load %struct.rmi_i2c_xport*, %struct.rmi_i2c_xport** %8, align 8
  %173 = call i32 @devm_add_action_or_reset(%struct.TYPE_14__* %170, i32 %171, %struct.rmi_i2c_xport* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %3, align 4
  br label %179

178:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %176, %162, %148, %110, %100, %87, %58, %19
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.rmi_device_platform_data* @dev_get_platdata(%struct.TYPE_14__*) #1

declare dso_local %struct.rmi_i2c_xport* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rmi_dbg(i32, %struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_14__*, i32, %struct.rmi_i2c_xport*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rmi_i2c_xport*) #1

declare dso_local i32 @rmi_set_page(%struct.rmi_i2c_xport*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @rmi_register_transport_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
