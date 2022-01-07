; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_nokia-modem.c_nokia_modem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_nokia-modem.c_nokia_modem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.nokia_modem_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hsi_client = type { i32, i32 }
%struct.hsi_port = type { i32 }
%struct.hsi_board_info = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"device tree node not found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid rst_ind interrupt (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@do_nokia_modem_rst_ind_tasklet = common dso_local global i32 0, align 4
@nokia_modem_rst_ind_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"modem_rst_ind\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Request rst_ind irq(%d) failed (flags %d)\0A\00", align 1
@pm = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Could not probe GPIOs\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ssi-protocol\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Could not register ssi-protocol device\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Missing ssi-protocol driver\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Could not load ssi-protocol driver (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cmt-speech\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Could not register cmt-speech device\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Missing cmt-speech driver\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Could not load cmt-speech driver (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Registered Nokia HSI modem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nokia_modem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_modem_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nokia_modem_device*, align 8
  %6 = alloca %struct.hsi_client*, align 8
  %7 = alloca %struct.hsi_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hsi_board_info, align 8
  %12 = alloca %struct.hsi_board_info, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.hsi_client* @to_hsi_client(%struct.device* %13)
  store %struct.hsi_client* %14, %struct.hsi_client** %6, align 8
  %15 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %16 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %15)
  store %struct.hsi_port* %16, %struct.hsi_port** %7, align 8
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %214

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.nokia_modem_device* @devm_kzalloc(%struct.device* %28, i32 32, i32 %29)
  store %struct.nokia_modem_device* %30, %struct.nokia_modem_device** %5, align 8
  %31 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %32 = icmp ne %struct.nokia_modem_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %214

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %39 = call i32 @dev_set_drvdata(%struct.device* %37, %struct.nokia_modem_device* %38)
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %42 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %41, i32 0, i32 4
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i32 @irq_of_parse_and_map(%struct.device_node* %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %36
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %214

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %56 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @irq_get_trigger_type(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %60 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %59, i32 0, i32 1
  %61 = load i32, i32* @do_nokia_modem_rst_ind_tasklet, align 4
  %62 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %63 = ptrtoint %struct.nokia_modem_device* %62 to i64
  %64 = call i32 @tasklet_init(i32* %60, i32 %61, i64 %63)
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @nokia_modem_rst_ind_isr, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %70 = call i32 @devm_request_irq(%struct.device* %65, i32 %66, i32 %67, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.nokia_modem_device* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %53
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %2, align 4
  br label %214

79:                                               ; preds = %53
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @enable_irq_wake(i32 %80)
  %82 = load i64, i64* @pm, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %3, align 8
  %86 = call i32 @nokia_modem_gpio_probe(%struct.device* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %205

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %79
  %94 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %96 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %11, i32 0, i32 4
  store i32 %97, i32* %98, align 4
  %99 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %100 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %11, i32 0, i32 3
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %11, i32 0, i32 2
  store i32* null, i32** %103, align 8
  %104 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %11, i32 0, i32 1
  store i32* null, i32** %104, align 8
  %105 = load %struct.hsi_port*, %struct.hsi_port** %7, align 8
  %106 = call i8* @hsi_new_client(%struct.hsi_port* %105, %struct.hsi_board_info* %11)
  %107 = bitcast i8* %106 to %struct.TYPE_4__*
  %108 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %109 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %108, i32 0, i32 2
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %109, align 8
  %110 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %111 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = icmp ne %struct.TYPE_4__* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %93
  %115 = load %struct.device*, %struct.device** %3, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %202

119:                                              ; preds = %93
  %120 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %121 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = call i32 @device_attach(i32* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.device*, %struct.device** %3, align 8
  %129 = call i32 @dev_dbg(%struct.device* %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* @EPROBE_DEFER, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %196

132:                                              ; preds = %119
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.device*, %struct.device** %3, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %137)
  br label %196

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %141, align 8
  %142 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %143 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %12, i32 0, i32 4
  store i32 %144, i32* %145, align 4
  %146 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %147 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %12, i32 0, i32 3
  store i32 %148, i32* %149, align 8
  %150 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %12, i32 0, i32 2
  store i32* null, i32** %150, align 8
  %151 = getelementptr inbounds %struct.hsi_board_info, %struct.hsi_board_info* %12, i32 0, i32 1
  store i32* null, i32** %151, align 8
  %152 = load %struct.hsi_port*, %struct.hsi_port** %7, align 8
  %153 = call i8* @hsi_new_client(%struct.hsi_port* %152, %struct.hsi_board_info* %12)
  %154 = bitcast i8* %153 to %struct.TYPE_3__*
  %155 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %156 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %155, i32 0, i32 3
  store %struct.TYPE_3__* %154, %struct.TYPE_3__** %156, align 8
  %157 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %158 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %157, i32 0, i32 3
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = icmp ne %struct.TYPE_3__* %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %140
  %162 = load %struct.device*, %struct.device** %3, align 8
  %163 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %10, align 4
  br label %196

166:                                              ; preds = %140
  %167 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %168 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %167, i32 0, i32 3
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = call i32 @device_attach(i32* %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load %struct.device*, %struct.device** %3, align 8
  %176 = call i32 @dev_dbg(%struct.device* %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %177 = load i32, i32* @EPROBE_DEFER, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %10, align 4
  br label %190

179:                                              ; preds = %166
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.device*, %struct.device** %3, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %184)
  br label %190

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.device*, %struct.device** %3, align 8
  %189 = call i32 @dev_info(%struct.device* %188, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %214

190:                                              ; preds = %182, %174
  %191 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %192 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %191, i32 0, i32 3
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = call i32 @hsi_remove_client(i32* %194, i32* null)
  br label %196

196:                                              ; preds = %190, %161, %135, %127
  %197 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %198 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %197, i32 0, i32 2
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = call i32 @hsi_remove_client(i32* %200, i32* null)
  br label %202

202:                                              ; preds = %196, %114
  %203 = load %struct.device*, %struct.device** %3, align 8
  %204 = call i32 @nokia_modem_gpio_unexport(%struct.device* %203)
  br label %205

205:                                              ; preds = %202, %89
  %206 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %207 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @disable_irq_wake(i32 %208)
  %210 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %211 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %210, i32 0, i32 1
  %212 = call i32 @tasklet_kill(i32* %211)
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %205, %187, %73, %47, %33, %22
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.hsi_client* @to_hsi_client(%struct.device*) #1

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.nokia_modem_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.nokia_modem_device*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.nokia_modem_device*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @nokia_modem_gpio_probe(%struct.device*) #1

declare dso_local i8* @hsi_new_client(%struct.hsi_port*, %struct.hsi_board_info*) #1

declare dso_local i32 @device_attach(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @hsi_remove_client(i32*, i32*) #1

declare dso_local i32 @nokia_modem_gpio_unexport(%struct.device*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
