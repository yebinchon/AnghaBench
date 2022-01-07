; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.dss_pll*, i32, i32 }
%struct.dss_pll = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"PLL not operational\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpi_data*)* @dpi_init_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_init_pll(%struct.dpi_data* %0) #0 {
  %2 = alloca %struct.dpi_data*, align 8
  %3 = alloca %struct.dss_pll*, align 8
  store %struct.dpi_data* %0, %struct.dpi_data** %2, align 8
  %4 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %5 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %4, i32 0, i32 0
  %6 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %7 = icmp ne %struct.dss_pll* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %11 = call i32 @dpi_get_clk_src(%struct.dpi_data* %10)
  %12 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %13 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %15 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %18 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.dss_pll* @dss_pll_find_by_src(i32 %16, i32 %19)
  store %struct.dss_pll* %20, %struct.dss_pll** %3, align 8
  %21 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %22 = icmp ne %struct.dss_pll* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  br label %34

24:                                               ; preds = %9
  %25 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %26 = call i64 @dpi_verify_pll(%struct.dss_pll* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @DSSWARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %34

30:                                               ; preds = %24
  %31 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %32 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %33 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %32, i32 0, i32 0
  store %struct.dss_pll* %31, %struct.dss_pll** %33, align 8
  br label %34

34:                                               ; preds = %30, %28, %23, %8
  ret void
}

declare dso_local i32 @dpi_get_clk_src(%struct.dpi_data*) #1

declare dso_local %struct.dss_pll* @dss_pll_find_by_src(i32, i32) #1

declare dso_local i64 @dpi_verify_pll(%struct.dss_pll*) #1

declare dso_local i32 @DSSWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
