; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_reg_to_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_reg_to_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcmsptwi_cfg = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pmcmsptwi_cfg*)* @pmcmsptwi_reg_to_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcmsptwi_reg_to_cfg(i32 %0, %struct.pmcmsptwi_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmcmsptwi_cfg*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pmcmsptwi_cfg* %1, %struct.pmcmsptwi_cfg** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 12
  %7 = and i32 %6, 15
  %8 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 15
  %13 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 7
  %17 = and i32 %16, 1
  %18 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 7
  %23 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 1
  %27 = and i32 %26, 1
  %28 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 1
  %32 = load %struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
