; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hid_device_id* @hid_match_id(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca %struct.hid_device_id*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  br label %6

6:                                                ; preds = %19, %2
  %7 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %14 = call i64 @hid_match_one_id(%struct.hid_device* %12, %struct.hid_device_id* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  store %struct.hid_device_id* %17, %struct.hid_device_id** %3, align 8
  br label %23

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %20, i32 1
  store %struct.hid_device_id* %21, %struct.hid_device_id** %5, align 8
  br label %6

22:                                               ; preds = %6
  store %struct.hid_device_id* null, %struct.hid_device_id** %3, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load %struct.hid_device_id*, %struct.hid_device_id** %3, align 8
  ret %struct.hid_device_id* %24
}

declare dso_local i64 @hid_match_one_id(%struct.hid_device*, %struct.hid_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
