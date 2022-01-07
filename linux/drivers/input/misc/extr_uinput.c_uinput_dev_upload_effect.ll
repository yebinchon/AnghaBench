; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_dev_upload_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_dev_upload_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.uinput_device = type { i32 }
%struct.uinput_request = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ff_effect*, %struct.ff_effect* }

@FF_PERIODIC = common dso_local global i64 0, align 8
@FF_CUSTOM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UI_FF_UPLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)* @uinput_dev_upload_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_dev_upload_effect(%struct.input_dev* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.uinput_device*, align 8
  %9 = alloca %struct.uinput_request, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = call %struct.uinput_device* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.uinput_device* %11, %struct.uinput_device** %8, align 8
  %12 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %13 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FF_PERIODIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %19 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FF_CUSTOM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %41

28:                                               ; preds = %17, %3
  %29 = load i32, i32* @UI_FF_UPLOAD, align 4
  %30 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %32 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store %struct.ff_effect* %31, %struct.ff_effect** %34, align 8
  %35 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %36 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %9, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store %struct.ff_effect* %35, %struct.ff_effect** %38, align 8
  %39 = load %struct.uinput_device*, %struct.uinput_device** %8, align 8
  %40 = call i32 @uinput_request_submit(%struct.uinput_device* %39, %struct.uinput_request* %9)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.uinput_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @uinput_request_submit(%struct.uinput_device*, %struct.uinput_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
