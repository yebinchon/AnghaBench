; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_cmd_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_cmd_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcmsptwi_cmd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcmsptwi_cmd*)* @pmcmsptwi_cmd_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_cmd_to_reg(%struct.pmcmsptwi_cmd* %0) #0 {
  %2 = alloca %struct.pmcmsptwi_cmd*, align 8
  store %struct.pmcmsptwi_cmd* %0, %struct.pmcmsptwi_cmd** %2, align 8
  %3 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 3
  %7 = shl i32 %6, 8
  %8 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %11, 7
  %13 = shl i32 %12, 4
  %14 = or i32 %7, %13
  %15 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %18, 7
  %20 = or i32 %14, %19
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
