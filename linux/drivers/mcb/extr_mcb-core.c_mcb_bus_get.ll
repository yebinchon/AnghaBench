; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_bus_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_bus_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mcb_bus* @mcb_bus_get(%struct.mcb_bus* %0) #0 {
  %2 = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_bus* %0, %struct.mcb_bus** %2, align 8
  %3 = load %struct.mcb_bus*, %struct.mcb_bus** %2, align 8
  %4 = icmp ne %struct.mcb_bus* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.mcb_bus*, %struct.mcb_bus** %2, align 8
  %7 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %6, i32 0, i32 0
  %8 = call i32 @get_device(i32* %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = load %struct.mcb_bus*, %struct.mcb_bus** %2, align 8
  ret %struct.mcb_bus* %10
}

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
