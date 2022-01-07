; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c_dev_dax_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c_dev_dax_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dev_dax = type { %struct.dax_device*, %struct.dax_region* }
%struct.dax_device = type { i32 }
%struct.dax_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @dev_dax_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_dax_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dev_dax*, align 8
  %4 = alloca %struct.dax_region*, align 8
  %5 = alloca %struct.dax_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.dev_dax* @to_dev_dax(%struct.device* %6)
  store %struct.dev_dax* %7, %struct.dev_dax** %3, align 8
  %8 = load %struct.dev_dax*, %struct.dev_dax** %3, align 8
  %9 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %8, i32 0, i32 1
  %10 = load %struct.dax_region*, %struct.dax_region** %9, align 8
  store %struct.dax_region* %10, %struct.dax_region** %4, align 8
  %11 = load %struct.dev_dax*, %struct.dev_dax** %3, align 8
  %12 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %11, i32 0, i32 0
  %13 = load %struct.dax_device*, %struct.dax_device** %12, align 8
  store %struct.dax_device* %13, %struct.dax_device** %5, align 8
  %14 = load %struct.dax_region*, %struct.dax_region** %4, align 8
  %15 = call i32 @dax_region_put(%struct.dax_region* %14)
  %16 = load %struct.dax_device*, %struct.dax_device** %5, align 8
  %17 = call i32 @put_dax(%struct.dax_device* %16)
  %18 = load %struct.dev_dax*, %struct.dev_dax** %3, align 8
  %19 = call i32 @kfree(%struct.dev_dax* %18)
  ret void
}

declare dso_local %struct.dev_dax* @to_dev_dax(%struct.device*) #1

declare dso_local i32 @dax_region_put(%struct.dax_region*) #1

declare dso_local i32 @put_dax(%struct.dax_device*) #1

declare dso_local i32 @kfree(%struct.dev_dax*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
