; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_get_vtiming_tables_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_get_vtiming_tables_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADEON_VCODE_TABLE_SEL_MASK = common dso_local global i32 0, align 4
@RADEON_VCODE_TABLE_SEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_MAX_UV_ADR_MASK = common dso_local global i32 0, align 4
@RADEON_MAX_UV_ADR_SHIFT = common dso_local global i32 0, align 4
@RADEON_TABLE1_BOT_ADR_MASK = common dso_local global i32 0, align 4
@RADEON_TABLE1_BOT_ADR_SHIFT = common dso_local global i32 0, align 4
@RADEON_TABLE3_TOP_ADR_MASK = common dso_local global i32 0, align 4
@RADEON_TABLE3_TOP_ADR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @radeon_get_vtiming_tables_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_get_vtiming_tables_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @RADEON_VCODE_TABLE_SEL_MASK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @RADEON_VCODE_TABLE_SEL_SHIFT, align 4
  %8 = ashr i32 %6, %7
  switch i32 %8, label %33 [
    i32 0, label %9
    i32 1, label %17
    i32 2, label %25
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @RADEON_MAX_UV_ADR_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @RADEON_MAX_UV_ADR_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @RADEON_TABLE1_BOT_ADR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @RADEON_TABLE1_BOT_ADR_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @RADEON_TABLE3_TOP_ADR_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @RADEON_TABLE3_TOP_ADR_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = mul nsw i32 %30, 2
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %25, %17, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
