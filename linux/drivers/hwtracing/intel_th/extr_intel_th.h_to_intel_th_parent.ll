; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_intel_th.h_to_intel_th_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_intel_th.h_to_intel_th_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_th_device* (%struct.intel_th_device*)* @to_intel_th_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device* %0) #0 {
  %2 = alloca %struct.intel_th_device*, align 8
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %6 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.intel_th_device* null, %struct.intel_th_device** %2, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.intel_th_device* @to_intel_th_device(%struct.device* %13)
  store %struct.intel_th_device* %14, %struct.intel_th_device** %2, align 8
  br label %15

15:                                               ; preds = %12, %11
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  ret %struct.intel_th_device* %16
}

declare dso_local %struct.intel_th_device* @to_intel_th_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
