; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i8*, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64, %struct.i2c_hid_platform_data* }
%struct.i2c_hid_platform_data = type { %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_16__ = type { i8* }
%struct.i2c_device_id = type { i32 }
%struct.i2c_hid = type { %struct.i2c_hid_platform_data, i32, %struct.TYPE_15__, %struct.hid_device*, i32, i32, i32, %struct.i2c_client* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.hid_device = type { i8*, i8*, i32, i32, i8*, i32, %struct.TYPE_14__, i32*, %struct.i2c_client* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }

@.str = private unnamed_addr constant [33 x i8] c"HID probe called for i2c 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"HID over i2c has not been provided an Int IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"HID over i2c doesn't have a valid IRQ\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vddl\00", align 1
@HID_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"nothing at this address: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@i2c_hid_ll_driver = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%s %04hX:%04hX\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"can't add hid device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @i2c_hid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_hid*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_hid_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.i2c_hid_platform_data*, %struct.i2c_hid_platform_data** %13, align 8
  store %struct.i2c_hid_platform_data* %14, %struct.i2c_hid_platform_data** %10, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dbg_hid(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = call i32 @dev_err(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %325

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 2
  %44 = call i32 @dev_err(%struct.TYPE_17__* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %3, align 4
  br label %325

49:                                               ; preds = %29
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 2
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.i2c_hid* @devm_kzalloc(%struct.TYPE_17__* %51, i32 72, i32 %52)
  store %struct.i2c_hid* %53, %struct.i2c_hid** %7, align 8
  %54 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %55 = icmp ne %struct.i2c_hid* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %325

59:                                               ; preds = %49
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %68 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %67, i32 0, i32 0
  %69 = call i32 @i2c_hid_of_probe(%struct.i2c_client* %66, %struct.i2c_hid_platform_data* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %325

74:                                               ; preds = %65
  br label %95

75:                                               ; preds = %59
  %76 = load %struct.i2c_hid_platform_data*, %struct.i2c_hid_platform_data** %10, align 8
  %77 = icmp ne %struct.i2c_hid_platform_data* %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %81 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %80, i32 0, i32 0
  %82 = call i32 @i2c_hid_acpi_pdata(%struct.i2c_client* %79, %struct.i2c_hid_platform_data* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %325

87:                                               ; preds = %78
  br label %94

88:                                               ; preds = %75
  %89 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %90 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %89, i32 0, i32 0
  %91 = load %struct.i2c_hid_platform_data*, %struct.i2c_hid_platform_data** %10, align 8
  %92 = bitcast %struct.i2c_hid_platform_data* %90 to i8*
  %93 = bitcast %struct.i2c_hid_platform_data* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 24, i1 false)
  br label %94

94:                                               ; preds = %88, %87
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %98 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %97, i32 0, i32 0
  %99 = call i32 @i2c_hid_fwnode_probe(%struct.i2c_client* %96, %struct.i2c_hid_platform_data* %98)
  %100 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %101 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %105, align 8
  %106 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %107 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %111, align 8
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 2
  %114 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %115 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %117)
  %119 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %120 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = call i32 @devm_regulator_bulk_get(%struct.TYPE_17__* %113, i32 %118, %struct.TYPE_16__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %95
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %325

128:                                              ; preds = %95
  %129 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %130 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %130, i32 0, i32 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %132)
  %134 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %135 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = call i32 @regulator_bulk_enable(i32 %133, %struct.TYPE_16__* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %325

143:                                              ; preds = %128
  %144 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %145 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %151 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @msleep(i64 %153)
  br label %155

155:                                              ; preds = %149, %143
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %158 = call i32 @i2c_set_clientdata(%struct.i2c_client* %156, %struct.i2c_hid* %157)
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %161 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %160, i32 0, i32 7
  store %struct.i2c_client* %159, %struct.i2c_client** %161, align 8
  %162 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %163 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @cpu_to_le16(i32 %166)
  %168 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %169 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %171 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %170, i32 0, i32 5
  %172 = call i32 @init_waitqueue_head(i32* %171)
  %173 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %174 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %173, i32 0, i32 4
  %175 = call i32 @mutex_init(i32* %174)
  %176 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %177 = load i32, i32* @HID_MIN_BUFFER_SIZE, align 4
  %178 = call i32 @i2c_hid_alloc_buffers(%struct.i2c_hid* %176, i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %155
  br label %311

182:                                              ; preds = %155
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %183, i32 0, i32 2
  %185 = call i32 @i2c_hid_acpi_fix_up_power(%struct.TYPE_17__* %184)
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 2
  %188 = call i32 @device_enable_async_suspend(%struct.TYPE_17__* %187)
  %189 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %190 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %182
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 2
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @dev_dbg(%struct.TYPE_17__* %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @ENXIO, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %6, align 4
  br label %311

200:                                              ; preds = %182
  %201 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %202 = call i32 @i2c_hid_fetch_hid_descriptor(%struct.i2c_hid* %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %311

206:                                              ; preds = %200
  %207 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %208 = call i32 @i2c_hid_init_irq(%struct.i2c_client* %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %311

212:                                              ; preds = %206
  %213 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %213, %struct.hid_device** %8, align 8
  %214 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %215 = call i64 @IS_ERR(%struct.hid_device* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %219 = call i32 @PTR_ERR(%struct.hid_device* %218)
  store i32 %219, i32* %6, align 4
  br label %305

220:                                              ; preds = %212
  %221 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %222 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %223 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %222, i32 0, i32 3
  store %struct.hid_device* %221, %struct.hid_device** %223, align 8
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %226 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %225, i32 0, i32 8
  store %struct.i2c_client* %224, %struct.i2c_client** %226, align 8
  %227 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %228 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %227, i32 0, i32 7
  store i32* @i2c_hid_ll_driver, i32** %228, align 8
  %229 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %230 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %229, i32 0, i32 2
  %231 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %232 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  store %struct.TYPE_17__* %230, %struct.TYPE_17__** %233, align 8
  %234 = load i32, i32* @BUS_I2C, align 4
  %235 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %236 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 8
  %237 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %238 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i8* @le16_to_cpu(i32 %240)
  %242 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %243 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %242, i32 0, i32 4
  store i8* %241, i8** %243, align 8
  %244 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %245 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @le16_to_cpu(i32 %247)
  %249 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %250 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %252 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i8* @le16_to_cpu(i32 %254)
  %256 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %257 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  %258 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %259 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %262 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %265 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %268 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @snprintf(i32 %260, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %263, i8* %266, i8* %269)
  %271 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %272 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %275 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %274, i32 0, i32 2
  %276 = call i32 @dev_name(%struct.TYPE_17__* %275)
  %277 = call i32 @strlcpy(i32 %273, i32 %276, i32 4)
  %278 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %279 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %282 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @i2c_hid_lookup_quirk(i8* %280, i8* %283)
  %285 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %286 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 8
  %287 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %288 = call i32 @hid_add_device(%struct.hid_device* %287)
  store i32 %288, i32* %6, align 4
  %289 = load i32, i32* %6, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %220
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @ENODEV, align 4
  %294 = sub nsw i32 0, %293
  %295 = icmp ne i32 %292, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %291
  %297 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @hid_err(%struct.i2c_client* %297, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %296, %291
  br label %302

301:                                              ; preds = %220
  store i32 0, i32* %3, align 4
  br label %325

302:                                              ; preds = %300
  %303 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %304 = call i32 @hid_destroy_device(%struct.hid_device* %303)
  br label %305

305:                                              ; preds = %302, %217
  %306 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %307 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %310 = call i32 @free_irq(i32 %308, %struct.i2c_hid* %309)
  br label %311

311:                                              ; preds = %305, %211, %205, %193, %181
  %312 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %313 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %313, i32 0, i32 0
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %314, align 8
  %316 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %315)
  %317 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %318 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %318, i32 0, i32 0
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %319, align 8
  %321 = call i32 @regulator_bulk_disable(i32 %316, %struct.TYPE_16__* %320)
  %322 = load %struct.i2c_hid*, %struct.i2c_hid** %7, align 8
  %323 = call i32 @i2c_hid_free_buffers(%struct.i2c_hid* %322)
  %324 = load i32, i32* %6, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %311, %301, %141, %126, %85, %72, %56, %45, %23
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.i2c_hid* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @i2c_hid_of_probe(%struct.i2c_client*, %struct.i2c_hid_platform_data*) #1

declare dso_local i32 @i2c_hid_acpi_pdata(%struct.i2c_client*, %struct.i2c_hid_platform_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_hid_fwnode_probe(%struct.i2c_client*, %struct.i2c_hid_platform_data*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_16__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.i2c_hid*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_hid_alloc_buffers(%struct.i2c_hid*, i32) #1

declare dso_local i32 @i2c_hid_acpi_fix_up_power(%struct.TYPE_17__*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.TYPE_17__*) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @i2c_hid_fetch_hid_descriptor(%struct.i2c_hid*) #1

declare dso_local i32 @i2c_hid_init_irq(%struct.i2c_client*) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

declare dso_local i32 @i2c_hid_lookup_quirk(i8*, i8*) #1

declare dso_local i32 @hid_add_device(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

declare dso_local i32 @free_irq(i32, %struct.i2c_hid*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @i2c_hid_free_buffers(%struct.i2c_hid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
