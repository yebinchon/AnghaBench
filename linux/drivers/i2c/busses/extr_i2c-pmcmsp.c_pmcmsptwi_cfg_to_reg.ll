; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_cfg_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_cfg_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcmsptwi_cfg = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcmsptwi_cfg*)* @pmcmsptwi_cfg_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_cfg_to_reg(%struct.pmcmsptwi_cfg* %0) #0 {
  %2 = alloca %struct.pmcmsptwi_cfg*, align 8
  store %struct.pmcmsptwi_cfg* %0, %struct.pmcmsptwi_cfg** %2, align 8
  %3 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %2, align 8
  %4 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 15
  %7 = shl i32 %6, 12
  %8 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %2, align 8
  %9 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 15
  %12 = shl i32 %11, 8
  %13 = or i32 %7, %12
  %14 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %2, align 8
  %15 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 7
  %19 = or i32 %13, %18
  %20 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %2, align 8
  %21 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 7
  %24 = shl i32 %23, 4
  %25 = or i32 %19, %24
  %26 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %2, align 8
  %27 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = shl i32 %29, 1
  %31 = or i32 %25, %30
  %32 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %2, align 8
  %33 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = or i32 %31, %35
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
