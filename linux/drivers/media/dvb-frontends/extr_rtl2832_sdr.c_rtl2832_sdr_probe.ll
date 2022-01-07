; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32*, %struct.TYPE_32__*, %struct.TYPE_31__* }
%struct.TYPE_32__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, i32*, i32, i32*, i32*, %struct.rtl2832_sdr_dev*, i32 }
%struct.rtl2832_sdr_dev = type { i32, %struct.TYPE_23__, %struct.TYPE_32__, %struct.TYPE_30__, i32, i32, %struct.TYPE_31__, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.platform_device*, %struct.v4l2_subdev* }
%struct.platform_device = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_28__*, %struct.rtl2832_sdr_platform_data* }
%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.rtl2832_sdr_platform_data = type { i32, %struct.TYPE_29__*, i32, %struct.v4l2_subdev* }
%struct.TYPE_29__ = type { i32 }
%struct.v4l2_subdev = type { i32 }

@rtl2832_sdr_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot proceed without platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"No parent device\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Refcount fail\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bands_adc = common dso_local global %struct.TYPE_27__* null, align 8
@bands_fm = common dso_local global %struct.TYPE_26__* null, align 8
@formats = common dso_local global %struct.TYPE_24__* null, align 8
@NUM_FORMATS = common dso_local global i32 0, align 4
@rtl2832_sdr_emulated_fmt = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SDR_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@rtl2832_sdr_vb2_ops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not initialize vb2 queue\0A\00", align 1
@V4L2_CID_RF_TUNER_BANDWIDTH_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_BANDWIDTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Unsupported tuner\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@rtl2832_sdr_template = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@rtl2832_sdr_video_release = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register v4l2-device %d\0A\00", align 1
@VFL_DIR_RX = common dso_local global i32 0, align 4
@VFL_TYPE_SDR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to register as video device %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Registered as %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Realtek RTL2832 SDR attached\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"SDR API is still slightly experimental and functionality changes may follow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtl2832_sdr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtl2832_sdr_dev*, align 8
  %5 = alloca %struct.rtl2832_sdr_platform_data*, align 8
  %6 = alloca %struct.v4l2_ctrl_ops*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %10, i32 0, i32 1
  %12 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %11, align 8
  store %struct.rtl2832_sdr_platform_data* %12, %struct.rtl2832_sdr_platform_data** %5, align 8
  store %struct.v4l2_ctrl_ops* @rtl2832_sdr_ctrl_ops, %struct.v4l2_ctrl_ops** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(%struct.TYPE_33__* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %17 = icmp ne %struct.rtl2832_sdr_platform_data* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_err(%struct.TYPE_33__* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %371

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %31 = icmp ne %struct.TYPE_25__* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(%struct.TYPE_33__* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %371

38:                                               ; preds = %24
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @try_module_get(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_err(%struct.TYPE_33__* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %371

55:                                               ; preds = %38
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.rtl2832_sdr_dev* @kzalloc(i32 184, i32 %56)
  store %struct.rtl2832_sdr_dev* %57, %struct.rtl2832_sdr_dev** %4, align 8
  %58 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %59 = icmp eq %struct.rtl2832_sdr_dev* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %361

63:                                               ; preds = %55
  %64 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %65 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %64, i32 0, i32 3
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %65, align 8
  store %struct.v4l2_subdev* %66, %struct.v4l2_subdev** %7, align 8
  %67 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %68 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %67, i32 0, i32 3
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %68, align 8
  %70 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %71 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %70, i32 0, i32 18
  store %struct.v4l2_subdev* %69, %struct.v4l2_subdev** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %74 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %73, i32 0, i32 17
  store %struct.platform_device* %72, %struct.platform_device** %74, align 8
  %75 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %76 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %79 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %78, i32 0, i32 16
  store i32 %77, i32* %79, align 4
  %80 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %81 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %86 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %85, i32 0, i32 15
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** @bands_adc, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %92 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %91, i32 0, i32 14
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** @bands_fm, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %98 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** @formats, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %104 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** @formats, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %110 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @NUM_FORMATS, align 4
  %112 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %113 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @rtl2832_sdr_emulated_fmt, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %63
  %117 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %118 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %116, %63
  %122 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %123 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %122, i32 0, i32 4
  %124 = call i32 @mutex_init(i32* %123)
  %125 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %126 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %125, i32 0, i32 5
  %127 = call i32 @mutex_init(i32* %126)
  %128 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %129 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %128, i32 0, i32 10
  %130 = call i32 @spin_lock_init(i32* %129)
  %131 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %132 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %131, i32 0, i32 9
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load i32, i32* @V4L2_BUF_TYPE_SDR_CAPTURE, align 4
  %135 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %136 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 7
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* @VB2_MMAP, align 4
  %139 = load i32, i32* @VB2_USERPTR, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @VB2_READ, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %144 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %147 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %148 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 6
  store %struct.rtl2832_sdr_dev* %146, %struct.rtl2832_sdr_dev** %149, align 8
  %150 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %151 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 1
  store i32 4, i32* %152, align 4
  %153 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %154 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 5
  store i32* @rtl2832_sdr_vb2_ops, i32** %155, align 8
  %156 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %157 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 4
  store i32* @vb2_vmalloc_memops, i32** %158, align 8
  %159 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %160 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %161 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 8
  %163 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %164 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %163, i32 0, i32 6
  %165 = call i32 @vb2_queue_init(%struct.TYPE_31__* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %121
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_err(%struct.TYPE_33__* %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %358

172:                                              ; preds = %121
  %173 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %174 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %246 [
    i32 133, label %176
    i32 129, label %190
    i32 128, label %190
    i32 132, label %211
    i32 131, label %211
    i32 130, label %232
  ]

176:                                              ; preds = %172
  %177 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %178 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %177, i32 0, i32 1
  %179 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_23__* %178, i32 9)
  %180 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %181 = icmp ne %struct.v4l2_subdev* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %184 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %183, i32 0, i32 1
  %185 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %186 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @v4l2_ctrl_add_handler(%struct.TYPE_23__* %184, i32 %187, i32* null, i32 1)
  br label %189

189:                                              ; preds = %182, %176
  br label %253

190:                                              ; preds = %172, %172
  %191 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %192 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %191, i32 0, i32 1
  %193 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_23__* %192, i32 2)
  %194 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %195 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %194, i32 0, i32 1
  %196 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %197 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH_AUTO, align 4
  %198 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_23__* %195, %struct.v4l2_ctrl_ops* %196, i32 %197, i32 0, i32 1, i32 1, i32 1)
  %199 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %200 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %199, i32 0, i32 7
  store i8* %198, i8** %200, align 8
  %201 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %202 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %201, i32 0, i32 1
  %203 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %204 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH, align 4
  %205 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_23__* %202, %struct.v4l2_ctrl_ops* %203, i32 %204, i32 0, i32 8000000, i32 100000, i32 0)
  %206 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %207 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %206, i32 0, i32 8
  store i8* %205, i8** %207, align 8
  %208 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %209 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %208, i32 0, i32 7
  %210 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %209, i32 0, i32 0)
  br label %253

211:                                              ; preds = %172, %172
  %212 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %213 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %212, i32 0, i32 1
  %214 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_23__* %213, i32 2)
  %215 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %216 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %215, i32 0, i32 1
  %217 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %218 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH_AUTO, align 4
  %219 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_23__* %216, %struct.v4l2_ctrl_ops* %217, i32 %218, i32 0, i32 1, i32 1, i32 1)
  %220 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %221 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %220, i32 0, i32 7
  store i8* %219, i8** %221, align 8
  %222 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %223 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %222, i32 0, i32 1
  %224 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %225 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH, align 4
  %226 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_23__* %223, %struct.v4l2_ctrl_ops* %224, i32 %225, i32 6000000, i32 8000000, i32 1000000, i32 6000000)
  %227 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %228 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %227, i32 0, i32 8
  store i8* %226, i8** %228, align 8
  %229 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %230 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %229, i32 0, i32 7
  %231 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %230, i32 0, i32 0)
  br label %253

232:                                              ; preds = %172
  %233 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %234 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %233, i32 0, i32 1
  %235 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_23__* %234, i32 2)
  %236 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %237 = icmp ne %struct.v4l2_subdev* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %240 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %239, i32 0, i32 1
  %241 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %242 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @v4l2_ctrl_add_handler(%struct.TYPE_23__* %240, i32 %243, i32* null, i32 1)
  br label %245

245:                                              ; preds = %238, %232
  br label %253

246:                                              ; preds = %172
  %247 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %248 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %247, i32 0, i32 1
  %249 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_23__* %248, i32 0)
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_err(%struct.TYPE_33__* %251, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %354

253:                                              ; preds = %245, %211, %190, %189
  %254 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %255 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %253
  %260 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %261 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %8, align 4
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 0
  %266 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_err(%struct.TYPE_33__* %265, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %354

267:                                              ; preds = %253
  %268 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %269 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %268, i32 0, i32 3
  %270 = bitcast %struct.TYPE_30__* %269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %270, i8* align 8 bitcast (%struct.TYPE_30__* @rtl2832_sdr_template to i8*), i64 32, i1 false)
  %271 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %272 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %271, i32 0, i32 6
  %273 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %274 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 3
  store %struct.TYPE_31__* %272, %struct.TYPE_31__** %275, align 8
  %276 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %277 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %276, i32 0, i32 5
  %278 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %279 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 3
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 2
  store i32* %277, i32** %282, align 8
  %283 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %284 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %283, i32 0, i32 3
  %285 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %286 = call i32 @video_set_drvdata(%struct.TYPE_30__* %284, %struct.rtl2832_sdr_dev* %285)
  %287 = load i32, i32* @rtl2832_sdr_video_release, align 4
  %288 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %289 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %289, i32 0, i32 1
  store i32 %287, i32* %290, align 8
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %294 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %293, i32 0, i32 2
  %295 = call i32 @v4l2_device_register(%struct.TYPE_33__* %292, %struct.TYPE_32__* %294)
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* %8, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %267
  %299 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %300 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %299, i32 0, i32 0
  %301 = load i32, i32* %8, align 4
  %302 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_err(%struct.TYPE_33__* %300, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %301)
  br label %354

303:                                              ; preds = %267
  %304 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %305 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %304, i32 0, i32 1
  %306 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %307 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 0
  store %struct.TYPE_23__* %305, %struct.TYPE_23__** %308, align 8
  %309 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %310 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %309, i32 0, i32 2
  %311 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %312 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %312, i32 0, i32 2
  store %struct.TYPE_32__* %310, %struct.TYPE_32__** %313, align 8
  %314 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %315 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %314, i32 0, i32 4
  %316 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %317 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %317, i32 0, i32 1
  store i32* %315, i32** %318, align 8
  %319 = load i32, i32* @VFL_DIR_RX, align 4
  %320 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %321 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %321, i32 0, i32 0
  store i32 %319, i32* %322, align 8
  %323 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %324 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %323, i32 0, i32 3
  %325 = load i32, i32* @VFL_TYPE_SDR, align 4
  %326 = call i32 @video_register_device(%struct.TYPE_30__* %324, i32 %325, i32 -1)
  store i32 %326, i32* %8, align 4
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %303
  %330 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %331 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %330, i32 0, i32 0
  %332 = load i32, i32* %8, align 4
  %333 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_err(%struct.TYPE_33__* %331, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %332)
  br label %350

334:                                              ; preds = %303
  %335 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %336 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %335, i32 0, i32 0
  %337 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %338 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %337, i32 0, i32 3
  %339 = call i32 @video_device_node_name(%struct.TYPE_30__* %338)
  %340 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_info(%struct.TYPE_33__* %336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %339)
  %341 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %342 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %341, i32 0, i32 0
  %343 = call i32 (%struct.TYPE_33__*, i8*, ...) @dev_info(%struct.TYPE_33__* %342, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %344 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %345 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %344, i32 0, i32 0
  %346 = call i32 @dev_notice(%struct.TYPE_33__* %345, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i64 0, i64 0))
  %347 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %348 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %349 = call i32 @platform_set_drvdata(%struct.platform_device* %347, %struct.rtl2832_sdr_dev* %348)
  store i32 0, i32* %2, align 4
  br label %373

350:                                              ; preds = %329
  %351 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %352 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %351, i32 0, i32 2
  %353 = call i32 @v4l2_device_unregister(%struct.TYPE_32__* %352)
  br label %354

354:                                              ; preds = %350, %298, %259, %246
  %355 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %356 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %355, i32 0, i32 1
  %357 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_23__* %356)
  br label %358

358:                                              ; preds = %354, %168
  %359 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %4, align 8
  %360 = call i32 @kfree(%struct.rtl2832_sdr_dev* %359)
  br label %361

361:                                              ; preds = %358, %60
  %362 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %363 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @module_put(i32 %369)
  br label %371

371:                                              ; preds = %361, %49, %32, %18
  %372 = load i32, i32* %8, align 4
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %371, %334
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local i32 @dev_dbg(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_33__*, i8*, ...) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.rtl2832_sdr_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_31__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @v4l2_ctrl_add_handler(%struct.TYPE_23__*, i32, i32*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_23__*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_30__*, %struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @v4l2_device_register(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_33__*, i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_30__*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_32__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_23__*) #1

declare dso_local i32 @kfree(%struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
