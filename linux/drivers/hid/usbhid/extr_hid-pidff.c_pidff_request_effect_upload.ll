; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_request_effect_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_request_effect_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i64*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i32* }

@PID_CREATE_NEW_EFFECT = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"create_new_effect sent, type: %d\0A\00", align 1
@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"pid_block_load requested\0A\00", align 1
@PID_BLOCK_LOAD = common dso_local global i64 0, align 8
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@PID_BLOCK_LOAD_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"device reported free memory: %d bytes\0A\00", align 1
@PID_RAM_POOL_AVAILABLE = common dso_local global i64 0, align 8
@PID_BLOCK_LOAD_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"not enough memory free: %d bytes\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"pid_block_load failed 60 times\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pidff_device*, i32)* @pidff_request_effect_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_request_effect_upload(%struct.pidff_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pidff_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pidff_device* %0, %struct.pidff_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %9 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %7, i32* %13, align 4
  %14 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %15 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %18 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @PID_CREATE_NEW_EFFECT, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %24 = call i32 @hid_hw_request(i32 %16, i32 %22, i32 %23)
  %25 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %26 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @hid_dbg(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %31 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %39 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %45 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @hid_hw_wait(i32 %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %155, %2
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 60
  br i1 %50, label %51, label %158

51:                                               ; preds = %48
  %52 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %53 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @hid_dbg(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %57 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %60 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @PID_BLOCK_LOAD, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %66 = call i32 @hid_hw_request(i32 %58, i32 %64, i32 %65)
  %67 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %68 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @hid_hw_wait(i32 %69)
  %71 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %72 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %79 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @PID_BLOCK_LOAD_SUCCESS, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %77, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %51
  %86 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %87 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %90 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* @PID_RAM_POOL_AVAILABLE, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %99 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* @PID_RAM_POOL_AVAILABLE, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  br label %108

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %97
  %109 = phi i32 [ %106, %97 ], [ -1, %107 ]
  %110 = call i32 (i32, i8*, ...) @hid_dbg(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  store i32 0, i32* %3, align 4
  br label %165

111:                                              ; preds = %51
  %112 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %113 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %120 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @PID_BLOCK_LOAD_FULL, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %118, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %111
  %127 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %128 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %131 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i64, i64* @PID_RAM_POOL_AVAILABLE, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %126
  %139 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %140 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i64, i64* @PID_RAM_POOL_AVAILABLE, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  br label %149

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148, %138
  %150 = phi i32 [ %147, %138 ], [ -1, %148 ]
  %151 = call i32 (i32, i8*, ...) @hid_dbg(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @ENOSPC, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %165

154:                                              ; preds = %111
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %48

158:                                              ; preds = %48
  %159 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %160 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @hid_err(i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i32, i32* @EIO, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %158, %149, %108
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @hid_hw_request(i32, i32, i32) #1

declare dso_local i32 @hid_dbg(i32, i8*, ...) #1

declare dso_local i32 @hid_hw_wait(i32) #1

declare dso_local i32 @hid_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
