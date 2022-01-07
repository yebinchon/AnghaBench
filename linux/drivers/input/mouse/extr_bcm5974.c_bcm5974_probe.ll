; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.bcm5974_config = type { i64, i32, i32, i32, i32, i32 }
%struct.bcm5974 = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i8*, %struct.bcm5974_config, %struct.usb_device*, i8*, %struct.input_dev*, i32, i32, %struct.usb_interface* }
%struct.TYPE_7__ = type { i32 }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@TYPE1 = common dso_local global i64 0, align 8
@bcm5974_irq_button = common dso_local global i32 0, align 4
@bcm5974_irq_trackpad = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bcm5974\00", align 1
@bcm5974_open = common dso_local global i32 0, align 4
@bcm5974_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @bcm5974_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5974_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.bcm5974_config*, align 8
  %8 = alloca %struct.bcm5974*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = call %struct.bcm5974_config* @bcm5974_get_config(%struct.usb_device* %15)
  store %struct.bcm5974_config* %16, %struct.bcm5974_config** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.bcm5974* @kzalloc(i32 96, i32 %17)
  store %struct.bcm5974* %18, %struct.bcm5974** %8, align 8
  %19 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %19, %struct.input_dev** %9, align 8
  %20 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %21 = icmp ne %struct.bcm5974* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %24 = icmp ne %struct.input_dev* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %274

29:                                               ; preds = %22
  %30 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %31 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %32 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %31, i32 0, i32 4
  store %struct.usb_device* %30, %struct.usb_device** %32, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %35 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %34, i32 0, i32 9
  store %struct.usb_interface* %33, %struct.usb_interface** %35, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %37 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %38 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %37, i32 0, i32 6
  store %struct.input_dev* %36, %struct.input_dev** %38, align 8
  %39 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %40 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %39, i32 0, i32 3
  %41 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %42 = bitcast %struct.bcm5974_config* %40 to i8*
  %43 = bitcast %struct.bcm5974_config* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false)
  %44 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %45 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %44, i32 0, i32 8
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %48 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TYPE1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %29
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @usb_alloc_urb(i32 0, i32 %53)
  %55 = bitcast i8* %54 to %struct.TYPE_7__*
  %56 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %57 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %56, i32 0, i32 0
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %59 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %274

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @usb_alloc_urb(i32 0, i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_7__*
  %68 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %69 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %68, i32 0, i32 1
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %69, align 8
  %70 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %71 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %269

75:                                               ; preds = %64
  %76 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %77 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %82 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %81, i32 0, i32 4
  %83 = load %struct.usb_device*, %struct.usb_device** %82, align 8
  %84 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %85 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %90 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i8* @usb_alloc_coherent(%struct.usb_device* %83, i32 %87, i32 %88, i32* %92)
  %94 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %95 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %97 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %80
  br label %264

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %104 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %103, i32 0, i32 4
  %105 = load %struct.usb_device*, %struct.usb_device** %104, align 8
  %106 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %107 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %112 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = call i8* @usb_alloc_coherent(%struct.usb_device* %105, i32 %109, i32 %110, i32* %114)
  %116 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %117 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %119 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %102
  br label %241

123:                                              ; preds = %102
  %124 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %125 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %148

128:                                              ; preds = %123
  %129 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %130 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %133 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %134 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %135 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @usb_rcvintpipe(%struct.usb_device* %133, i32 %136)
  %138 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %139 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %142 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @bcm5974_irq_button, align 4
  %146 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %147 = call i32 @usb_fill_int_urb(%struct.TYPE_7__* %131, %struct.usb_device* %132, i32 %137, i8* %140, i32 %144, i32 %145, %struct.bcm5974* %146, i32 1)
  br label %148

148:                                              ; preds = %128, %123
  %149 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %150 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %153 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %154 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %155 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @usb_rcvintpipe(%struct.usb_device* %153, i32 %156)
  %158 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %159 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %158, i32 0, i32 5
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %162 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @bcm5974_irq_trackpad, align 4
  %166 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %167 = call i32 @usb_fill_int_urb(%struct.TYPE_7__* %151, %struct.usb_device* %152, i32 %157, i8* %160, i32 %164, i32 %165, %struct.bcm5974* %166, i32 1)
  %168 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %169 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %170 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @usb_make_path(%struct.usb_device* %168, i32 %171, i32 4)
  %173 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %174 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @strlcat(i32 %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %177 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %178 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %177, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %178, align 8
  %179 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %180 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %183 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %185 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %184, i32 0, i32 4
  %186 = load %struct.usb_device*, %struct.usb_device** %185, align 8
  %187 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 4
  %189 = call i32 @usb_to_input_id(%struct.usb_device* %186, %struct.TYPE_6__* %188)
  %190 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %191 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %194 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %197 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %196, i32 0, i32 0
  %198 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %199 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  store i32* %197, i32** %200, align 8
  %201 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %202 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %203 = call i32 @input_set_drvdata(%struct.input_dev* %201, %struct.bcm5974* %202)
  %204 = load i32, i32* @bcm5974_open, align 4
  %205 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %206 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* @bcm5974_close, align 4
  %208 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %209 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  %210 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %211 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %212 = call i32 @setup_events_to_report(%struct.input_dev* %210, %struct.bcm5974_config* %211)
  %213 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %214 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %213, i32 0, i32 6
  %215 = load %struct.input_dev*, %struct.input_dev** %214, align 8
  %216 = call i32 @input_register_device(%struct.input_dev* %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %148
  br label %224

220:                                              ; preds = %148
  %221 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %222 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %223 = call i32 @usb_set_intfdata(%struct.usb_interface* %221, %struct.bcm5974* %222)
  store i32 0, i32* %3, align 4
  br label %282

224:                                              ; preds = %219
  %225 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %226 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %225, i32 0, i32 4
  %227 = load %struct.usb_device*, %struct.usb_device** %226, align 8
  %228 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %229 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %233 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %232, i32 0, i32 5
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %236 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %235, i32 0, i32 1
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @usb_free_coherent(%struct.usb_device* %227, i32 %231, i8* %234, i32 %239)
  br label %241

241:                                              ; preds = %224, %122
  %242 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %243 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %242, i32 0, i32 0
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = icmp ne %struct.TYPE_7__* %244, null
  br i1 %245, label %246, label %263

246:                                              ; preds = %241
  %247 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %248 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %247, i32 0, i32 4
  %249 = load %struct.usb_device*, %struct.usb_device** %248, align 8
  %250 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %251 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %255 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %258 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %257, i32 0, i32 0
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @usb_free_coherent(%struct.usb_device* %249, i32 %253, i8* %256, i32 %261)
  br label %263

263:                                              ; preds = %246, %241
  br label %264

264:                                              ; preds = %263, %100
  %265 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %266 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %265, i32 0, i32 1
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = call i32 @usb_free_urb(%struct.TYPE_7__* %267)
  br label %269

269:                                              ; preds = %264, %74
  %270 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %271 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %270, i32 0, i32 0
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = call i32 @usb_free_urb(%struct.TYPE_7__* %272)
  br label %274

274:                                              ; preds = %269, %62, %25
  %275 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %276 = call i32 @usb_set_intfdata(%struct.usb_interface* %275, %struct.bcm5974* null)
  %277 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %278 = call i32 @input_free_device(%struct.input_dev* %277)
  %279 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %280 = call i32 @kfree(%struct.bcm5974* %279)
  %281 = load i32, i32* %10, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %274, %220
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.bcm5974_config* @bcm5974_get_config(%struct.usb_device*) #1

declare dso_local %struct.bcm5974* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_7__*, %struct.usb_device*, i32, i8*, i32, i32, %struct.bcm5974*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.bcm5974*) #1

declare dso_local i32 @setup_events_to_report(%struct.input_dev*, %struct.bcm5974_config*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.bcm5974*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.bcm5974*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
