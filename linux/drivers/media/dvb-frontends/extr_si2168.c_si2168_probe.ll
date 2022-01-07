; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.si2168_config* }
%struct.si2168_config = type { i32, i32, i32, i32, %struct.TYPE_8__**, i32* }
%struct.TYPE_8__ = type { %struct.i2c_client*, i32 }
%struct.i2c_device_id = type { i32 }
%struct.si2168_dev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32*, %struct.i2c_client* }
%struct.si2168_cmd = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\C0\12\00\0C\00\0D\16\00\00\00\00\00\00\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\C0\06\01\0F\00  \01\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@SI2168_A20_FIRMWARE = common dso_local global i32 0, align 4
@SI2168_A30_FIRMWARE = common dso_local global i32 0, align 4
@SI2168_B40_FIRMWARE = common dso_local global i32 0, align 4
@SI2168_D60_FIRMWARE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"unknown chip version Si21%d-%c%c%c\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@si2168_select = common dso_local global i32 0, align 4
@si2168_deselect = common dso_local global i32 0, align 4
@si2168_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Silicon Labs Si2168-%c%d%d successfully identified\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"firmware version: %c %d.%d.%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"probe failed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si2168_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2168_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.si2168_config*, align 8
  %7 = alloca %struct.si2168_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.si2168_cmd, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.si2168_config*, %struct.si2168_config** %12, align 8
  store %struct.si2168_config* %13, %struct.si2168_config** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.si2168_dev* @kzalloc(i32 56, i32 %17)
  store %struct.si2168_dev* %18, %struct.si2168_dev** %7, align 8
  %19 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %20 = icmp ne %struct.si2168_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %265

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.si2168_dev* %26)
  %28 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %29 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %28, i32 0, i32 9
  %30 = call i32 @mutex_init(i32* %29)
  %31 = call i32 @cmd_init(%struct.si2168_cmd* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13, i32 0)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @si2168_cmd_execute(%struct.i2c_client* %32, %struct.si2168_cmd* %9)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %262

37:                                               ; preds = %24
  %38 = call i32 @cmd_init(%struct.si2168_cmd* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8, i32 1)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i32 @si2168_cmd_execute(%struct.i2c_client* %39, %struct.si2168_cmd* %9)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %262

44:                                               ; preds = %37
  %45 = call i32 @cmd_init(%struct.si2168_cmd* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 13)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call i32 @si2168_cmd_execute(%struct.i2c_client* %46, %struct.si2168_cmd* %9)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %262

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 24
  %57 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %56, %61
  %63 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %62, %67
  %69 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 0
  %74 = or i32 %68, %73
  %75 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %76 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %78 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %96 [
    i32 131, label %80
    i32 130, label %84
    i32 129, label %88
    i32 128, label %92
  ]

80:                                               ; preds = %51
  %81 = load i32, i32* @SI2168_A20_FIRMWARE, align 4
  %82 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %83 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  br label %118

84:                                               ; preds = %51
  %85 = load i32, i32* @SI2168_A30_FIRMWARE, align 4
  %86 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %87 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  br label %118

88:                                               ; preds = %51
  %89 = load i32, i32* @SI2168_B40_FIRMWARE, align 4
  %90 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %91 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  br label %118

92:                                               ; preds = %51
  %93 = load i32, i32* @SI2168_D60_FIRMWARE, align 4
  %94 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %95 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  br label %118

96:                                               ; preds = %51
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %106, i32 %110, i32 %114)
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %262

118:                                              ; preds = %92, %88, %84, %80
  %119 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 24
  %124 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 48
  %129 = shl i32 %128, 16
  %130 = or i32 %123, %129
  %131 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 48
  %136 = shl i32 %135, 8
  %137 = or i32 %130, %136
  %138 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %9, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 0
  %143 = or i32 %137, %142
  %144 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %145 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %152 = load i32, i32* @si2168_select, align 4
  %153 = load i32, i32* @si2168_deselect, align 4
  %154 = call %struct.TYPE_9__* @i2c_mux_alloc(i32 %148, %struct.TYPE_10__* %150, i32 1, i32 0, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %156 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %155, i32 0, i32 7
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %156, align 8
  %157 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %158 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %157, i32 0, i32 7
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = icmp ne %struct.TYPE_9__* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %118
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %8, align 4
  br label %262

164:                                              ; preds = %118
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %167 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %166, i32 0, i32 7
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  store %struct.i2c_client* %165, %struct.i2c_client** %169, align 8
  %170 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %171 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %170, i32 0, i32 7
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = call i32 @i2c_mux_add_adapter(%struct.TYPE_9__* %172, i32 0, i32 0, i32 0)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  br label %262

177:                                              ; preds = %164
  %178 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %179 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = call i32 @memcpy(i32* %180, i32* @si2168_ops, i32 4)
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %184 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  store %struct.i2c_client* %182, %struct.i2c_client** %185, align 8
  %186 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %187 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %186, i32 0, i32 7
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.si2168_config*, %struct.si2168_config** %6, align 8
  %194 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  store i32 %192, i32* %195, align 4
  %196 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %197 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %196, i32 0, i32 6
  %198 = load %struct.si2168_config*, %struct.si2168_config** %6, align 8
  %199 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %198, i32 0, i32 4
  %200 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %199, align 8
  store %struct.TYPE_8__* %197, %struct.TYPE_8__** %200, align 8
  %201 = load %struct.si2168_config*, %struct.si2168_config** %6, align 8
  %202 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %205 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  %206 = load %struct.si2168_config*, %struct.si2168_config** %6, align 8
  %207 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %210 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.si2168_config*, %struct.si2168_config** %6, align 8
  %212 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %215 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = load %struct.si2168_config*, %struct.si2168_config** %6, align 8
  %217 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %220 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %221, i32 0, i32 0
  %223 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %224 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 24
  %227 = and i32 %226, 255
  %228 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %229 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 16
  %232 = and i32 %231, 255
  %233 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %234 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %235, 8
  %237 = and i32 %236, 255
  %238 = call i32 (%struct.TYPE_10__*, i8*, i32, i32, i32, ...) @dev_info(%struct.TYPE_10__* %222, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %227, i32 %232, i32 %237)
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 0
  %241 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %242 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = ashr i32 %243, 24
  %245 = and i32 %244, 255
  %246 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %247 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 16
  %250 = and i32 %249, 255
  %251 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %252 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = ashr i32 %253, 8
  %255 = and i32 %254, 255
  %256 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %257 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %258, 0
  %260 = and i32 %259, 255
  %261 = call i32 (%struct.TYPE_10__*, i8*, i32, i32, i32, ...) @dev_info(%struct.TYPE_10__* %240, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %245, i32 %250, i32 %255, i32 %260)
  store i32 0, i32* %3, align 4
  br label %271

262:                                              ; preds = %176, %161, %96, %50, %43, %36
  %263 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %264 = call i32 @kfree(%struct.si2168_dev* %263)
  br label %265

265:                                              ; preds = %262, %21
  %266 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %267 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %266, i32 0, i32 0
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @dev_warn(%struct.TYPE_10__* %267, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %8, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %265, %177
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.si2168_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.si2168_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @cmd_init(%struct.si2168_cmd*, i8*, i32, i32) #1

declare dso_local i32 @si2168_cmd_execute(%struct.i2c_client*, %struct.si2168_cmd*) #1

declare dso_local %struct.TYPE_9__* @i2c_mux_alloc(i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @kfree(%struct.si2168_dev*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
