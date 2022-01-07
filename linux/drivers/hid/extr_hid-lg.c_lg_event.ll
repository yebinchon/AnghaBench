; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i64, i32 }
%struct.lg_drv_data = type { i32 }

@LG_INVERT_HWHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i64 0, align 8
@LG_FF4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @lg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.lg_drv_data* %12, %struct.lg_drv_data** %10, align 8
  %13 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %14 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LG_INVERT_HWHEEL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %4
  %20 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %21 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REL_HWHEEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %27 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %32 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %35 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @input_event(i32 %30, i32 %33, i64 %36, i32 %38)
  store i32 1, i32* %5, align 4
  br label %55

40:                                               ; preds = %19, %4
  %41 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %42 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LG_FF4, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %49 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %50 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %53 = call i32 @lg4ff_adjust_input_event(%struct.hid_device* %48, %struct.hid_field* %49, %struct.hid_usage* %50, i32 %51, %struct.lg_drv_data* %52)
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %47, %25
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(i32, i32, i64, i32) #1

declare dso_local i32 @lg4ff_adjust_input_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32, %struct.lg_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
