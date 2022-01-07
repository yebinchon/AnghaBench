; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.mcb_driver = type { i32 }
%struct.mcb_device = type { i32 }
%struct.mcb_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @mcb_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcb_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.mcb_driver*, align 8
  %7 = alloca %struct.mcb_device*, align 8
  %8 = alloca %struct.mcb_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %10 = call %struct.mcb_driver* @to_mcb_driver(%struct.device_driver* %9)
  store %struct.mcb_driver* %10, %struct.mcb_driver** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.mcb_device* @to_mcb_device(%struct.device* %11)
  store %struct.mcb_device* %12, %struct.mcb_device** %7, align 8
  %13 = load %struct.mcb_driver*, %struct.mcb_driver** %6, align 8
  %14 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mcb_device*, %struct.mcb_device** %7, align 8
  %17 = call %struct.mcb_device_id* @mcb_match_id(i32 %15, %struct.mcb_device* %16)
  store %struct.mcb_device_id* %17, %struct.mcb_device_id** %8, align 8
  %18 = load %struct.mcb_device_id*, %struct.mcb_device_id** %8, align 8
  %19 = icmp ne %struct.mcb_device_id* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.mcb_driver* @to_mcb_driver(%struct.device_driver*) #1

declare dso_local %struct.mcb_device* @to_mcb_device(%struct.device*) #1

declare dso_local %struct.mcb_device_id* @mcb_match_id(i32, %struct.mcb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
