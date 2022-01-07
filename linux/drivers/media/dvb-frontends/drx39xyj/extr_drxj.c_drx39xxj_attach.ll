; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_device_addr*, i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.i2c_device_addr = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, i32, %struct.i2c_device_addr*, i32, %struct.i2c_device_addr*, i32, %struct.i2c_device_addr*, %struct.i2c_device_addr*, %struct.i2c_device_addr* }
%struct.i2c_adapter = type { i32 }
%struct.drx39xxj_state = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, i32, %struct.drx39xxj_state*, i32, %struct.drx39xxj_state*, i32, %struct.drx39xxj_state*, %struct.drx39xxj_state*, %struct.drx39xxj_state* }
%struct.drx_common_attr = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, i32, %struct.drx_common_attr*, i32, %struct.drx_common_attr*, i32, %struct.drx_common_attr*, %struct.drx_common_attr*, %struct.drx_common_attr* }
%struct.drxj_data = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, i32, %struct.drxj_data*, i32, %struct.drxj_data*, i32, %struct.drxj_data*, %struct.drxj_data*, %struct.drxj_data* }
%struct.drx_demod_instance = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, i32, %struct.drx_demod_instance*, i32, %struct.drx_demod_instance*, i32, %struct.drx_demod_instance*, %struct.drx_demod_instance*, %struct.drx_demod_instance* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@drxj_default_demod_g = common dso_local global i32 0, align 4
@drxj_default_addr_g = common dso_local global i32 0, align 4
@drxj_default_comm_attr_g = common dso_local global i32 0, align 4
@drxj_data_g = common dso_local global i32 0, align 4
@DRX39XX_MAIN_FIRMWARE = common dso_local global i32 0, align 4
@DRX_POWER_DOWN = common dso_local global i32 0, align 4
@DRX_UIO_MODE_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DRX open failed!  Aborting\0A\00", align 1
@drx39xxj_ops = common dso_local global i32 0, align 4
@FE_SCALE_RELATIVE = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @drx39xxj_attach(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.drx39xxj_state*, align 8
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca %struct.drx_common_attr*, align 8
  %7 = alloca %struct.drxj_data*, align 8
  %8 = alloca %struct.drx_demod_instance*, align 8
  %9 = alloca %struct.dtv_frontend_properties*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store %struct.drx39xxj_state* null, %struct.drx39xxj_state** %4, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %5, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %6, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %7, align 8
  store %struct.drx_demod_instance* null, %struct.drx_demod_instance** %8, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.i2c_device_addr* @kzalloc(i32 224, i32 %11)
  %13 = bitcast %struct.i2c_device_addr* %12 to %struct.drx39xxj_state*
  store %struct.drx39xxj_state* %13, %struct.drx39xxj_state** %4, align 8
  %14 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %15 = icmp eq %struct.drx39xxj_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %196

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.i2c_device_addr* @kmemdup(i32* @drxj_default_demod_g, i32 224, i32 %18)
  %20 = bitcast %struct.i2c_device_addr* %19 to %struct.drx_demod_instance*
  store %struct.drx_demod_instance* %20, %struct.drx_demod_instance** %8, align 8
  %21 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %22 = icmp eq %struct.drx_demod_instance* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %196

24:                                               ; preds = %17
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.i2c_device_addr* @kmemdup(i32* @drxj_default_addr_g, i32 224, i32 %25)
  store %struct.i2c_device_addr* %26, %struct.i2c_device_addr** %5, align 8
  %27 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %28 = icmp eq %struct.i2c_device_addr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %196

30:                                               ; preds = %24
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.i2c_device_addr* @kmemdup(i32* @drxj_default_comm_attr_g, i32 224, i32 %31)
  %33 = bitcast %struct.i2c_device_addr* %32 to %struct.drx_common_attr*
  store %struct.drx_common_attr* %33, %struct.drx_common_attr** %6, align 8
  %34 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %35 = icmp eq %struct.drx_common_attr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %196

37:                                               ; preds = %30
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.i2c_device_addr* @kmemdup(i32* @drxj_data_g, i32 224, i32 %38)
  %40 = bitcast %struct.i2c_device_addr* %39 to %struct.drxj_data*
  store %struct.drxj_data* %40, %struct.drxj_data** %7, align 8
  %41 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %42 = icmp eq %struct.drxj_data* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %196

44:                                               ; preds = %37
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %46 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %47 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %46, i32 0, i32 3
  store %struct.i2c_adapter* %45, %struct.i2c_adapter** %47, align 8
  %48 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %49 = bitcast %struct.drx_demod_instance* %48 to %struct.drx39xxj_state*
  %50 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %51 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %50, i32 0, i32 11
  store %struct.drx39xxj_state* %49, %struct.drx39xxj_state** %51, align 8
  %52 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %53 = bitcast %struct.i2c_device_addr* %52 to %struct.drx_demod_instance*
  %54 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %55 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %54, i32 0, i32 10
  store %struct.drx_demod_instance* %53, %struct.drx_demod_instance** %55, align 8
  %56 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %57 = bitcast %struct.drx_common_attr* %56 to %struct.drx_demod_instance*
  %58 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %59 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %58, i32 0, i32 7
  store %struct.drx_demod_instance* %57, %struct.drx_demod_instance** %59, align 8
  %60 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %61 = bitcast %struct.drx39xxj_state* %60 to %struct.drx_demod_instance*
  %62 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %63 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %62, i32 0, i32 10
  %64 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %63, align 8
  %65 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %64, i32 0, i32 9
  store %struct.drx_demod_instance* %61, %struct.drx_demod_instance** %65, align 8
  %66 = load i32, i32* @DRX39XX_MAIN_FIRMWARE, align 4
  %67 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %68 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %67, i32 0, i32 7
  %69 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %68, align 8
  %70 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %69, i32 0, i32 8
  store i32 %66, i32* %70, align 8
  %71 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %72 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %71, i32 0, i32 7
  %73 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %72, align 8
  %74 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %76 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %75, i32 0, i32 7
  %77 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %76, align 8
  %78 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %77, i32 0, i32 1
  store i32 5000, i32* %78, align 4
  %79 = load i32, i32* @DRX_POWER_DOWN, align 4
  %80 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %81 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %80, i32 0, i32 7
  %82 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %81, align 8
  %83 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %82, i32 0, i32 6
  store i32 %79, i32* %83, align 8
  %84 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %85 = bitcast %struct.drxj_data* %84 to %struct.drx_demod_instance*
  %86 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %87 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %86, i32 0, i32 5
  store %struct.drx_demod_instance* %85, %struct.drx_demod_instance** %87, align 8
  %88 = load i32, i32* @DRX_UIO_MODE_READWRITE, align 4
  %89 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %90 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %92 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %93 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %92, i32 0, i32 3
  store %struct.i2c_adapter* %91, %struct.i2c_adapter** %93, align 8
  %94 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %95 = bitcast %struct.drx_demod_instance* %94 to %struct.i2c_device_addr*
  %96 = call i32 @drxj_open(%struct.i2c_device_addr* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %44
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %196

101:                                              ; preds = %44
  %102 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %103 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %103, i32 0, i32 2
  %105 = call i32 @memcpy(i32* %104, i32* @drx39xxj_ops, i32 4)
  %106 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %107 = bitcast %struct.drx39xxj_state* %106 to %struct.i2c_device_addr*
  %108 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %109 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %109, i32 0, i32 1
  store %struct.i2c_device_addr* %107, %struct.i2c_device_addr** %110, align 8
  %111 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %112 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %112, i32 0, i32 0
  store %struct.dtv_frontend_properties* %113, %struct.dtv_frontend_properties** %9, align 8
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %130 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load i32, i32* @FE_SCALE_RELATIVE, align 4
  %139 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  store i32 %138, i32* %144, align 4
  %145 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  store i8* %145, i8** %151, align 8
  %152 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  store i8* %152, i8** %158, align 8
  %159 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %160 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %161 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 0
  store i8* %159, i8** %165, align 8
  %166 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %167 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %168 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 0
  store i8* %166, i8** %172, align 8
  %173 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %174 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %175 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  store i8* %173, i8** %179, align 8
  %180 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  store i8* %180, i8** %186, align 8
  %187 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %188 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %189 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  store i8* %187, i8** %193, align 8
  %194 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %195 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %194, i32 0, i32 2
  store %struct.dvb_frontend* %195, %struct.dvb_frontend** %2, align 8
  br label %211

196:                                              ; preds = %99, %43, %36, %29, %23, %16
  %197 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %198 = bitcast %struct.drxj_data* %197 to %struct.i2c_device_addr*
  %199 = call i32 @kfree(%struct.i2c_device_addr* %198)
  %200 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %201 = bitcast %struct.drx_common_attr* %200 to %struct.i2c_device_addr*
  %202 = call i32 @kfree(%struct.i2c_device_addr* %201)
  %203 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %204 = call i32 @kfree(%struct.i2c_device_addr* %203)
  %205 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %8, align 8
  %206 = bitcast %struct.drx_demod_instance* %205 to %struct.i2c_device_addr*
  %207 = call i32 @kfree(%struct.i2c_device_addr* %206)
  %208 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %4, align 8
  %209 = bitcast %struct.drx39xxj_state* %208 to %struct.i2c_device_addr*
  %210 = call i32 @kfree(%struct.i2c_device_addr* %209)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %2, align 8
  br label %211

211:                                              ; preds = %196, %101
  %212 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  ret %struct.dvb_frontend* %212
}

declare dso_local %struct.i2c_device_addr* @kzalloc(i32, i32) #1

declare dso_local %struct.i2c_device_addr* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @drxj_open(%struct.i2c_device_addr*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.i2c_device_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
