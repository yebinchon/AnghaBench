; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_ctrl_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_ctrl_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"illegal DSS PLL ID %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_ctrl_pll_enable(%struct.dss_pll* %0, i32 %1) #0 {
  %3 = alloca %struct.dss_pll*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dss_pll* %0, %struct.dss_pll** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %8 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %47

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %20 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %25 [
    i32 129, label %22
    i32 128, label %23
    i32 130, label %24
  ]

22:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %30

23:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %30

24:                                               ; preds = %14
  store i32 2, i32* %5, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %27 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %47

30:                                               ; preds = %24, %23, %22
  %31 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %32 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %37 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @regmap_update_bits(i32 %35, i32 %40, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %30, %25, %13
  ret void
}

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
