; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.rockchip_mbox = type { i64, %struct.TYPE_13__, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, %struct.TYPE_12__*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32*, %struct.rockchip_mbox* }
%struct.of_device_id = type { i64 }
%struct.rockchip_mbox_data = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@rockchip_mbox_of_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rockchip_mbox_chan_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pclk_mailbox\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to get pclk_mailbox clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to enable pclk: %d\0A\00", align 1
@rockchip_mbox_irq = common dso_local global i32 0, align 4
@rockchip_mbox_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to register mailbox: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_mbox_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rockchip_mbox*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.rockchip_mbox_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %248

19:                                               ; preds = %1
  %20 = load i32, i32* @rockchip_mbox_of_match, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.of_device_id* @of_match_node(i32 %20, i32 %24)
  store %struct.of_device_id* %25, %struct.of_device_id** %5, align 8
  %26 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.rockchip_mbox_data*
  store %struct.rockchip_mbox_data* %29, %struct.rockchip_mbox_data** %6, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.rockchip_mbox* @devm_kzalloc(%struct.TYPE_12__* %31, i32 56, i32 %32)
  store %struct.rockchip_mbox* %33, %struct.rockchip_mbox** %4, align 8
  %34 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %35 = icmp ne %struct.rockchip_mbox* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %248

39:                                               ; preds = %19
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.rockchip_mbox_data*, %struct.rockchip_mbox_data** %6, align 8
  %43 = getelementptr inbounds %struct.rockchip_mbox_data, %struct.rockchip_mbox_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @devm_kcalloc(%struct.TYPE_12__* %41, i32 %44, i32 24, i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_11__*
  %48 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %49 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %48, i32 0, i32 2
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %51 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %50, i32 0, i32 2
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %248

57:                                               ; preds = %39
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.rockchip_mbox_data*, %struct.rockchip_mbox_data** %6, align 8
  %61 = getelementptr inbounds %struct.rockchip_mbox_data, %struct.rockchip_mbox_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @devm_kcalloc(%struct.TYPE_12__* %59, i32 %62, i32 1, i32 %63)
  %65 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %66 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  store i8* %64, i8** %67, align 8
  %68 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %69 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %57
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %248

76:                                               ; preds = %57
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.rockchip_mbox* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %83 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %84, align 8
  %85 = load %struct.rockchip_mbox_data*, %struct.rockchip_mbox_data** %6, align 8
  %86 = getelementptr inbounds %struct.rockchip_mbox_data, %struct.rockchip_mbox_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %89 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %92 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  store i32* @rockchip_mbox_chan_ops, i32** %93, align 8
  %94 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %95 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load i32, i32* @IORESOURCE_MEM, align 4
  %99 = call %struct.resource* @platform_get_resource(%struct.platform_device* %97, i32 %98, i32 0)
  store %struct.resource* %99, %struct.resource** %7, align 8
  %100 = load %struct.resource*, %struct.resource** %7, align 8
  %101 = icmp ne %struct.resource* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %76
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %248

105:                                              ; preds = %76
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.resource*, %struct.resource** %7, align 8
  %109 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %107, %struct.resource* %108)
  %110 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %111 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %113 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @IS_ERR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %119 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %2, align 4
  br label %248

122:                                              ; preds = %105
  %123 = load %struct.resource*, %struct.resource** %7, align 8
  %124 = call i64 @resource_size(%struct.resource* %123)
  %125 = load %struct.rockchip_mbox_data*, %struct.rockchip_mbox_data** %6, align 8
  %126 = getelementptr inbounds %struct.rockchip_mbox_data, %struct.rockchip_mbox_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = udiv i64 %124, %129
  %131 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %132 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @devm_clk_get(%struct.TYPE_12__* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %137 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %139 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @IS_ERR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %122
  %144 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %145 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @PTR_ERR(i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @dev_err(%struct.TYPE_12__* %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %248

153:                                              ; preds = %122
  %154 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %155 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @clk_prepare_enable(i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @dev_err(%struct.TYPE_12__* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %248

166:                                              ; preds = %153
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %230, %166
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %170 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %233

174:                                              ; preds = %167
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @platform_get_irq(%struct.platform_device* %175, i32 %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %2, align 4
  br label %248

182:                                              ; preds = %174
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @rockchip_mbox_irq, align 4
  %187 = load i32, i32* @rockchip_mbox_isr, align 4
  %188 = load i32, i32* @IRQF_ONESHOT, align 4
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @dev_name(%struct.TYPE_12__* %190)
  %192 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %193 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %191, %struct.rockchip_mbox* %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %182
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %2, align 4
  br label %248

198:                                              ; preds = %182
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %201 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %200, i32 0, i32 2
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  store i32 %199, i32* %206, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %209 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %208, i32 0, i32 2
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  store i32 %207, i32* %214, align 4
  %215 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %216 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %217 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %216, i32 0, i32 2
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 3
  store %struct.rockchip_mbox* %215, %struct.rockchip_mbox** %222, align 8
  %223 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %224 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %223, i32 0, i32 2
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  store i32* null, i32** %229, align 8
  br label %230

230:                                              ; preds = %198
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %167

233:                                              ; preds = %167
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %4, align 8
  %237 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %236, i32 0, i32 1
  %238 = call i32 @devm_mbox_controller_register(%struct.TYPE_12__* %235, %struct.TYPE_13__* %237)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %233
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @dev_err(%struct.TYPE_12__* %243, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %241, %233
  %247 = load i32, i32* %8, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %246, %196, %180, %160, %143, %117, %102, %73, %54, %36, %16
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.rockchip_mbox* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_mbox*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i32, i32, i32, i32, i32, %struct.rockchip_mbox*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
