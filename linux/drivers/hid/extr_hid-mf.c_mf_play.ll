; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-mf.c_mf_play.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-mf.c_mf_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hid_device = type { i32 }
%struct.mf_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"Called with 0x%04x 0x%04x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Running with 0x%02x 0x%02x.\0A\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @mf_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf_play(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.mf_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.hid_device* %12, %struct.hid_device** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.mf_device*
  store %struct.mf_device* %14, %struct.mf_device** %8, align 8
  %15 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %16 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dbg_hid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, 255
  %30 = sdiv i32 %29, 65535
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 %31, 255
  %33 = sdiv i32 %32, 65535
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dbg_hid(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.mf_device*, %struct.mf_device** %8, align 8
  %39 = getelementptr inbounds %struct.mf_device, %struct.mf_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %37, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.mf_device*, %struct.mf_device** %8, align 8
  %50 = getelementptr inbounds %struct.mf_device, %struct.mf_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %48, i32* %58, align 4
  %59 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %60 = load %struct.mf_device*, %struct.mf_device** %8, align 8
  %61 = getelementptr inbounds %struct.mf_device, %struct.mf_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %64 = call i32 @hid_hw_request(%struct.hid_device* %59, %struct.TYPE_8__* %62, i32 %63)
  ret i32 0
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @dbg_hid(i8*, i32, i32) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
