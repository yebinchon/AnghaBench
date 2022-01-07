; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device_id = type { i64 }
%struct.mcb_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mcb_device_id* (%struct.mcb_device_id*, %struct.mcb_device*)* @mcb_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mcb_device_id* @mcb_match_id(%struct.mcb_device_id* %0, %struct.mcb_device* %1) #0 {
  %3 = alloca %struct.mcb_device_id*, align 8
  %4 = alloca %struct.mcb_device_id*, align 8
  %5 = alloca %struct.mcb_device*, align 8
  store %struct.mcb_device_id* %0, %struct.mcb_device_id** %4, align 8
  store %struct.mcb_device* %1, %struct.mcb_device** %5, align 8
  %6 = load %struct.mcb_device_id*, %struct.mcb_device_id** %4, align 8
  %7 = icmp ne %struct.mcb_device_id* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %24, %8
  %10 = load %struct.mcb_device_id*, %struct.mcb_device_id** %4, align 8
  %11 = getelementptr inbounds %struct.mcb_device_id, %struct.mcb_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.mcb_device_id*, %struct.mcb_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.mcb_device_id, %struct.mcb_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %19 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load %struct.mcb_device_id*, %struct.mcb_device_id** %4, align 8
  store %struct.mcb_device_id* %23, %struct.mcb_device_id** %3, align 8
  br label %29

24:                                               ; preds = %14
  %25 = load %struct.mcb_device_id*, %struct.mcb_device_id** %4, align 8
  %26 = getelementptr inbounds %struct.mcb_device_id, %struct.mcb_device_id* %25, i32 1
  store %struct.mcb_device_id* %26, %struct.mcb_device_id** %4, align 8
  br label %9

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %2
  store %struct.mcb_device_id* null, %struct.mcb_device_id** %3, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.mcb_device_id*, %struct.mcb_device_id** %3, align 8
  ret %struct.mcb_device_id* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
