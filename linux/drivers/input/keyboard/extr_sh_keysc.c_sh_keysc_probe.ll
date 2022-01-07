; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sh_keysc.c_sh_keysc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sh_keysc.c_sh_keysc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32, i32 }
%struct.sh_keysc_priv = type { i32*, %struct.input_dev*, %struct.sh_keysc_info }
%struct.input_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.sh_keysc_info = type { i64, i32, i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to allocate driver data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to remap I/O memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"sh-keysc-keys/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@sh_keysc_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@SH_KEYSC_MAXKEYS = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@KYCR1 = common dso_local global i32 0, align 4
@sh_keysc_mode = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_keysc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_keysc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_keysc_priv*, align 8
  %5 = alloca %struct.sh_keysc_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @dev_get_platdata(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %232

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = icmp eq %struct.resource* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %232

33:                                               ; preds = %21
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %232

39:                                               ; preds = %33
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sh_keysc_priv* @kzalloc(i32 40, i32 %40)
  store %struct.sh_keysc_priv* %41, %struct.sh_keysc_priv** %4, align 8
  %42 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %43 = icmp eq %struct.sh_keysc_priv* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %232

50:                                               ; preds = %39
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.sh_keysc_priv* %52)
  %54 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %55 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %54, i32 0, i32 2
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_get_platdata(i32* %57)
  %59 = call i32 @memcpy(%struct.sh_keysc_info* %55, i32 %58, i32 24)
  %60 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %61 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %60, i32 0, i32 2
  store %struct.sh_keysc_info* %61, %struct.sh_keysc_info** %5, align 8
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = call i32 @resource_size(%struct.resource* %65)
  %67 = call i32* @ioremap_nocache(i32 %64, i32 %66)
  %68 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %69 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %71 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %50
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %229

80:                                               ; preds = %50
  %81 = call %struct.input_dev* (...) @input_allocate_device()
  %82 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %83 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %82, i32 0, i32 1
  store %struct.input_dev* %81, %struct.input_dev** %83, align 8
  %84 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %85 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %84, i32 0, i32 1
  %86 = load %struct.input_dev*, %struct.input_dev** %85, align 8
  %87 = icmp ne %struct.input_dev* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %224

94:                                               ; preds = %80
  %95 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %96 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %95, i32 0, i32 1
  %97 = load %struct.input_dev*, %struct.input_dev** %96, align 8
  store %struct.input_dev* %97, %struct.input_dev** %7, align 8
  %98 = load i32, i32* @EV_KEY, align 4
  %99 = call i32 @BIT_MASK(i32 %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %110 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %110, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32* %112, i32** %115, align 8
  %116 = load i32, i32* @BUS_HOST, align 4
  %117 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %127 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 256, i32* %128, align 8
  %129 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %5, align 8
  %130 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 4
  store i32* %131, i32** %133, align 8
  %134 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %134, i32 0, i32 1
  store i32 4, i32* %135, align 8
  %136 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %5, align 8
  %137 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @ARRAY_SIZE(i32* %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @sh_keysc_isr, align 4
  %144 = load i32, i32* @IRQF_ONESHOT, align 4
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @dev_name(i32* %146)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = call i32 @request_threaded_irq(i32 %142, i32* null, i32 %143, i32 %144, i32 %147, %struct.platform_device* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %94
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %221

156:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %173, %156
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %5, align 8
  %163 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %170 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @__set_bit(i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %157

176:                                              ; preds = %157
  %177 = load i32, i32* @KEY_RESERVED, align 4
  %178 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %179 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @__clear_bit(i32 %177, i32 %180)
  %182 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %183 = call i32 @input_register_device(%struct.input_dev* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %176
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = call i32 @dev_err(i32* %188, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %217

190:                                              ; preds = %176
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @pm_runtime_enable(i32* %192)
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 @pm_runtime_get_sync(i32* %195)
  %197 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %198 = load i32, i32* @KYCR1, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sh_keysc_mode, align 8
  %200 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %5, align 8
  %201 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 8
  %207 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %5, align 8
  %208 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %206, %209
  %211 = call i32 @sh_keysc_write(%struct.sh_keysc_priv* %197, i32 %198, i32 %210)
  %212 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %213 = call i32 @sh_keysc_level_mode(%struct.sh_keysc_priv* %212, i32 0)
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call i32 @device_init_wakeup(i32* %215, i32 1)
  store i32 0, i32* %2, align 4
  br label %234

217:                                              ; preds = %186
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = call i32 @free_irq(i32 %218, %struct.platform_device* %219)
  br label %221

221:                                              ; preds = %217, %152
  %222 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %223 = call i32 @input_free_device(%struct.input_dev* %222)
  br label %224

224:                                              ; preds = %221, %88
  %225 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %226 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @iounmap(i32* %227)
  br label %229

229:                                              ; preds = %224, %74
  %230 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %4, align 8
  %231 = call i32 @kfree(%struct.sh_keysc_priv* %230)
  br label %232

232:                                              ; preds = %229, %44, %38, %29, %15
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %190
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.sh_keysc_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_keysc_priv*) #1

declare dso_local i32 @memcpy(%struct.sh_keysc_info*, i32, i32) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @sh_keysc_write(%struct.sh_keysc_priv*, i32, i32) #1

declare dso_local i32 @sh_keysc_level_mode(%struct.sh_keysc_priv*, i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.sh_keysc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
