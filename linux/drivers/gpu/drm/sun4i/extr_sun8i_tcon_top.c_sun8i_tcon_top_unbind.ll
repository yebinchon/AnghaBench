; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_tcon_top.c_sun8i_tcon_top_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_tcon_top.c_sun8i_tcon_top_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun8i_tcon_top = type { i32, i32, %struct.clk_hw_onecell_data* }
%struct.clk_hw_onecell_data = type { i64* }

@CLK_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @sun8i_tcon_top_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_tcon_top_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sun8i_tcon_top*, align 8
  %8 = alloca %struct.clk_hw_onecell_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sun8i_tcon_top* @dev_get_drvdata(%struct.device* %10)
  store %struct.sun8i_tcon_top* %11, %struct.sun8i_tcon_top** %7, align 8
  %12 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %7, align 8
  %13 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %12, i32 0, i32 2
  %14 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %13, align 8
  store %struct.clk_hw_onecell_data* %14, %struct.clk_hw_onecell_data** %8, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @of_clk_del_provider(i32 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %42, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CLK_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %25 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %34 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @clk_hw_unregister_gate(i64 %39)
  br label %41

41:                                               ; preds = %32, %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %7, align 8
  %47 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %7, align 8
  %51 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @reset_control_assert(i32 %52)
  ret void
}

declare dso_local %struct.sun8i_tcon_top* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @clk_hw_unregister_gate(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
