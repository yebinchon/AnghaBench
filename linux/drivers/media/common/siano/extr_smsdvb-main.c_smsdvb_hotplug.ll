; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.device = type { i32 }
%struct.smsclient_params_t = type { i32, %struct.smsdvb_client_t*, i32, i32, i32 }
%struct.smsdvb_client_t = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32, %struct.smscore_device_t*, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dvb_register_adapter() failed %d\0A\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@smsdvb_start_feed = common dso_local global i32 0, align 4
@smsdvb_stop_feed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"dvb_dmx_init failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"dvb_dmxdev_init failed %d\0A\00", align 1
@smsdvb_fe_ops = common dso_local global i32 0, align 4
@SYS_DVBT = common dso_local global i32 0, align 4
@SYS_ISDBT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"frontend registration failed %d\0A\00", align 1
@MSG_SMS_DVBT_BDA_DATA = common dso_local global i32 0, align 4
@smsdvb_onresponse = common dso_local global i32 0, align 4
@smsdvb_onremove = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"smscore_register_client() failed %d\0A\00", align 1
@g_smsdvb_clientslock = common dso_local global i32 0, align 4
@g_smsdvb_clients = common dso_local global i32 0, align 4
@DVB3_EVENT_HOTPLUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to create debugfs node\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"dvb_create_media_graph failed %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"DVB interface registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, %struct.device*, i32)* @smsdvb_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_hotplug(%struct.smscore_device_t* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_device_t*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smsclient_params_t, align 8
  %9 = alloca %struct.smsdvb_client_t*, align 8
  %10 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %211

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.smsdvb_client_t* @kzalloc(i32 96, i32 %15)
  store %struct.smsdvb_client_t* %16, %struct.smsdvb_client_t** %9, align 8
  %17 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %18 = icmp ne %struct.smsdvb_client_t* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %211

22:                                               ; preds = %14
  %23 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %24 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %23, i32 0, i32 2
  %25 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %26 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %25)
  %27 = call %struct.TYPE_11__* @sms_get_board(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* @adapter_nr, align 4
  %33 = call i32 @dvb_register_adapter(i32* %24, i32 %29, i32 %30, %struct.device* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %207

39:                                               ; preds = %22
  %40 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %41 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %40, i32 0, i32 2
  %42 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %43 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dvb_register_media_controller(i32* %41, i32 %44)
  %46 = load i32, i32* @DMX_TS_FILTERING, align 4
  %47 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %48 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %52 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 32, i32* %53, align 4
  %54 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %55 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  store i32 32, i32* %56, align 4
  %57 = load i32, i32* @smsdvb_start_feed, align 4
  %58 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %59 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @smsdvb_stop_feed, align 4
  %62 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %63 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %66 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %65, i32 0, i32 3
  %67 = call i32 @dvb_dmx_init(%struct.TYPE_15__* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %39
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %201

73:                                               ; preds = %39
  %74 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %75 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 32, i32* %76, align 8
  %77 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %78 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %81 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %84 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %87 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %86, i32 0, i32 4
  %88 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %89 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %88, i32 0, i32 2
  %90 = call i32 @dvb_dmxdev_init(%struct.TYPE_14__* %87, i32* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %73
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %197

96:                                               ; preds = %73
  %97 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %98 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = call i32 @memcpy(%struct.TYPE_12__* %99, i32* @smsdvb_fe_ops, i32 4)
  %101 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %102 = call i32 @smscore_get_device_mode(%struct.smscore_device_t* %101)
  switch i32 %102, label %119 [
    i32 131, label %103
    i32 130, label %103
    i32 129, label %111
    i32 128, label %111
  ]

103:                                              ; preds = %96, %96
  %104 = load i32, i32* @SYS_DVBT, align 4
  %105 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %106 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %104, i32* %110, align 4
  br label %119

111:                                              ; preds = %96, %96
  %112 = load i32, i32* @SYS_ISDBT, align 4
  %113 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %114 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %96, %111, %103
  %120 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %121 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %120, i32 0, i32 2
  %122 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %123 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %122, i32 0, i32 5
  %124 = call i32 @dvb_register_frontend(i32* %121, %struct.TYPE_13__* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %193

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* @MSG_SMS_DVBT_BDA_DATA, align 4
  %133 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 4
  store i32 %132, i32* %133, align 8
  %134 = load i32, i32* @smsdvb_onresponse, align 4
  %135 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 3
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @smsdvb_onremove, align 4
  %137 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 2
  store i32 %136, i32* %137, align 8
  %138 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %139 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 1
  store %struct.smsdvb_client_t* %138, %struct.smsdvb_client_t** %139, align 8
  %140 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %141 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %142 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %141, i32 0, i32 10
  %143 = call i32 @smscore_register_client(%struct.smscore_device_t* %140, %struct.smsclient_params_t* %8, i32* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %130
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %189

149:                                              ; preds = %130
  %150 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %151 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %152 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %151, i32 0, i32 9
  store %struct.smscore_device_t* %150, %struct.smscore_device_t** %152, align 8
  %153 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %154 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %153, i32 0, i32 8
  %155 = call i32 @init_completion(i32* %154)
  %156 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %157 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %156, i32 0, i32 7
  %158 = call i32 @init_completion(i32* %157)
  %159 = call i32 @kmutex_lock(i32* @g_smsdvb_clientslock)
  %160 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %161 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %160, i32 0, i32 6
  %162 = call i32 @list_add(i32* %161, i32* @g_smsdvb_clients)
  %163 = call i32 @kmutex_unlock(i32* @g_smsdvb_clientslock)
  %164 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %165 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %164, i32 0, i32 0
  store i32 -1, i32* %165, align 8
  %166 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %167 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %166, i32 0, i32 1
  store i32 -1, i32* %167, align 4
  %168 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %169 = load i32, i32* @DVB3_EVENT_HOTPLUG, align 4
  %170 = call i32 @sms_board_dvb3_event(%struct.smsdvb_client_t* %168, i32 %169)
  %171 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %172 = call i32 @sms_board_setup(%struct.smscore_device_t* %171)
  %173 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %174 = call i64 @smsdvb_debugfs_create(%struct.smsdvb_client_t* %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %149
  %177 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %149
  %179 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %180 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %179, i32 0, i32 2
  %181 = call i32 @dvb_create_media_graph(i32* %180, i32 1)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  br label %189

187:                                              ; preds = %178
  %188 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %211

189:                                              ; preds = %184, %146
  %190 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %191 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %190, i32 0, i32 5
  %192 = call i32 @dvb_unregister_frontend(%struct.TYPE_13__* %191)
  br label %193

193:                                              ; preds = %189, %127
  %194 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %195 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %194, i32 0, i32 4
  %196 = call i32 @dvb_dmxdev_release(%struct.TYPE_14__* %195)
  br label %197

197:                                              ; preds = %193, %93
  %198 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %199 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %198, i32 0, i32 3
  %200 = call i32 @dvb_dmx_release(%struct.TYPE_15__* %199)
  br label %201

201:                                              ; preds = %197, %70
  %202 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %203 = call i32 @smsdvb_media_device_unregister(%struct.smsdvb_client_t* %202)
  %204 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %205 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %204, i32 0, i32 2
  %206 = call i32 @dvb_unregister_adapter(i32* %205)
  br label %207

207:                                              ; preds = %201, %36
  %208 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %209 = call i32 @kfree(%struct.smsdvb_client_t* %208)
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %207, %187, %19, %13
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.smsdvb_client_t* @kzalloc(i32, i32) #1

declare dso_local i32 @dvb_register_adapter(i32*, i32, i32, %struct.device*, i32) #1

declare dso_local %struct.TYPE_11__* @sms_get_board(i32) #1

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dvb_register_media_controller(i32*, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_15__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @smscore_get_device_mode(%struct.smscore_device_t*) #1

declare dso_local i32 @dvb_register_frontend(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @smscore_register_client(%struct.smscore_device_t*, %struct.smsclient_params_t*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kmutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kmutex_unlock(i32*) #1

declare dso_local i32 @sms_board_dvb3_event(%struct.smsdvb_client_t*, i32) #1

declare dso_local i32 @sms_board_setup(%struct.smscore_device_t*) #1

declare dso_local i64 @smsdvb_debugfs_create(%struct.smsdvb_client_t*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @dvb_create_media_graph(i32*, i32) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_14__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_15__*) #1

declare dso_local i32 @smsdvb_media_device_unregister(%struct.smsdvb_client_t*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.smsdvb_client_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
