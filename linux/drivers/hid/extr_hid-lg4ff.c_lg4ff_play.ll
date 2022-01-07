; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_play.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32* }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @lg4ff_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4ff_play(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.lg4ff_device_entry*, align 8
  %10 = alloca %struct.lg_drv_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %14)
  store %struct.hid_device* %15, %struct.hid_device** %8, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.lg_drv_data* %17, %struct.lg_drv_data** %10, align 8
  %18 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %19 = icmp ne %struct.lg_drv_data* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %22 = call i32 @hid_err(%struct.hid_device* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %125

25:                                               ; preds = %3
  %26 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %27 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %26, i32 0, i32 0
  %28 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %27, align 8
  store %struct.lg4ff_device_entry* %28, %struct.lg4ff_device_entry** %9, align 8
  %29 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %30 = icmp ne %struct.lg4ff_device_entry* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %33 = call i32 @hid_err(%struct.hid_device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %125

36:                                               ; preds = %25
  %37 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %38 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %12, align 8
  %46 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %47 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %124 [
    i32 128, label %49
  ]

49:                                               ; preds = %36
  %50 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %51 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 128
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %13, align 4
  br label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = icmp sgt i32 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 255, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %60
  br label %65

65:                                               ; preds = %64, %59
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %68 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %98

73:                                               ; preds = %66
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 19, i32* %75, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 0, i32* %77, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 0, i32* %79, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  store i32 0, i32* %81, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32 0, i32* %83, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  store i32 0, i32* %85, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  store i32 0, i32* %87, align 4
  %88 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %89 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %90 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %93 = call i32 @hid_hw_request(%struct.hid_device* %88, %struct.TYPE_8__* %91, i32 %92)
  %94 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %95 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  store i32 0, i32* %4, align 4
  br label %125

98:                                               ; preds = %66
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 17, i32* %100, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 8, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 128, i32* %107, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32 0, i32* %109, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  store i32 0, i32* %111, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  store i32 0, i32* %113, align 4
  %114 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %115 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %116 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %119 = call i32 @hid_hw_request(%struct.hid_device* %114, %struct.TYPE_8__* %117, i32 %118)
  %120 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %121 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %120, i32 0, i32 0
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %36, %98
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %73, %31, %20
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
