; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_get_htiming_tables_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_get_htiming_tables_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADEON_HCODE_TABLE_SEL_MASK = common dso_local global i32 0, align 4
@RADEON_HCODE_TABLE_SEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_MAX_FIFO_ADDR_INTERNAL = common dso_local global i32 0, align 4
@RADEON_TABLE1_BOT_ADR_MASK = common dso_local global i32 0, align 4
@RADEON_TABLE1_BOT_ADR_SHIFT = common dso_local global i32 0, align 4
@RADEON_TABLE3_TOP_ADR_MASK = common dso_local global i32 0, align 4
@RADEON_TABLE3_TOP_ADR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @radeon_get_htiming_tables_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_get_htiming_tables_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @RADEON_HCODE_TABLE_SEL_MASK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @RADEON_HCODE_TABLE_SEL_SHIFT, align 4
  %8 = ashr i32 %6, %7
  switch i32 %8, label %25 [
    i32 0, label %9
    i32 1, label %11
    i32 2, label %18
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @RADEON_TV_MAX_FIFO_ADDR_INTERNAL, align 4
  store i32 %10, i32* %3, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @RADEON_TABLE1_BOT_ADR_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @RADEON_TABLE1_BOT_ADR_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @RADEON_TABLE3_TOP_ADR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @RADEON_TABLE3_TOP_ADR_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %18, %11, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
