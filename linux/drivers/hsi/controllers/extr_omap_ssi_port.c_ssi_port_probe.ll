; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hsi_port = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_ssi_port = type { i64, %struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }
%struct.hsi_controller = type { i64, %struct.hsi_port** }
%struct.omap_ssi_controller = type { i32, %struct.omap_ssi_port** }

@.str = private unnamed_addr constant [18 x i8] c"init ssi port...\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ssi controller not initialized!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"port id out of range!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"missing device tree data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"ti,ssi-cawake\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"couldn't get cawake gpio (err=%d)!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ssi_process_errqueue = common dso_local global i32 0, align 4
@start_tx_work = common dso_local global i32 0, align 4
@ssi_async = common dso_local global i32 0, align 4
@ssi_setup = common dso_local global i32 0, align 4
@ssi_flush = common dso_local global i32 0, align 4
@ssi_start_tx = common dso_local global i32 0, align 4
@ssi_stop_tx = common dso_local global i32 0, align 4
@ssi_release = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"ssi port %u successfully initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ssi_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_port_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.hsi_port*, align 8
  %6 = alloca %struct.omap_ssi_port*, align 8
  %7 = alloca %struct.hsi_controller*, align 8
  %8 = alloca %struct.omap_ssi_controller*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.hsi_controller* @dev_get_drvdata(i32 %19)
  store %struct.hsi_controller* %20, %struct.hsi_controller** %7, align 8
  %21 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %22 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %21)
  store %struct.omap_ssi_controller* %22, %struct.omap_ssi_controller** %8, align 8
  store %struct.gpio_desc* null, %struct.gpio_desc** %9, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %27 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %26, i32 0, i32 1
  %28 = load %struct.hsi_port**, %struct.hsi_port*** %27, align 8
  %29 = icmp ne %struct.hsi_port** %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %8, align 8
  %32 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %31, i32 0, i32 1
  %33 = load %struct.omap_ssi_port**, %struct.omap_ssi_port*** %32, align 8
  %34 = icmp ne %struct.omap_ssi_port** %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %228

41:                                               ; preds = %30
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %45 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %8, align 8
  %50 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %49, i32 0, i32 1
  %51 = load %struct.omap_ssi_port**, %struct.omap_ssi_port*** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.omap_ssi_port*, %struct.omap_ssi_port** %51, i64 %52
  %54 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %53, align 8
  %55 = icmp ne %struct.omap_ssi_port* %54, null
  br label %56

56:                                               ; preds = %48, %42
  %57 = phi i1 [ false, %42 ], [ %55, %48 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %42

62:                                               ; preds = %56
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %65 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %228

74:                                               ; preds = %62
  %75 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %76 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %75, i32 0, i32 1
  %77 = load %struct.hsi_port**, %struct.hsi_port*** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.hsi_port*, %struct.hsi_port** %77, i64 %78
  %80 = load %struct.hsi_port*, %struct.hsi_port** %79, align 8
  store %struct.hsi_port* %80, %struct.hsi_port** %5, align 8
  %81 = load %struct.device_node*, %struct.device_node** %4, align 8
  %82 = icmp ne %struct.device_node* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %74
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %228

89:                                               ; preds = %74
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* @GPIOD_IN, align 4
  %93 = call %struct.gpio_desc* @devm_gpiod_get(%struct.TYPE_9__* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  store %struct.gpio_desc* %93, %struct.gpio_desc** %9, align 8
  %94 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %95 = call i64 @IS_ERR(%struct.gpio_desc* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %99 = call i32 @PTR_ERR(%struct.gpio_desc* %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %228

104:                                              ; preds = %89
  %105 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %106 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %105, i32 0, i32 0
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.omap_ssi_port* @devm_kzalloc(i32* %106, i32 64, i32 %107)
  store %struct.omap_ssi_port* %108, %struct.omap_ssi_port** %6, align 8
  %109 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %110 = icmp ne %struct.omap_ssi_port* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %228

114:                                              ; preds = %104
  %115 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %116 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %117 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %116, i32 0, i32 11
  store %struct.gpio_desc* %115, %struct.gpio_desc** %117, align 8
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %121 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %120, i32 0, i32 1
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %121, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %124 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %126 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %125, i32 0, i32 10
  %127 = load i32, i32* @ssi_process_errqueue, align 4
  %128 = call i32 @INIT_DEFERRABLE_WORK(i32* %126, i32 %127)
  %129 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %130 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %129, i32 0, i32 9
  %131 = load i32, i32* @start_tx_work, align 4
  %132 = call i32 @INIT_WORK(i32* %130, i32 %131)
  %133 = load i32, i32* @ssi_async, align 4
  %134 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %135 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @ssi_setup, align 4
  %137 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %138 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @ssi_flush, align 4
  %140 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %141 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @ssi_start_tx, align 4
  %143 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %144 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @ssi_stop_tx, align 4
  %146 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %147 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @ssi_release, align 4
  %149 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %150 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %152 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %153 = call i32 @hsi_port_set_drvdata(%struct.hsi_port* %151, %struct.omap_ssi_port* %152)
  %154 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %155 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %8, align 8
  %156 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %155, i32 0, i32 1
  %157 = load %struct.omap_ssi_port**, %struct.omap_ssi_port*** %156, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds %struct.omap_ssi_port*, %struct.omap_ssi_port** %157, i64 %158
  store %struct.omap_ssi_port* %154, %struct.omap_ssi_port** %159, align 8
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %162 = call i32 @platform_set_drvdata(%struct.platform_device* %160, %struct.hsi_port* %161)
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %165 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %164, i32 0, i32 8
  %166 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %167 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %166, i32 0, i32 7
  %168 = call i32 @ssi_port_get_iomem(%struct.platform_device* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %165, i32* %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %114
  br label %228

172:                                              ; preds = %114
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %175 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %174, i32 0, i32 6
  %176 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %177 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %176, i32 0, i32 5
  %178 = call i32 @ssi_port_get_iomem(%struct.platform_device* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %175, i32* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %228

182:                                              ; preds = %172
  %183 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = call i32 @ssi_port_irq(%struct.hsi_port* %183, %struct.platform_device* %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %228

189:                                              ; preds = %182
  %190 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = call i32 @ssi_wake_irq(%struct.hsi_port* %190, %struct.platform_device* %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %228

196:                                              ; preds = %189
  %197 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %198 = call i32 @ssi_queues_init(%struct.omap_ssi_port* %197)
  %199 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %200 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %199, i32 0, i32 4
  %201 = call i32 @spin_lock_init(i32* %200)
  %202 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %203 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %202, i32 0, i32 3
  %204 = call i32 @spin_lock_init(i32* %203)
  %205 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %206 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %205, i32 0, i32 0
  %207 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %208 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %207, i32 0, i32 2
  store i32* %206, i32** %208, align 8
  %209 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %210 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %209, i32 0, i32 1
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_9__* %211)
  %213 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %214 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %213, i32 0, i32 1
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_9__* %215, i32 250)
  %217 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %218 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %217, i32 0, i32 1
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %219)
  %221 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %222 = load %struct.device_node*, %struct.device_node** %4, align 8
  %223 = call i32 @hsi_add_clients_from_dt(%struct.hsi_port* %221, %struct.device_node* %222)
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = load i64, i64* %10, align 8
  %227 = call i32 @dev_info(%struct.TYPE_9__* %225, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %226)
  store i32 0, i32* %2, align 4
  br label %230

228:                                              ; preds = %195, %188, %181, %171, %111, %97, %83, %68, %35
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %228, %196
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.hsi_controller* @dev_get_drvdata(i32) #1

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.omap_ssi_port* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hsi_port_set_drvdata(%struct.hsi_port*, %struct.omap_ssi_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hsi_port*) #1

declare dso_local i32 @ssi_port_get_iomem(%struct.platform_device*, i8*, i32*, i32*) #1

declare dso_local i32 @ssi_port_irq(%struct.hsi_port*, %struct.platform_device*) #1

declare dso_local i32 @ssi_wake_irq(%struct.hsi_port*, %struct.platform_device*) #1

declare dso_local i32 @ssi_queues_init(%struct.omap_ssi_port*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @hsi_add_clients_from_dt(%struct.hsi_port*, %struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
