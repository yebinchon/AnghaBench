; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_range_dfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_range_dfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Driving Force Pro: setting range to %u\0A\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i32)* @lg4ff_set_range_dfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lg4ff_set_range_dfp(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lg4ff_device_entry*, align 8
  %6 = alloca %struct.lg_drv_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %13 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.lg_drv_data* %13, %struct.lg_drv_data** %6, align 8
  %14 = load %struct.lg_drv_data*, %struct.lg_drv_data** %6, align 8
  %15 = icmp ne %struct.lg_drv_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %18 = call i32 @hid_err(%struct.hid_device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %143

19:                                               ; preds = %2
  %20 = load %struct.lg_drv_data*, %struct.lg_drv_data** %6, align 8
  %21 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %20, i32 0, i32 0
  %22 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %21, align 8
  store %struct.lg4ff_device_entry* %22, %struct.lg4ff_device_entry** %5, align 8
  %23 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %24 = icmp ne %struct.lg4ff_device_entry* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %27 = call i32 @hid_err(%struct.hid_device* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %143

28:                                               ; preds = %19
  %29 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %30 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %11, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dbg_hid(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %41 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 248, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %58, 200
  br i1 %59, label %60, label %63

60:                                               ; preds = %28
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 3, i32* %62, align 4
  store i32 900, i32* %10, align 4
  br label %66

63:                                               ; preds = %28
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 2, i32* %65, align 4
  store i32 200, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %68 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %69 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %72 = call i32 @hid_hw_request(%struct.hid_device* %67, %struct.TYPE_4__* %70, i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 129, i32* %74, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 11, i32* %76, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 0, i32* %80, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 200
  br i1 %88, label %92, label %89

89:                                               ; preds = %66
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 900
  br i1 %91, label %92, label %103

92:                                               ; preds = %89, %66
  %93 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %94 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %95 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %98 = call i32 @hid_hw_request(%struct.hid_device* %93, %struct.TYPE_4__* %96, i32 %97)
  %99 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %100 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %99, i32 0, i32 0
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %143

103:                                              ; preds = %89
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sub nsw i32 %104, %105
  %107 = add nsw i32 %106, 1
  %108 = mul nsw i32 %107, 2047
  %109 = load i32, i32* %10, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 4095, %111
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 4
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 4
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32 255, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 14
  %125 = shl i32 %124, 4
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 14
  %128 = or i32 %125, %127
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  store i32 %128, i32* %130, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 6
  store i32 255, i32* %132, align 4
  %133 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %134 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %135 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %138 = call i32 @hid_hw_request(%struct.hid_device* %133, %struct.TYPE_4__* %136, i32 %137)
  %139 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %140 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %139, i32 0, i32 0
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  br label %143

143:                                              ; preds = %103, %92, %25, %16
  ret void
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
