; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i8*, i32, i32 }
%struct.xenbus_device_id = type { i32 }
%struct.xenkbd_info = type { i32, i32, i32, %struct.input_dev*, %struct.xenbus_device*, i32, %struct.input_dev*, %struct.input_dev*, i8* }
%struct.input_dev = type { i8*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"allocating info structure\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"xenbus/%s\00", align 1
@__GFP_ZERO = common dso_local global i32 0, align 4
@XENKBD_FIELD_FEAT_DSBL_KEYBRD = common dso_local global i32 0, align 4
@XENKBD_FIELD_FEAT_DSBL_POINTER = common dso_local global i32 0, align 4
@XENKBD_FIELD_FEAT_MTOUCH = common dso_local global i32 0, align 4
@XBT_NIL = common dso_local global i32 0, align 4
@XENKBD_FIELD_REQ_MTOUCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"xenkbd: can't request multi-touch\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Xen Virtual Keyboard\00", align 1
@BUS_PCI = common dso_local global i8* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@KEY_ESC = common dso_local global i32 0, align 4
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@KEY_OK = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"input_register_device(kbd)\00", align 1
@XENKBD_FIELD_FEAT_ABS_POINTER = common dso_local global i32 0, align 4
@XENKBD_FIELD_WIDTH = common dso_local global i32 0, align 4
@ptr_size = common dso_local global i32* null, align 8
@KPARAM_X = common dso_local global i64 0, align 8
@XENKBD_FIELD_HEIGHT = common dso_local global i32 0, align 4
@KPARAM_Y = common dso_local global i64 0, align 8
@XENKBD_FIELD_REQ_ABS_POINTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"xenkbd: can't request abs-pointer\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Xen Virtual Pointer\00", align 1
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_TASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"input_register_device(ptr)\00", align 1
@XENKBD_FIELD_MT_NUM_CONTACTS = common dso_local global i32 0, align 4
@XENKBD_FIELD_MT_WIDTH = common dso_local global i32 0, align 4
@XENFB_WIDTH = common dso_local global i32 0, align 4
@XENKBD_FIELD_MT_HEIGHT = common dso_local global i32 0, align 4
@XENFB_HEIGHT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Xen Virtual Multi-touch\00", align 1
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"input_mt_init_slots\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"input_register_device(mtouch)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"allocating device memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @xenkbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenkbd_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xenkbd_info*, align 8
  %12 = alloca %struct.input_dev*, align 8
  %13 = alloca %struct.input_dev*, align 8
  %14 = alloca %struct.input_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.xenkbd_info* @kzalloc(i32 64, i32 %19)
  store %struct.xenkbd_info* %20, %struct.xenkbd_info** %11, align 8
  %21 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %22 = icmp ne %struct.xenkbd_info* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %24, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %442

30:                                               ; preds = %2
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %32 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 2
  %33 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %34 = call i32 @dev_set_drvdata(i32* %32, %struct.xenkbd_info* %33)
  %35 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %36 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %37 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %36, i32 0, i32 4
  store %struct.xenbus_device* %35, %struct.xenbus_device** %37, align 8
  %38 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %39 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %41 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 4
  %42 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %43 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %46 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load i32, i32* @__GFP_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @__get_free_page(i32 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %55 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %57 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %56, i32 0, i32 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %30
  br label %432

61:                                               ; preds = %30
  %62 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %63 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @XENKBD_FIELD_FEAT_DSBL_KEYBRD, align 4
  %66 = call i8* @xenbus_read_unsigned(i32 %64, i32 %65, i32 0)
  %67 = icmp ne i8* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %71 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @XENKBD_FIELD_FEAT_DSBL_POINTER, align 4
  %74 = call i8* @xenbus_read_unsigned(i32 %72, i32 %73, i32 0)
  %75 = icmp ne i8* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %79 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @XENKBD_FIELD_FEAT_MTOUCH, align 4
  %82 = call i8* @xenbus_read_unsigned(i32 %80, i32 %81, i32 0)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %61
  %87 = load i32, i32* @XBT_NIL, align 4
  %88 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %89 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @XENKBD_FIELD_REQ_MTOUCH, align 4
  %92 = call i32 @xenbus_write(i32 %87, i8* %90, i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %95, %86
  br label %98

98:                                               ; preds = %97, %61
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %173

101:                                              ; preds = %98
  %102 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %102, %struct.input_dev** %12, align 8
  %103 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %104 = icmp ne %struct.input_dev* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  br label %432

106:                                              ; preds = %101
  %107 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %108, align 8
  %109 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %110 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** @BUS_PCI, align 8
  %115 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 22611, i32* %120, align 8
  %121 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %122 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i32 65535, i32* %123, align 4
  %124 = load i32, i32* @EV_KEY, align 4
  %125 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @__set_bit(i32 %124, i32 %127)
  %129 = load i32, i32* @KEY_ESC, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %140, %106
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @KEY_UNKNOWN, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @__set_bit(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %130

143:                                              ; preds = %130
  %144 = load i32, i32* @KEY_OK, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %155, %143
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @KEY_MAX, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @__set_bit(i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %145

158:                                              ; preds = %145
  %159 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %160 = call i32 @input_register_device(%struct.input_dev* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %165 = call i32 @input_free_device(%struct.input_dev* %164)
  %166 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %166, i32 %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %438

169:                                              ; preds = %158
  %170 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %171 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %172 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %171, i32 0, i32 7
  store %struct.input_dev* %170, %struct.input_dev** %172, align 8
  br label %173

173:                                              ; preds = %169, %98
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %316

176:                                              ; preds = %173
  %177 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %178 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @XENKBD_FIELD_FEAT_ABS_POINTER, align 4
  %181 = call i8* @xenbus_read_unsigned(i32 %179, i32 %180, i32 0)
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %15, align 4
  %183 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %184 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @XENKBD_FIELD_WIDTH, align 4
  %187 = load i32*, i32** @ptr_size, align 8
  %188 = load i64, i64* @KPARAM_X, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @xenbus_read_unsigned(i32 %185, i32 %186, i32 %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load i32*, i32** @ptr_size, align 8
  %194 = load i64, i64* @KPARAM_X, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %192, i32* %195, align 4
  %196 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %197 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @XENKBD_FIELD_HEIGHT, align 4
  %200 = load i32*, i32** @ptr_size, align 8
  %201 = load i64, i64* @KPARAM_Y, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @xenbus_read_unsigned(i32 %198, i32 %199, i32 %203)
  %205 = ptrtoint i8* %204 to i32
  %206 = load i32*, i32** @ptr_size, align 8
  %207 = load i64, i64* @KPARAM_Y, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 %205, i32* %208, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %176
  %212 = load i32, i32* @XBT_NIL, align 4
  %213 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %214 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* @XENKBD_FIELD_REQ_ABS_POINTER, align 4
  %217 = call i32 @xenbus_write(i32 %212, i8* %215, i32 %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %211
  %221 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %222

222:                                              ; preds = %220, %211
  br label %223

223:                                              ; preds = %222, %176
  %224 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %224, %struct.input_dev** %13, align 8
  %225 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %226 = icmp ne %struct.input_dev* %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  br label %432

228:                                              ; preds = %223
  %229 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %230 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %229, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %230, align 8
  %231 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %232 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %235 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load i8*, i8** @BUS_PCI, align 8
  %237 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %238 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 2
  store i8* %236, i8** %239, align 8
  %240 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %241 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  store i32 22611, i32* %242, align 8
  %243 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %244 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 1
  store i32 65534, i32* %245, align 4
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %268

248:                                              ; preds = %228
  %249 = load i32, i32* @EV_ABS, align 4
  %250 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %251 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @__set_bit(i32 %249, i32 %252)
  %254 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %255 = load i32, i32* @ABS_X, align 4
  %256 = load i32*, i32** @ptr_size, align 8
  %257 = load i64, i64* @KPARAM_X, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @input_set_abs_params(%struct.input_dev* %254, i32 %255, i32 0, i32 %259, i32 0, i32 0)
  %261 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %262 = load i32, i32* @ABS_Y, align 4
  %263 = load i32*, i32** @ptr_size, align 8
  %264 = load i64, i64* @KPARAM_Y, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @input_set_abs_params(%struct.input_dev* %261, i32 %262, i32 0, i32 %266, i32 0, i32 0)
  br label %277

268:                                              ; preds = %228
  %269 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %270 = load i32, i32* @EV_REL, align 4
  %271 = load i32, i32* @REL_X, align 4
  %272 = call i32 @input_set_capability(%struct.input_dev* %269, i32 %270, i32 %271)
  %273 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %274 = load i32, i32* @EV_REL, align 4
  %275 = load i32, i32* @REL_Y, align 4
  %276 = call i32 @input_set_capability(%struct.input_dev* %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %268, %248
  %278 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %279 = load i32, i32* @EV_REL, align 4
  %280 = load i32, i32* @REL_WHEEL, align 4
  %281 = call i32 @input_set_capability(%struct.input_dev* %278, i32 %279, i32 %280)
  %282 = load i32, i32* @EV_KEY, align 4
  %283 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %284 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @__set_bit(i32 %282, i32 %285)
  %287 = load i32, i32* @BTN_LEFT, align 4
  store i32 %287, i32* %7, align 4
  br label %288

288:                                              ; preds = %298, %277
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @BTN_TASK, align 4
  %291 = icmp sle i32 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %288
  %293 = load i32, i32* %7, align 4
  %294 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %295 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @__set_bit(i32 %293, i32 %296)
  br label %298

298:                                              ; preds = %292
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %288

301:                                              ; preds = %288
  %302 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %303 = call i32 @input_register_device(%struct.input_dev* %302)
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %308 = call i32 @input_free_device(%struct.input_dev* %307)
  %309 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %310 = load i32, i32* %6, align 4
  %311 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %309, i32 %310, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %438

312:                                              ; preds = %301
  %313 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %314 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %315 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %314, i32 0, i32 6
  store %struct.input_dev* %313, %struct.input_dev** %315, align 8
  br label %316

316:                                              ; preds = %312, %173
  %317 = load i32, i32* %8, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %412

319:                                              ; preds = %316
  %320 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %320, %struct.input_dev** %14, align 8
  %321 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %322 = icmp ne %struct.input_dev* %321, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %319
  br label %432

324:                                              ; preds = %319
  %325 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %326 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %325, i32 0, i32 4
  %327 = load %struct.xenbus_device*, %struct.xenbus_device** %326, align 8
  %328 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @XENKBD_FIELD_MT_NUM_CONTACTS, align 4
  %331 = call i8* @xenbus_read_unsigned(i32 %329, i32 %330, i32 1)
  %332 = ptrtoint i8* %331 to i32
  store i32 %332, i32* %16, align 4
  %333 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %334 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %333, i32 0, i32 4
  %335 = load %struct.xenbus_device*, %struct.xenbus_device** %334, align 8
  %336 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @XENKBD_FIELD_MT_WIDTH, align 4
  %339 = load i32, i32* @XENFB_WIDTH, align 4
  %340 = call i8* @xenbus_read_unsigned(i32 %337, i32 %338, i32 %339)
  %341 = ptrtoint i8* %340 to i32
  store i32 %341, i32* %17, align 4
  %342 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %343 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %342, i32 0, i32 4
  %344 = load %struct.xenbus_device*, %struct.xenbus_device** %343, align 8
  %345 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @XENKBD_FIELD_MT_HEIGHT, align 4
  %348 = load i32, i32* @XENFB_HEIGHT, align 4
  %349 = call i8* @xenbus_read_unsigned(i32 %346, i32 %347, i32 %348)
  %350 = ptrtoint i8* %349 to i32
  store i32 %350, i32* %18, align 4
  %351 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %352 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %351, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %352, align 8
  %353 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %354 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %357 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %356, i32 0, i32 2
  store i32 %355, i32* %357, align 8
  %358 = load i8*, i8** @BUS_PCI, align 8
  %359 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %360 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 2
  store i8* %358, i8** %361, align 8
  %362 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %363 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 0
  store i32 22611, i32* %364, align 8
  %365 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %366 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 1
  store i32 65533, i32* %367, align 4
  %368 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %369 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %370 = call i32 @input_set_abs_params(%struct.input_dev* %368, i32 %369, i32 0, i32 255, i32 0, i32 0)
  %371 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %372 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %373 = load i32, i32* %17, align 4
  %374 = call i32 @input_set_abs_params(%struct.input_dev* %371, i32 %372, i32 0, i32 %373, i32 0, i32 0)
  %375 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %376 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %377 = load i32, i32* %18, align 4
  %378 = call i32 @input_set_abs_params(%struct.input_dev* %375, i32 %376, i32 0, i32 %377, i32 0, i32 0)
  %379 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %380 = load i32, i32* %16, align 4
  %381 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %382 = call i32 @input_mt_init_slots(%struct.input_dev* %379, i32 %380, i32 %381)
  store i32 %382, i32* %6, align 4
  %383 = load i32, i32* %6, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %324
  %386 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %387 = call i32 @input_free_device(%struct.input_dev* %386)
  %388 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %389 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %388, i32 0, i32 4
  %390 = load %struct.xenbus_device*, %struct.xenbus_device** %389, align 8
  %391 = load i32, i32* %6, align 4
  %392 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %390, i32 %391, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %438

393:                                              ; preds = %324
  %394 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %395 = call i32 @input_register_device(%struct.input_dev* %394)
  store i32 %395, i32* %6, align 4
  %396 = load i32, i32* %6, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %393
  %399 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %400 = call i32 @input_free_device(%struct.input_dev* %399)
  %401 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %402 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %401, i32 0, i32 4
  %403 = load %struct.xenbus_device*, %struct.xenbus_device** %402, align 8
  %404 = load i32, i32* %6, align 4
  %405 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %403, i32 %404, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %438

406:                                              ; preds = %393
  %407 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %408 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %407, i32 0, i32 2
  store i32 -1, i32* %408, align 8
  %409 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %410 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %411 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %410, i32 0, i32 3
  store %struct.input_dev* %409, %struct.input_dev** %411, align 8
  br label %412

412:                                              ; preds = %406, %316
  %413 = load i32, i32* %9, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %424, label %415

415:                                              ; preds = %412
  %416 = load i32, i32* %10, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %424, label %418

418:                                              ; preds = %415
  %419 = load i32, i32* %8, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %418
  %422 = load i32, i32* @ENXIO, align 4
  %423 = sub nsw i32 0, %422
  store i32 %423, i32* %6, align 4
  br label %438

424:                                              ; preds = %418, %415, %412
  %425 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %426 = load %struct.xenkbd_info*, %struct.xenkbd_info** %11, align 8
  %427 = call i32 @xenkbd_connect_backend(%struct.xenbus_device* %425, %struct.xenkbd_info* %426)
  store i32 %427, i32* %6, align 4
  %428 = load i32, i32* %6, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %424
  br label %438

431:                                              ; preds = %424
  store i32 0, i32* %3, align 4
  br label %442

432:                                              ; preds = %323, %227, %105, %60
  %433 = load i32, i32* @ENOMEM, align 4
  %434 = sub nsw i32 0, %433
  store i32 %434, i32* %6, align 4
  %435 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %436 = load i32, i32* %6, align 4
  %437 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %435, i32 %436, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %438

438:                                              ; preds = %432, %430, %421, %398, %385, %306, %163
  %439 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %440 = call i32 @xenkbd_remove(%struct.xenbus_device* %439)
  %441 = load i32, i32* %6, align 4
  store i32 %441, i32* %3, align 4
  br label %442

442:                                              ; preds = %438, %431, %23
  %443 = load i32, i32* %3, align 4
  ret i32 %443
}

declare dso_local %struct.xenkbd_info* @kzalloc(i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.xenkbd_info*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @xenbus_read_unsigned(i32, i32, i32) #1

declare dso_local i32 @xenbus_write(i32, i8*, i32, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @xenkbd_connect_backend(%struct.xenbus_device*, %struct.xenkbd_info*) #1

declare dso_local i32 @xenkbd_remove(%struct.xenbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
