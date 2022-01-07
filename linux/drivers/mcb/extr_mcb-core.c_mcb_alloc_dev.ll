; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { %struct.mcb_bus* }
%struct.mcb_bus = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mcb_device* @mcb_alloc_dev(%struct.mcb_bus* %0) #0 {
  %2 = alloca %struct.mcb_device*, align 8
  %3 = alloca %struct.mcb_bus*, align 8
  %4 = alloca %struct.mcb_device*, align 8
  store %struct.mcb_bus* %0, %struct.mcb_bus** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mcb_device* @kzalloc(i32 8, i32 %5)
  store %struct.mcb_device* %6, %struct.mcb_device** %4, align 8
  %7 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %8 = icmp ne %struct.mcb_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mcb_device* null, %struct.mcb_device** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.mcb_bus*, %struct.mcb_bus** %3, align 8
  %12 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %13 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %12, i32 0, i32 0
  store %struct.mcb_bus* %11, %struct.mcb_bus** %13, align 8
  %14 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  store %struct.mcb_device* %14, %struct.mcb_device** %2, align 8
  br label %15

15:                                               ; preds = %10, %9
  %16 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  ret %struct.mcb_device* %16
}

declare dso_local %struct.mcb_device* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
