; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5022_muic_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5022_muic_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sm5502_muic_info = type { i32, i32, %struct.TYPE_6__*, i32, i32, %struct.muic_irq*, i32, i32, i32, i32, i8*, i8*, %struct.i2c_client* }
%struct.muic_irq = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sm5502_muic_irqs = common dso_local global i8* null, align 8
@sm5502_reg_data = common dso_local global i8* null, align 8
@sm5502_muic_irq_work = common dso_local global i32 0, align 4
@sm5502_muic_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate register map: %d\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@sm5502_muic_irq_chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to request IRQ %d: %d\0A\00", align 1
@sm5502_muic_irq_handler = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", align 1
@sm5502_extcon_cable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@sm5502_muic_detect_cable_wq = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@DELAY_MS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sm5022_muic_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm5022_muic_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.sm5502_muic_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.muic_irq*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %227

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sm5502_muic_info* @devm_kzalloc(%struct.TYPE_6__* %24, i32 72, i32 %25)
  store %struct.sm5502_muic_info* %26, %struct.sm5502_muic_info** %7, align 8
  %27 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %28 = icmp ne %struct.sm5502_muic_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %227

32:                                               ; preds = %22
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.sm5502_muic_info* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %39 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %38, i32 0, i32 2
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %42 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %41, i32 0, i32 12
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %47 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @sm5502_muic_irqs, align 8
  %49 = bitcast i8* %48 to %struct.muic_irq*
  %50 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %51 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %50, i32 0, i32 5
  store %struct.muic_irq* %49, %struct.muic_irq** %51, align 8
  %52 = load i8*, i8** @sm5502_muic_irqs, align 8
  %53 = call i8* @ARRAY_SIZE(i8* %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %56 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @sm5502_reg_data, align 8
  %58 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %59 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %58, i32 0, i32 11
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @sm5502_reg_data, align 8
  %61 = call i8* @ARRAY_SIZE(i8* %60)
  %62 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %63 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %62, i32 0, i32 10
  store i8* %61, i8** %63, align 8
  %64 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %65 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %64, i32 0, i32 9
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %68 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %67, i32 0, i32 8
  %69 = load i32, i32* @sm5502_muic_irq_work, align 4
  %70 = call i32 @INIT_WORK(i32* %68, i32 %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %71, i32* @sm5502_muic_regmap_config)
  %73 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %74 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %76 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %32
  %81 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %82 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %86 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %227

91:                                               ; preds = %32
  %92 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IRQF_SHARED, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %10, align 4
  %97 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %98 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %101 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %105 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %104, i32 0, i32 4
  %106 = call i32 @regmap_add_irq_chip(i32 %99, i32 %102, i32 %103, i32 0, i32* @sm5502_muic_irq_chip, i32* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %91
  %110 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %111 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %114 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %227

119:                                              ; preds = %91
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %175, %119
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %123 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %178

126:                                              ; preds = %120
  %127 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %128 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %127, i32 0, i32 5
  %129 = load %struct.muic_irq*, %struct.muic_irq** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.muic_irq, %struct.muic_irq* %129, i64 %131
  store %struct.muic_irq* %132, %struct.muic_irq** %11, align 8
  store i32 0, i32* %12, align 4
  %133 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %134 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.muic_irq*, %struct.muic_irq** %11, align 8
  %137 = getelementptr inbounds %struct.muic_irq, %struct.muic_irq* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @regmap_irq_get_virq(i32 %135, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %227

145:                                              ; preds = %126
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.muic_irq*, %struct.muic_irq** %11, align 8
  %148 = getelementptr inbounds %struct.muic_irq, %struct.muic_irq* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %150 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @sm5502_muic_irq_handler, align 4
  %154 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %155 = load i32, i32* @IRQF_ONESHOT, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.muic_irq*, %struct.muic_irq** %11, align 8
  %158 = getelementptr inbounds %struct.muic_irq, %struct.muic_irq* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %161 = call i32 @devm_request_threaded_irq(%struct.TYPE_6__* %151, i32 %152, i32* null, i32 %153, i32 %156, i32 %159, %struct.sm5502_muic_info* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %145
  %165 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %166 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %165, i32 0, i32 2
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load %struct.muic_irq*, %struct.muic_irq** %11, align 8
  %169 = getelementptr inbounds %struct.muic_irq, %struct.muic_irq* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %171)
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %3, align 4
  br label %227

174:                                              ; preds = %145
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %120

178:                                              ; preds = %120
  %179 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %180 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* @sm5502_extcon_cable, align 4
  %183 = call i32 @devm_extcon_dev_allocate(%struct.TYPE_6__* %181, i32 %182)
  %184 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %185 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %187 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @IS_ERR(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %178
  %192 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %193 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %192, i32 0, i32 2
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %194, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %227

198:                                              ; preds = %178
  %199 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %200 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %199, i32 0, i32 2
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %203 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @devm_extcon_dev_register(%struct.TYPE_6__* %201, i32 %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %198
  %209 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %210 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %209, i32 0, i32 2
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %213 = load i32, i32* %9, align 4
  store i32 %213, i32* %3, align 4
  br label %227

214:                                              ; preds = %198
  %215 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %216 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %215, i32 0, i32 1
  %217 = load i32, i32* @sm5502_muic_detect_cable_wq, align 4
  %218 = call i32 @INIT_DELAYED_WORK(i32* %216, i32 %217)
  %219 = load i32, i32* @system_power_efficient_wq, align 4
  %220 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %221 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %220, i32 0, i32 1
  %222 = load i32, i32* @DELAY_MS_DEFAULT, align 4
  %223 = call i32 @msecs_to_jiffies(i32 %222)
  %224 = call i32 @queue_delayed_work(i32 %219, i32* %221, i32 %223)
  %225 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %7, align 8
  %226 = call i32 @sm5502_init_dev_type(%struct.sm5502_muic_info* %225)
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %214, %208, %191, %164, %142, %109, %80, %29, %19
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.sm5502_muic_info* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sm5502_muic_info*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_6__*, i32, i32*, i32, i32, i32, %struct.sm5502_muic_info*) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sm5502_init_dev_type(%struct.sm5502_muic_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
