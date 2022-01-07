; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg2ff.c_play_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg2ff.c_play_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hid_device = type { i32 }
%struct.lg2ff_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32* }

@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @play_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play_effect(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.lg2ff_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.hid_device* %12, %struct.hid_device** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.lg2ff_device*
  store %struct.lg2ff_device* %14, %struct.lg2ff_device** %8, align 8
  %15 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %16 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 255
  %33 = sdiv i32 %32, 65535
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %34, 255
  %36 = sdiv i32 %35, 65535
  store i32 %36, i32* %10, align 4
  %37 = load %struct.lg2ff_device*, %struct.lg2ff_device** %8, align 8
  %38 = getelementptr inbounds %struct.lg2ff_device, %struct.lg2ff_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 81, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.lg2ff_device*, %struct.lg2ff_device** %8, align 8
  %49 = getelementptr inbounds %struct.lg2ff_device, %struct.lg2ff_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %47, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.lg2ff_device*, %struct.lg2ff_device** %8, align 8
  %60 = getelementptr inbounds %struct.lg2ff_device, %struct.lg2ff_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %63, i64 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32 %58, i32* %68, align 4
  br label %100

69:                                               ; preds = %27
  %70 = load %struct.lg2ff_device*, %struct.lg2ff_device** %8, align 8
  %71 = getelementptr inbounds %struct.lg2ff_device, %struct.lg2ff_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 243, i32* %79, align 4
  %80 = load %struct.lg2ff_device*, %struct.lg2ff_device** %8, align 8
  %81 = getelementptr inbounds %struct.lg2ff_device, %struct.lg2ff_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %84, i64 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 0, i32* %89, align 4
  %90 = load %struct.lg2ff_device*, %struct.lg2ff_device** %8, align 8
  %91 = getelementptr inbounds %struct.lg2ff_device, %struct.lg2ff_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %94, i64 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %69, %30
  %101 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %102 = load %struct.lg2ff_device*, %struct.lg2ff_device** %8, align 8
  %103 = getelementptr inbounds %struct.lg2ff_device, %struct.lg2ff_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %106 = call i32 @hid_hw_request(%struct.hid_device* %101, %struct.TYPE_8__* %104, i32 %105)
  ret i32 0
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
