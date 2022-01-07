; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_20__, i32 }
%struct.xiic_i2c = type { i32, %struct.TYPE_19__, i32, %struct.TYPE_20__*, i32, i32, i32 }
%struct.xiic_i2c_platform_data = type { i64, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@xiic_adapter = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"input clock not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@XIIC_PM_TIMEOUT = common dso_local global i32 0, align 4
@xiic_isr = common dso_local global i32 0, align 4
@xiic_process = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Cannot claim IRQ\0A\00", align 1
@LITTLE = common dso_local global i32 0, align 4
@XIIC_CR_REG_OFFSET = common dso_local global i32 0, align 4
@XIIC_CR_TX_FIFO_RESET_MASK = common dso_local global i32 0, align 4
@XIIC_SR_REG_OFFSET = common dso_local global i32 0, align 4
@XIIC_SR_TX_FIFO_EMPTY_MASK = common dso_local global i32 0, align 4
@BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xiic_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiic_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xiic_i2c*, align 8
  %5 = alloca %struct.xiic_i2c_platform_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.xiic_i2c* @devm_kzalloc(%struct.TYPE_20__* %12, i32 56, i32 %13)
  store %struct.xiic_i2c* %14, %struct.xiic_i2c** %4, align 8
  %15 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %16 = icmp ne %struct.xiic_i2c* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %216

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %6, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 @devm_ioremap_resource(%struct.TYPE_20__* %25, %struct.resource* %26)
  %28 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %29 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %37 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %216

40:                                               ; preds = %20
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @platform_get_irq(%struct.platform_device* %41, i32 0)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %216

47:                                               ; preds = %40
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.xiic_i2c_platform_data* @dev_get_platdata(%struct.TYPE_20__* %49)
  store %struct.xiic_i2c_platform_data* %50, %struct.xiic_i2c_platform_data** %5, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.xiic_i2c* %52)
  %54 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %55 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_19__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 bitcast (%struct.TYPE_19__* @xiic_adapter to i8*), i64 16, i1 false)
  %57 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %58 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %57, i32 0, i32 1
  %59 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %60 = call i32 @i2c_set_adapdata(%struct.TYPE_19__* %58, %struct.xiic_i2c* %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %64 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %72 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %76 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %75, i32 0, i32 5
  %77 = call i32 @mutex_init(i32* %76)
  %78 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %79 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %78, i32 0, i32 4
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @devm_clk_get(%struct.TYPE_20__* %82, i32* null)
  %84 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %85 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %87 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %47
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.TYPE_20__* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %96 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %2, align 4
  br label %216

99:                                               ; preds = %47
  %100 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %101 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @clk_prepare_enable(i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @dev_err(%struct.TYPE_20__* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %216

111:                                              ; preds = %99
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %115 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %114, i32 0, i32 3
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %115, align 8
  %116 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %117 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %116, i32 0, i32 3
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = call i32 @pm_runtime_enable(%struct.TYPE_20__* %118)
  %120 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %121 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %120, i32 0, i32 3
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = load i32, i32* @XIIC_PM_TIMEOUT, align 4
  %124 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__* %122, i32 %123)
  %125 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %126 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %125, i32 0, i32 3
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__* %127)
  %129 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %130 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %129, i32 0, i32 3
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = call i32 @pm_runtime_set_active(%struct.TYPE_20__* %131)
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @xiic_isr, align 4
  %137 = load i32, i32* @xiic_process, align 4
  %138 = load i32, i32* @IRQF_ONESHOT, align 4
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %143 = call i32 @devm_request_threaded_irq(%struct.TYPE_20__* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %141, %struct.xiic_i2c* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %111
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @dev_err(%struct.TYPE_20__* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %204

150:                                              ; preds = %111
  %151 = load i32, i32* @LITTLE, align 4
  %152 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %153 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %155 = load i32, i32* @XIIC_CR_REG_OFFSET, align 4
  %156 = load i32, i32* @XIIC_CR_TX_FIFO_RESET_MASK, align 4
  %157 = call i32 @xiic_setreg32(%struct.xiic_i2c* %154, i32 %155, i32 %156)
  %158 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %159 = load i32, i32* @XIIC_SR_REG_OFFSET, align 4
  %160 = call i32 @xiic_getreg32(%struct.xiic_i2c* %158, i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @XIIC_SR_TX_FIFO_EMPTY_MASK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %150
  %166 = load i32, i32* @BIG, align 4
  %167 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %168 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %165, %150
  %170 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %171 = call i32 @xiic_reinit(%struct.xiic_i2c* %170)
  %172 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %173 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %172, i32 0, i32 1
  %174 = call i32 @i2c_add_adapter(%struct.TYPE_19__* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %179 = call i32 @xiic_deinit(%struct.xiic_i2c* %178)
  br label %204

180:                                              ; preds = %169
  %181 = load %struct.xiic_i2c_platform_data*, %struct.xiic_i2c_platform_data** %5, align 8
  %182 = icmp ne %struct.xiic_i2c_platform_data* %181, null
  br i1 %182, label %183, label %203

183:                                              ; preds = %180
  store i64 0, i64* %9, align 8
  br label %184

184:                                              ; preds = %199, %183
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.xiic_i2c_platform_data*, %struct.xiic_i2c_platform_data** %5, align 8
  %187 = getelementptr inbounds %struct.xiic_i2c_platform_data, %struct.xiic_i2c_platform_data* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %185, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %184
  %191 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %192 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %191, i32 0, i32 1
  %193 = load %struct.xiic_i2c_platform_data*, %struct.xiic_i2c_platform_data** %5, align 8
  %194 = getelementptr inbounds %struct.xiic_i2c_platform_data, %struct.xiic_i2c_platform_data* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %9, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @i2c_new_device(%struct.TYPE_19__* %192, i64 %197)
  br label %199

199:                                              ; preds = %190
  %200 = load i64, i64* %9, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %9, align 8
  br label %184

202:                                              ; preds = %184
  br label %203

203:                                              ; preds = %202, %180
  store i32 0, i32* %2, align 4
  br label %216

204:                                              ; preds = %177, %146
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = call i32 @pm_runtime_set_suspended(%struct.TYPE_20__* %206)
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = call i32 @pm_runtime_disable(%struct.TYPE_20__* %209)
  %211 = load %struct.xiic_i2c*, %struct.xiic_i2c** %4, align 8
  %212 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @clk_disable_unprepare(i32 %213)
  %215 = load i32, i32* %7, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %204, %203, %106, %91, %45, %35, %17
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.xiic_i2c* @devm_kzalloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_20__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.xiic_i2c_platform_data* @dev_get_platdata(%struct.TYPE_20__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xiic_i2c*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_19__*, %struct.xiic_i2c*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_20__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_20__*, i32, i32, i32, i32, i32, %struct.xiic_i2c*) #1

declare dso_local i32 @xiic_setreg32(%struct.xiic_i2c*, i32, i32) #1

declare dso_local i32 @xiic_getreg32(%struct.xiic_i2c*, i32) #1

declare dso_local i32 @xiic_reinit(%struct.xiic_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_19__*) #1

declare dso_local i32 @xiic_deinit(%struct.xiic_i2c*) #1

declare dso_local i32 @i2c_new_device(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_20__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
