; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.cmdq = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__*, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32*, %struct.device* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to ioremap gce\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cmdq_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mtk_cmdq\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to register ISR (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"cmdq device: addr:0x%p, va:0x%p, irq:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gce\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to get gce clk\0A\00", align 1
@cmdq_mbox_chan_ops = common dso_local global i32 0, align 4
@cmdq_xlate = common dso_local global i32 0, align 4
@CMDQ_THR_BASE = common dso_local global i64 0, align 8
@CMDQ_THR_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to register mailbox: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cmdq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.cmdq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cmdq* @devm_kzalloc(%struct.device* %11, i32 88, i32 %12)
  store %struct.cmdq* %13, %struct.cmdq** %6, align 8
  %14 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %15 = icmp ne %struct.cmdq* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %243

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i64 @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %27 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %29 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @IS_ERR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %37 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @PTR_ERR(i64 %38)
  store i32 %39, i32* %2, align 4
  br label %243

40:                                               ; preds = %19
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @platform_get_irq(%struct.platform_device* %41, i32 0)
  %43 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %44 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %46 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %243

54:                                               ; preds = %40
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i64 @of_device_get_match_data(%struct.device* %55)
  %57 = trunc i64 %56 to i32
  %58 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %59 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %61 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @GENMASK(i32 %63, i32 0)
  %65 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %66 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %69 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @cmdq_irq_handler, align 4
  %72 = load i32, i32* @IRQF_SHARED, align 4
  %73 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %74 = call i32 @devm_request_irq(%struct.device* %67, i32 %70, i32 %71, i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.cmdq* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %54
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %243

82:                                               ; preds = %54
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %86 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %89 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.device* %84, i64 %87, i32 %90)
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i64 @devm_clk_get(%struct.device* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %95 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %97 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @IS_ERR(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %82
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %105 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @PTR_ERR(i64 %106)
  store i32 %107, i32* %2, align 4
  br label %243

108:                                              ; preds = %82
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %111 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 6
  store %struct.device* %109, %struct.device** %112, align 8
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %115 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i8* @devm_kcalloc(%struct.device* %113, i32 %116, i32 8, i32 %117)
  %119 = bitcast i8* %118 to %struct.TYPE_4__*
  %120 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %121 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store %struct.TYPE_4__* %119, %struct.TYPE_4__** %122, align 8
  %123 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %124 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = icmp ne %struct.TYPE_4__* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %108
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %243

131:                                              ; preds = %108
  %132 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %133 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %136 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %139 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  store i32* @cmdq_mbox_chan_ops, i32** %140, align 8
  %141 = load i32, i32* @cmdq_xlate, align 4
  %142 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %143 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  store i32 %141, i32* %144, align 8
  %145 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %146 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %149 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  store i32 0, i32* %150, align 8
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %153 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @devm_kcalloc(%struct.device* %151, i32 %154, i32 16, i32 %155)
  %157 = bitcast i8* %156 to %struct.TYPE_5__*
  %158 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %159 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %158, i32 0, i32 3
  store %struct.TYPE_5__* %157, %struct.TYPE_5__** %159, align 8
  %160 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %161 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %160, i32 0, i32 3
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = icmp ne %struct.TYPE_5__* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %131
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %243

167:                                              ; preds = %131
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %215, %167
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %171 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %218

174:                                              ; preds = %168
  %175 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %176 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @CMDQ_THR_BASE, align 8
  %179 = add nsw i64 %177, %178
  %180 = load i32, i32* @CMDQ_THR_SIZE, align 4
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %179, %183
  %185 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %186 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %185, i32 0, i32 3
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  store i64 %184, i64* %191, align 8
  %192 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %193 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %192, i32 0, i32 3
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = call i32 @INIT_LIST_HEAD(i32* %198)
  %200 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %201 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %200, i32 0, i32 3
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = bitcast %struct.TYPE_5__* %205 to i8*
  %207 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %208 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i8* %206, i8** %214, align 8
  br label %215

215:                                              ; preds = %174
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  br label %168

218:                                              ; preds = %168
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %221 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %220, i32 0, i32 2
  %222 = call i32 @devm_mbox_controller_register(%struct.device* %219, %struct.TYPE_6__* %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %218
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = load i32, i32* %7, align 4
  %228 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %226, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %7, align 4
  store i32 %229, i32* %2, align 4
  br label %243

230:                                              ; preds = %218
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %233 = call i32 @platform_set_drvdata(%struct.platform_device* %231, %struct.cmdq* %232)
  %234 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %235 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = call i64 @clk_prepare(i64 %236)
  %238 = icmp slt i64 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @WARN_ON(i32 %239)
  %241 = load %struct.cmdq*, %struct.cmdq** %6, align 8
  %242 = call i32 @cmdq_init(%struct.cmdq* %241)
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %230, %225, %164, %128, %101, %77, %49, %33, %16
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.cmdq* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.cmdq*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.device*, i64, i32) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cmdq*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @clk_prepare(i64) #1

declare dso_local i32 @cmdq_init(%struct.cmdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
