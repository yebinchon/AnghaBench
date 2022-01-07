; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, %struct.hid_field** }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*)* @rmi_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.hid_field*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %6 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %7 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %6, i32 0, i32 1
  %8 = load %struct.hid_field**, %struct.hid_field*** %7, align 8
  %9 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %8, i64 0
  %10 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  store %struct.hid_field* %10, %struct.hid_field** %5, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %23 [
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %18, %18
  br label %45

23:                                               ; preds = %18
  %24 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %25 = icmp ne %struct.hid_field* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %28 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %33 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %40 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @input_sync(i64 %43)
  br label %45

45:                                               ; preds = %17, %22, %38, %31, %26, %23
  ret void
}

declare dso_local i32 @input_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
