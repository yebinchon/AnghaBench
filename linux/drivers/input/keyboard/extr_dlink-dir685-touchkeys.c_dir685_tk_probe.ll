; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_dlink-dir685-touchkeys.c_dir685_tk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_dlink-dir685-touchkeys.c_dir685_tk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.dir685_touchkeys = type { %struct.device*, %struct.TYPE_5__*, i32*, %struct.i2c_client* }
%struct.TYPE_5__ = type { i32, i32, i8*, %struct.TYPE_4__, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@__const.dir685_tk_probe.bl_data = private unnamed_addr constant [2 x i32] [i32 167, i32 64], align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@KEY_LEFT = common dso_local global i32 0, align 4
@KEY_RIGHT = common dso_local global i32 0, align 4
@KEY_ENTER = common dso_local global i32 0, align 4
@KEY_WPS_BUTTON = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"D-Link DIR-685 touchkeys\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error setting brightness level\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no IRQ on the I2C device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dir685_tk_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"dir685-tk\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"can't request IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dir685_tk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir685_tk_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.dir685_touchkeys*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.dir685_tk_probe.bl_data to i8*), i64 8, i1 false)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dir685_touchkeys* @devm_kzalloc(%struct.device* %15, i32 32, i32 %16)
  store %struct.dir685_touchkeys* %17, %struct.dir685_touchkeys** %6, align 8
  %18 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %19 = icmp ne %struct.dir685_touchkeys* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %191

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call %struct.TYPE_5__* @devm_input_allocate_device(%struct.device* %24)
  %26 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %27 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %26, i32 0, i32 1
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %29 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %191

35:                                               ; preds = %23
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %38 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %37, i32 0, i32 3
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %41 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %40, i32 0, i32 0
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %43 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %47 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ARRAY_SIZE(i32* %48)
  %50 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %51 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %55 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %58 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  store i32* %56, i32** %60, align 8
  %61 = load i32, i32* @KEY_UP, align 4
  %62 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %63 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @KEY_DOWN, align 4
  %67 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %68 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @KEY_LEFT, align 4
  %72 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %73 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @KEY_RIGHT, align 4
  %77 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %78 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @KEY_ENTER, align 4
  %82 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %83 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @KEY_WPS_BUTTON, align 4
  %87 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %88 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @KEY_RESERVED, align 4
  %92 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %93 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* @EV_KEY, align 4
  %97 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %98 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @__set_bit(i32 %96, i32 %101)
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %124, %35
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %106 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @ARRAY_SIZE(i32* %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %103
  %111 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %112 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %119 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @__set_bit(i32 %117, i32 %122)
  br label %124

124:                                              ; preds = %110
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %103

127:                                              ; preds = %103
  %128 = load i32, i32* @KEY_RESERVED, align 4
  %129 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %130 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @__clear_bit(i32 %128, i32 %133)
  %135 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %136 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %138, align 8
  %139 = load i32, i32* @BUS_I2C, align 4
  %140 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %141 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %140, i32 0, i32 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 8
  %145 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %146 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = call i32 @input_register_device(%struct.TYPE_5__* %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %127
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %191

153:                                              ; preds = %127
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %156 = call i32 @i2c_master_send(%struct.i2c_client* %154, i32* %155, i32 8)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp ne i64 %158, 8
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %162 = getelementptr inbounds %struct.dir685_touchkeys, %struct.dir685_touchkeys* %161, i32 0, i32 0
  %163 = load %struct.device*, %struct.device** %162, align 8
  %164 = call i32 @dev_warn(%struct.device* %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %153
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load %struct.device*, %struct.device** %7, align 8
  %172 = call i32 @dev_err(%struct.device* %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %191

175:                                              ; preds = %165
  %176 = load %struct.device*, %struct.device** %7, align 8
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @dir685_tk_irq_thread, align 4
  %181 = load i32, i32* @IRQF_ONESHOT, align 4
  %182 = load %struct.dir685_touchkeys*, %struct.dir685_touchkeys** %6, align 8
  %183 = call i32 @devm_request_threaded_irq(%struct.device* %176, i32 %179, i32* null, i32 %180, i32 %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.dir685_touchkeys* %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %175
  %187 = load %struct.device*, %struct.device** %7, align 8
  %188 = call i32 @dev_err(%struct.device* %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %3, align 4
  br label %191

190:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %186, %170, %151, %32, %20
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.dir685_touchkeys* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.TYPE_5__* @devm_input_allocate_device(%struct.device*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @__set_bit(i32, i32) #2

declare dso_local i32 @__clear_bit(i32, i32) #2

declare dso_local i32 @input_register_device(%struct.TYPE_5__*) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.dir685_touchkeys*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
