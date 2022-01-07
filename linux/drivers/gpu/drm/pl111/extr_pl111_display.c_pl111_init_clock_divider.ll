; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_init_clock_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_init_clock_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { %struct.clk*, %struct.TYPE_2__*, i32, %struct.clk_hw }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.clk_hw = type { %struct.clk*, %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"clcdclk\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pl111_div\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@pl111_clk_div_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CLCD: unable to get clcdclk.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @pl111_init_clock_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl111_init_clock_divider(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.pl111_drm_dev_private*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %11, align 8
  store %struct.pl111_drm_dev_private* %12, %struct.pl111_drm_dev_private** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.clk* @devm_clk_get(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %16, %struct.clk** %5, align 8
  %17 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %18 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %17, i32 0, i32 3
  store %struct.clk_hw* %18, %struct.clk_hw** %6, align 8
  %19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i8** %7, i8*** %20, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  %23 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 4
  store i32* @pl111_clk_div_ops, i32** %24, align 8
  %25 = load %struct.clk*, %struct.clk** %5, align 8
  %26 = call i64 @IS_ERR(%struct.clk* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.clk*, %struct.clk** %5, align 8
  %34 = call i32 @PTR_ERR(%struct.clk* %33)
  store i32 %34, i32* %2, align 4
  br label %65

35:                                               ; preds = %1
  %36 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %37 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %40 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.clk*, %struct.clk** %5, align 8
  %47 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %48 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %47, i32 0, i32 0
  store %struct.clk* %46, %struct.clk** %48, align 8
  store i32 0, i32* %2, align 4
  br label %65

49:                                               ; preds = %35
  %50 = load %struct.clk*, %struct.clk** %5, align 8
  %51 = call i8* @__clk_get_name(%struct.clk* %50)
  store i8* %51, i8** %7, align 8
  %52 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %53 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %52, i32 0, i32 1
  store %struct.clk_init_data* %8, %struct.clk_init_data** %53, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %58 = call i32 @devm_clk_hw_register(i32 %56, %struct.clk_hw* %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %60 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %59, i32 0, i32 0
  %61 = load %struct.clk*, %struct.clk** %60, align 8
  %62 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %4, align 8
  %63 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %62, i32 0, i32 0
  store %struct.clk* %61, %struct.clk** %63, align 8
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %49, %45, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.clk* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @__clk_get_name(%struct.clk*) #1

declare dso_local i32 @devm_clk_hw_register(i32, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
