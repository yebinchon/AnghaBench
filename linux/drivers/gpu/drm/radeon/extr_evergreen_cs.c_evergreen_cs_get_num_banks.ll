; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_get_num_banks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_get_num_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_SURF_2_BANK = common dso_local global i32 0, align 4
@ADDR_SURF_4_BANK = common dso_local global i32 0, align 4
@ADDR_SURF_8_BANK = common dso_local global i32 0, align 4
@ADDR_SURF_16_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @evergreen_cs_get_num_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_cs_get_num_banks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %10 [
    i32 2, label %5
    i32 4, label %7
    i32 8, label %9
    i32 16, label %12
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ADDR_SURF_2_BANK, align 4
  store i32 %6, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @ADDR_SURF_4_BANK, align 4
  store i32 %8, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9
  %11 = load i32, i32* @ADDR_SURF_8_BANK, align 4
  store i32 %11, i32* %2, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ADDR_SURF_16_BANK, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %12, %10, %7, %5
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
