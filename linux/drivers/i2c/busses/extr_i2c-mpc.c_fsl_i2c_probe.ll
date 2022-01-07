; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_fsl_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_fsl_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.of_device_id = type { %struct.mpc_i2c_data* }
%struct.mpc_i2c_data = type { i32 (i32, %struct.mpc_i2c*, i32)* }
%struct.mpc_i2c = type opaque
%struct.mpc_i2c.0 = type { i32, i64, %struct.clk*, %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.clk = type { i32 }
%struct.resource = type { i64 }

@MPC_I2C_CLOCK_LEGACY = common dso_local global i32 0, align 4
@mpc_i2c_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to map controller\0A\00", align 1
@mpc_i2c_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"i2c-mpc\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to attach interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"fsl,preserve-clocking\00", align 1
@MPC_I2C_CLOCK_PRESERVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dfsrr\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"fsl,timeout\00", align 1
@HZ = common dso_local global i32 0, align 4
@mpc_ops = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"timeout %u us\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"MPC adapter at 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.mpc_i2c.0*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mpc_i2c_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @MPC_I2C_CLOCK_LEGACY, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @mpc_i2c_of_match, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.of_device_id* @of_match_device(i32 %15, %struct.TYPE_10__* %17)
  store %struct.of_device_id* %18, %struct.of_device_id** %4, align 8
  %19 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %20 = icmp ne %struct.of_device_id* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %273

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mpc_i2c.0* @kzalloc(i32 72, i32 %25)
  store %struct.mpc_i2c.0* %26, %struct.mpc_i2c.0** %5, align 8
  %27 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %28 = icmp ne %struct.mpc_i2c.0* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %273

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %36 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %35, i32 0, i32 4
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %36, align 8
  %37 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %38 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %37, i32 0, i32 5
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @of_iomap(i32 %43, i32 0)
  %45 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %46 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %48 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %32
  %52 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %53 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %52, i32 0, i32 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 @dev_err(%struct.TYPE_10__* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %269

58:                                               ; preds = %32
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @irq_of_parse_and_map(i32 %62, i32 0)
  %64 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %65 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %67 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %58
  %71 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %72 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @mpc_i2c_isr, align 4
  %75 = load i32, i32* @IRQF_SHARED, align 4
  %76 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %77 = call i32 @request_irq(i64 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.mpc_i2c.0* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %82 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %81, i32 0, i32 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 @dev_err(%struct.TYPE_10__* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %260

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %58
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call %struct.clk* @devm_clk_get(%struct.TYPE_10__* %88, i32* null)
  store %struct.clk* %89, %struct.clk** %11, align 8
  %90 = load %struct.clk*, %struct.clk** %11, align 8
  %91 = call i32 @IS_ERR(%struct.clk* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %86
  %94 = load %struct.clk*, %struct.clk** %11, align 8
  %95 = call i32 @clk_prepare_enable(%struct.clk* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.TYPE_10__* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %260

102:                                              ; preds = %93
  %103 = load %struct.clk*, %struct.clk** %11, align 8
  %104 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %105 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %104, i32 0, i32 2
  store %struct.clk* %103, %struct.clk** %105, align 8
  br label %106

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @of_property_read_bool(i32 %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @MPC_I2C_CLOCK_PRESERVE, align 4
  store i32 %115, i32* %7, align 4
  br label %132

116:                                              ; preds = %107
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @of_get_property(i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  store i32* %121, i32** %6, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %116
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp eq i64 %126, 4
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %128, %124, %116
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %134 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %133, i32 0, i32 0
  %135 = load %struct.mpc_i2c_data*, %struct.mpc_i2c_data** %134, align 8
  %136 = icmp ne %struct.mpc_i2c_data* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %139 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %138, i32 0, i32 0
  %140 = load %struct.mpc_i2c_data*, %struct.mpc_i2c_data** %139, align 8
  store %struct.mpc_i2c_data* %140, %struct.mpc_i2c_data** %13, align 8
  %141 = load %struct.mpc_i2c_data*, %struct.mpc_i2c_data** %13, align 8
  %142 = getelementptr inbounds %struct.mpc_i2c_data, %struct.mpc_i2c_data* %141, i32 0, i32 0
  %143 = load i32 (i32, %struct.mpc_i2c*, i32)*, i32 (i32, %struct.mpc_i2c*, i32)** %142, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %149 = bitcast %struct.mpc_i2c.0* %148 to %struct.mpc_i2c*
  %150 = load i32, i32* %7, align 4
  %151 = call i32 %143(i32 %147, %struct.mpc_i2c* %149, i32 %150)
  br label %168

152:                                              ; preds = %132
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32* @of_get_property(i32 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @mpc_i2c_setup_8xxx(i32 %163, %struct.mpc_i2c.0* %164, i32 %165)
  br label %167

167:                                              ; preds = %159, %152
  br label %168

168:                                              ; preds = %167, %137
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32* @of_get_property(i32 %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  store i32* %173, i32** %6, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %190

176:                                              ; preds = %168
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = icmp eq i64 %178, 4
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @HZ, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sdiv i32 %184, 1000000
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mpc_ops, i32 0, i32 0), align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mpc_ops, i32 0, i32 0), align 8
  %187 = icmp slt i32 %186, 5
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mpc_ops, i32 0, i32 0), align 8
  br label %189

189:                                              ; preds = %188, %180
  br label %190

190:                                              ; preds = %189, %176, %168
  %191 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %192 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %191, i32 0, i32 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mpc_ops, i32 0, i32 0), align 8
  %195 = mul nsw i32 %194, 1000000
  %196 = load i32, i32* @HZ, align 4
  %197 = sdiv i32 %195, %196
  %198 = call i32 @dev_info(%struct.TYPE_10__* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %197)
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %201 = call i32 @platform_set_drvdata(%struct.platform_device* %199, %struct.mpc_i2c.0* %200)
  %202 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %203 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %202, i32 0, i32 3
  %204 = bitcast %struct.TYPE_11__* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 bitcast (%struct.TYPE_11__* @mpc_ops to i8*), i64 32, i1 false)
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @of_address_to_resource(i32 %208, i32 0, %struct.resource* %10)
  %210 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %211 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @scnprintf(i32 %213, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %215)
  %217 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %218 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %217, i32 0, i32 3
  %219 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %220 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %218, %struct.mpc_i2c.0* %219)
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %224 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  store %struct.TYPE_10__* %222, %struct.TYPE_10__** %226, align 8
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @of_node_get(i32 %230)
  %232 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %233 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i32 %231, i32* %235, align 8
  %236 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %237 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %236, i32 0, i32 3
  %238 = call i32 @i2c_add_adapter(%struct.TYPE_11__* %237)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %190
  br label %244

242:                                              ; preds = %190
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %2, align 4
  br label %273

244:                                              ; preds = %241
  %245 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %246 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %245, i32 0, i32 2
  %247 = load %struct.clk*, %struct.clk** %246, align 8
  %248 = icmp ne %struct.clk* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %251 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %250, i32 0, i32 2
  %252 = load %struct.clk*, %struct.clk** %251, align 8
  %253 = call i32 @clk_disable_unprepare(%struct.clk* %252)
  br label %254

254:                                              ; preds = %249, %244
  %255 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %256 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %259 = call i32 @free_irq(i64 %257, %struct.mpc_i2c.0* %258)
  br label %260

260:                                              ; preds = %254, %98, %80
  %261 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %262 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @irq_dispose_mapping(i64 %263)
  %265 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %266 = getelementptr inbounds %struct.mpc_i2c.0, %struct.mpc_i2c.0* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @iounmap(i32 %267)
  br label %269

269:                                              ; preds = %260, %51
  %270 = load %struct.mpc_i2c.0*, %struct.mpc_i2c.0** %5, align 8
  %271 = call i32 @kfree(%struct.mpc_i2c.0* %270)
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %269, %242, %29, %21
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_10__*) #1

declare dso_local %struct.mpc_i2c.0* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @of_iomap(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.mpc_i2c.0*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @mpc_i2c_setup_8xxx(i32, %struct.mpc_i2c.0*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mpc_i2c.0*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.mpc_i2c.0*) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_11__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @free_irq(i64, %struct.mpc_i2c.0*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.mpc_i2c.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
