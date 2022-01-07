; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.navpoint = type { i32, i32, %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SSCR1 = common dso_local global i32 0, align 4
@sscr1 = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@sssr = common dso_local global i32 0, align 4
@SSTO = common dso_local global i32 0, align 4
@SSCR0 = common dso_local global i32 0, align 4
@sscr0 = common dso_local global i32 0, align 4
@SSSR_CSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"timeout waiting for SSSR[CSS] to clear\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.navpoint*)* @navpoint_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @navpoint_up(%struct.navpoint* %0) #0 {
  %2 = alloca %struct.navpoint*, align 8
  %3 = alloca %struct.ssp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.navpoint* %0, %struct.navpoint** %2, align 8
  %5 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %6 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %5, i32 0, i32 2
  %7 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  store %struct.ssp_device* %7, %struct.ssp_device** %3, align 8
  %8 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %9 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  %12 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %13 = load i32, i32* @SSCR1, align 4
  %14 = load i32, i32* @sscr1, align 4
  %15 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %12, i32 %13, i32 %14)
  %16 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %17 = load i32, i32* @SSSR, align 4
  %18 = load i32, i32* @sssr, align 4
  %19 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %16, i32 %17, i32 %18)
  %20 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %21 = load i32, i32* @SSTO, align 4
  %22 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %20, i32 %21, i32 0)
  %23 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %24 = load i32, i32* @SSCR0, align 4
  %25 = load i32, i32* @sscr0, align 4
  %26 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %23, i32 %24, i32 %25)
  store i32 100, i32* %4, align 4
  br label %27

27:                                               ; preds = %40, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %32 = load i32, i32* @SSSR, align 4
  %33 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %31, i32 %32)
  %34 = load i32, i32* @SSSR_CSS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %43

38:                                               ; preds = %30
  %39 = call i32 @msleep(i32 1)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  br label %27

43:                                               ; preds = %37, %27
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %48 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %53 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @gpio_is_valid(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.navpoint*, %struct.navpoint** %2, align 8
  %59 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @gpio_set_value(i32 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %51
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
