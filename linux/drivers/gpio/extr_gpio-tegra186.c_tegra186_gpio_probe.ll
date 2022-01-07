; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra186.c_tegra186_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra186.c_tegra186_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32*, %struct.tegra_gpio*, i32, i32, i32, i32*, %struct.TYPE_13__* }
%struct.tegra_gpio = type { i32, i32*, %struct.TYPE_11__, %struct.TYPE_14__*, %struct.TYPE_13__, i32 }
%struct.TYPE_11__ = type { i32, i32, i8**, i32, %struct.gpio_irq_chip, i32, %struct.TYPE_12__*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.tegra_gpio_port*, i32 }
%struct.tegra_gpio_port = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@tegra186_gpio_get_direction = common dso_local global i32 0, align 4
@tegra186_gpio_direction_input = common dso_local global i32 0, align 4
@tegra186_gpio_direction_output = common dso_local global i32 0, align 4
@tegra186_gpio_get = common dso_local global i32 0, align 4
@tegra186_gpio_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"P%s.%02x\00", align 1
@tegra186_gpio_of_xlate = common dso_local global i32 0, align 4
@tegra186_irq_ack = common dso_local global i32 0, align 4
@tegra186_irq_mask = common dso_local global i32 0, align 4
@tegra186_irq_unmask = common dso_local global i32 0, align 4
@tegra186_irq_set_type = common dso_local global i32 0, align 4
@tegra186_gpio_irq_domain_ops = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@tegra186_gpio_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra186_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra186_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_irq_chip*, align 8
  %8 = alloca %struct.tegra_gpio*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_gpio_port*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tegra_gpio_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tegra_gpio* @devm_kzalloc(%struct.TYPE_15__* %16, i32 184, i32 %17)
  store %struct.tegra_gpio* %18, %struct.tegra_gpio** %8, align 8
  %19 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %20 = icmp ne %struct.tegra_gpio* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %405

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.TYPE_14__* @of_device_get_match_data(%struct.TYPE_15__* %26)
  %28 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %29 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %28, i32 0, i32 3
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %32, %struct.resource** %9, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %9, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.TYPE_15__* %34, %struct.resource* %35)
  %37 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %38 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %40 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %24
  %45 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %46 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %405

49:                                               ; preds = %24
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @platform_irq_count(%struct.platform_device* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %2, align 4
  br label %405

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %59 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %63 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @devm_kcalloc(%struct.TYPE_15__* %61, i32 %64, i32 4, i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %69 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %71 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %56
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %405

77:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %81 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @platform_get_irq(%struct.platform_device* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %2, align 4
  br label %405

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %95 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %78

103:                                              ; preds = %78
  %104 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %105 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %104, i32 0, i32 3
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %110 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 13
  store i32 %108, i32* %111, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %115 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 7
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %116, align 8
  %117 = load i32, i32* @tegra186_gpio_get_direction, align 4
  %118 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %119 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 12
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @tegra186_gpio_direction_input, align 4
  %122 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %123 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 11
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @tegra186_gpio_direction_output, align 4
  %126 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %127 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 10
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* @tegra186_gpio_get, align 4
  %130 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %131 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 9
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @tegra186_gpio_set, align 4
  %134 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %135 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 8
  store i32 %133, i32* %136, align 8
  %137 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %138 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  store i32 -1, i32* %139, align 8
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %164, %103
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %143 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %142, i32 0, i32 3
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ult i32 %141, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %140
  %149 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %150 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %149, i32 0, i32 3
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %153, i64 %155
  %157 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %160 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %148
  %165 = load i32, i32* %4, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %4, align 4
  br label %140

167:                                              ; preds = %140
  %168 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %169 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 7
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %173 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i8* @devm_kcalloc(%struct.TYPE_15__* %171, i32 %175, i32 8, i32 %176)
  %178 = bitcast i8* %177 to i8**
  store i8** %178, i8*** %10, align 8
  %179 = load i8**, i8*** %10, align 8
  %180 = icmp ne i8** %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %167
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %405

184:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %241, %184
  %186 = load i32, i32* %4, align 4
  %187 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %188 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %187, i32 0, i32 3
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ult i32 %186, %191
  br i1 %192, label %193, label %244

193:                                              ; preds = %185
  %194 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %195 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %194, i32 0, i32 3
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %198, i64 %200
  store %struct.tegra_gpio_port* %201, %struct.tegra_gpio_port** %12, align 8
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %232, %193
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %12, align 8
  %205 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ult i32 %203, %206
  br i1 %207, label %208, label %235

208:                                              ; preds = %202
  %209 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %210 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 7
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = load i32, i32* @GFP_KERNEL, align 4
  %214 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %12, align 8
  %215 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i8* @devm_kasprintf(%struct.TYPE_15__* %212, i32 %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %216, i32 %217)
  store i8* %218, i8** %13, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %208
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %405

224:                                              ; preds = %208
  %225 = load i8*, i8** %13, align 8
  %226 = load i8**, i8*** %10, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %5, align 4
  %229 = add i32 %227, %228
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %226, i64 %230
  store i8* %225, i8** %231, align 8
  br label %232

232:                                              ; preds = %224
  %233 = load i32, i32* %5, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %202

235:                                              ; preds = %202
  %236 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %12, align 8
  %237 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = add i32 %239, %238
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %235
  %242 = load i32, i32* %4, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %4, align 4
  br label %185

244:                                              ; preds = %185
  %245 = load i8**, i8*** %10, align 8
  %246 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %247 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  store i8** %245, i8*** %248, align 8
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %254 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 6
  store %struct.TYPE_12__* %252, %struct.TYPE_12__** %255, align 8
  %256 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %257 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 3
  store i32 2, i32* %258, align 8
  %259 = load i32, i32* @tegra186_gpio_of_xlate, align 4
  %260 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %261 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 5
  store i32 %259, i32* %262, align 8
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %270 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 4
  store i32 %268, i32* %271, align 8
  %272 = load i32, i32* @tegra186_irq_ack, align 4
  %273 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %274 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 3
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* @tegra186_irq_mask, align 4
  %277 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %278 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 2
  store i32 %276, i32* %279, align 8
  %280 = load i32, i32* @tegra186_irq_unmask, align 4
  %281 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %282 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  store i32 %280, i32* %283, align 4
  %284 = load i32, i32* @tegra186_irq_set_type, align 4
  %285 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %286 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  store i32 %284, i32* %287, align 8
  %288 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %289 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 4
  store %struct.gpio_irq_chip* %290, %struct.gpio_irq_chip** %7, align 8
  %291 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %292 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %291, i32 0, i32 4
  %293 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %294 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %293, i32 0, i32 8
  store %struct.TYPE_13__* %292, %struct.TYPE_13__** %294, align 8
  %295 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %296 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %295, i32 0, i32 7
  store i32* @tegra186_gpio_irq_domain_ops, i32** %296, align 8
  %297 = load i32, i32* @handle_simple_irq, align 4
  %298 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %299 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %298, i32 0, i32 6
  store i32 %297, i32* %299, align 8
  %300 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %301 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %302 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %301, i32 0, i32 5
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @tegra186_gpio_irq, align 4
  %304 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %305 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %304, i32 0, i32 4
  store i32 %303, i32* %305, align 8
  %306 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %307 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %308 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %307, i32 0, i32 3
  store %struct.tegra_gpio* %306, %struct.tegra_gpio** %308, align 8
  %309 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %310 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %313 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %315 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %318 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %317, i32 0, i32 1
  store i32* %316, i32** %318, align 8
  %319 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %320 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %319, i32 0, i32 0
  %321 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %322 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @GFP_KERNEL, align 4
  %326 = call i8* @devm_kcalloc(%struct.TYPE_15__* %320, i32 %324, i32 4, i32 %325)
  %327 = bitcast i8* %326 to i32*
  %328 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %329 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %328, i32 0, i32 2
  store i32* %327, i32** %329, align 8
  %330 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %331 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %337, label %334

334:                                              ; preds = %244
  %335 = load i32, i32* @ENOMEM, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %2, align 4
  br label %405

337:                                              ; preds = %244
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %338

338:                                              ; preds = %387, %337
  %339 = load i32, i32* %4, align 4
  %340 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %341 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %340, i32 0, i32 3
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp ult i32 %339, %344
  br i1 %345, label %346, label %390

346:                                              ; preds = %338
  %347 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %348 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %347, i32 0, i32 3
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 1
  %351 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %350, align 8
  %352 = load i32, i32* %4, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %351, i64 %353
  store %struct.tegra_gpio_port* %354, %struct.tegra_gpio_port** %14, align 8
  store i32 0, i32* %5, align 4
  br label %355

355:                                              ; preds = %378, %346
  %356 = load i32, i32* %5, align 4
  %357 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %14, align 8
  %358 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp ult i32 %356, %359
  br i1 %360, label %361, label %381

361:                                              ; preds = %355
  %362 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %363 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %14, align 8
  %366 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds i32, i32* %364, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %371 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %6, align 4
  %374 = load i32, i32* %5, align 4
  %375 = add i32 %373, %374
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %372, i64 %376
  store i32 %369, i32* %377, align 4
  br label %378

378:                                              ; preds = %361
  %379 = load i32, i32* %5, align 4
  %380 = add i32 %379, 1
  store i32 %380, i32* %5, align 4
  br label %355

381:                                              ; preds = %355
  %382 = load %struct.tegra_gpio_port*, %struct.tegra_gpio_port** %14, align 8
  %383 = getelementptr inbounds %struct.tegra_gpio_port, %struct.tegra_gpio_port* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %6, align 4
  %386 = add i32 %385, %384
  store i32 %386, i32* %6, align 4
  br label %387

387:                                              ; preds = %381
  %388 = load i32, i32* %4, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %4, align 4
  br label %338

390:                                              ; preds = %338
  %391 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %392 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %393 = call i32 @platform_set_drvdata(%struct.platform_device* %391, %struct.tegra_gpio* %392)
  %394 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %395 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %394, i32 0, i32 0
  %396 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %397 = getelementptr inbounds %struct.tegra_gpio, %struct.tegra_gpio* %396, i32 0, i32 2
  %398 = load %struct.tegra_gpio*, %struct.tegra_gpio** %8, align 8
  %399 = call i32 @devm_gpiochip_add_data(%struct.TYPE_15__* %395, %struct.TYPE_11__* %397, %struct.tegra_gpio* %398)
  store i32 %399, i32* %11, align 4
  %400 = load i32, i32* %11, align 4
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %390
  %403 = load i32, i32* %11, align 4
  store i32 %403, i32* %2, align 4
  br label %405

404:                                              ; preds = %390
  store i32 0, i32* %2, align 4
  br label %405

405:                                              ; preds = %404, %402, %334, %221, %181, %90, %74, %54, %44, %21
  %406 = load i32, i32* %2, align 4
  ret i32 %406
}

declare dso_local %struct.tegra_gpio* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @of_device_get_match_data(%struct.TYPE_15__*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.TYPE_15__*, i32, i8*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_15__*, %struct.TYPE_11__*, %struct.tegra_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
