; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_adjust_input_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_adjust_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hid_usage = type { i32, i32 }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }
%struct.lg4ff_device_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Device properties not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg4ff_adjust_input_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3, %struct.lg_drv_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_field*, align 8
  %9 = alloca %struct.hid_usage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lg_drv_data*, align 8
  %12 = alloca %struct.lg4ff_device_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_field* %1, %struct.hid_field** %8, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.lg_drv_data* %4, %struct.lg_drv_data** %11, align 8
  %14 = load %struct.lg_drv_data*, %struct.lg_drv_data** %11, align 8
  %15 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %14, i32 0, i32 0
  %16 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %15, align 8
  store %struct.lg4ff_device_entry* %16, %struct.lg4ff_device_entry** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %12, align 8
  %18 = icmp ne %struct.lg4ff_device_entry* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %21 = call i32 @hid_err(%struct.hid_device* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %53

22:                                               ; preds = %5
  %23 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %12, align 8
  %24 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %52 [
    i32 128, label %27
  ]

27:                                               ; preds = %22
  %28 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %29 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %51 [
    i32 129, label %31
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %12, align 8
  %34 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lg4ff_adjust_dfp_x_axis(i32 %32, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %39 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %44 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @input_event(i32 %42, i32 %45, i32 %48, i32 %49)
  store i32 1, i32* %6, align 4
  br label %53

51:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %53

52:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %51, %31, %19
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @lg4ff_adjust_dfp_x_axis(i32, i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
