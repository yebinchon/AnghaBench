; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_bus.h_devm_create_dev_dax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_bus.h_devm_create_dev_dax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_dax = type { i32 }
%struct.dax_region = type { i32 }
%struct.dev_pagemap = type { i32 }

@DEV_DAX_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dev_dax* (%struct.dax_region*, i32, %struct.dev_pagemap*)* @devm_create_dev_dax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dev_dax* @devm_create_dev_dax(%struct.dax_region* %0, i32 %1, %struct.dev_pagemap* %2) #0 {
  %4 = alloca %struct.dax_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_pagemap*, align 8
  store %struct.dax_region* %0, %struct.dax_region** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dev_pagemap* %2, %struct.dev_pagemap** %6, align 8
  %7 = load %struct.dax_region*, %struct.dax_region** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dev_pagemap*, %struct.dev_pagemap** %6, align 8
  %10 = load i32, i32* @DEV_DAX_BUS, align 4
  %11 = call %struct.dev_dax* @__devm_create_dev_dax(%struct.dax_region* %7, i32 %8, %struct.dev_pagemap* %9, i32 %10)
  ret %struct.dev_dax* %11
}

declare dso_local %struct.dev_dax* @__devm_create_dev_dax(%struct.dax_region*, i32, %struct.dev_pagemap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
