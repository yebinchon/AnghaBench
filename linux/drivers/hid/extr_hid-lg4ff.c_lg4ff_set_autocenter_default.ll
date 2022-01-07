; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_autocenter_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_autocenter_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32)* @lg4ff_set_autocenter_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lg4ff_set_autocenter_default(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lg4ff_device_entry*, align 8
  %10 = alloca %struct.lg_drv_data*, align 8
  %11 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %12)
  store %struct.hid_device* %13, %struct.hid_device** %5, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %15 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %14)
  store %struct.lg_drv_data* %15, %struct.lg_drv_data** %10, align 8
  %16 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %17 = icmp ne %struct.lg_drv_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %20 = call i32 @hid_err(%struct.hid_device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %148

21:                                               ; preds = %2
  %22 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %23 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %22, i32 0, i32 0
  %24 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %23, align 8
  store %struct.lg4ff_device_entry* %24, %struct.lg4ff_device_entry** %9, align 8
  %25 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %26 = icmp ne %struct.lg4ff_device_entry* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %29 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %148

30:                                               ; preds = %21
  %31 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %32 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %6, align 8
  %40 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %41 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %30
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 245, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  store i32 0, i32* %60, align 4
  %61 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %62 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %63 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %66 = call i32 @hid_hw_request(%struct.hid_device* %61, %struct.TYPE_6__* %64, i32 %65)
  %67 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %68 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %148

71:                                               ; preds = %30
  %72 = load i32, i32* %4, align 4
  %73 = icmp sle i32 %72, 43690
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = mul nsw i32 12, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 128, %77
  store i32 %78, i32* %8, align 4
  br label %88

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 43690
  %82 = mul nsw i32 6, %81
  %83 = add nsw i32 524280, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %84, 43690
  %86 = mul nsw i32 255, %85
  %87 = add nsw i32 5592320, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %79, %74
  %89 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %90 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %94 [
    i32 129, label %93
    i32 128, label %93
  ]

93:                                               ; preds = %88, %88
  br label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = ashr i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %94, %93
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 254, i32* %99, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 13, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sdiv i32 %102, 43690
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sdiv i32 %106, 43690
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sdiv i32 %110, 43690
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  store i32 0, i32* %115, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 6
  store i32 0, i32* %117, align 4
  %118 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %119 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %120 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %123 = call i32 @hid_hw_request(%struct.hid_device* %118, %struct.TYPE_6__* %121, i32 %122)
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 20, i32* %125, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 0, i32* %127, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 0, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 0, i32* %131, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32 0, i32* %133, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 5
  store i32 0, i32* %135, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  store i32 0, i32* %137, align 4
  %138 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %139 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %140 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %143 = call i32 @hid_hw_request(%struct.hid_device* %138, %struct.TYPE_6__* %141, i32 %142)
  %144 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %145 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %144, i32 0, i32 0
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %97, %46, %27, %18
  ret void
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
