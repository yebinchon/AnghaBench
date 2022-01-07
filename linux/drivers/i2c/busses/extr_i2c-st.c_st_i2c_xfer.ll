; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.st_i2c_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to prepare_enable clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @st_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_i2c_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.st_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.st_i2c_dev* %12, %struct.st_i2c_dev** %8, align 8
  %13 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %14 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %16 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_prepare_enable(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %23 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %81

27:                                               ; preds = %3
  %28 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %29 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pinctrl_pm_select_default_state(i32 %30)
  %32 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %33 = call i32 @st_i2c_hw_config(%struct.st_i2c_dev* %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %59, %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %62

44:                                               ; preds = %42
  %45 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp eq i32 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @st_i2c_xfer_msg(%struct.st_i2c_dev* %45, %struct.i2c_msg* %49, i32 %52, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %34

62:                                               ; preds = %42
  %63 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %64 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pinctrl_pm_select_idle_state(i32 %65)
  %67 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %68 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_disable_unprepare(i32 %69)
  %71 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %8, align 8
  %72 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.st_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32) #1

declare dso_local i32 @st_i2c_hw_config(%struct.st_i2c_dev*) #1

declare dso_local i32 @st_i2c_xfer_msg(%struct.st_i2c_dev*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @pinctrl_pm_select_idle_state(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
