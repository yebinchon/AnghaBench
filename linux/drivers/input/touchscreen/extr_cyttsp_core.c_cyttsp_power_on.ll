; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CY_OPERATE_MODE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@CY_ACTIVE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp*)* @cyttsp_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp_power_on(%struct.cyttsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyttsp*, align 8
  %4 = alloca i32, align 4
  store %struct.cyttsp* %0, %struct.cyttsp** %3, align 8
  %5 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %6 = call i32 @cyttsp_soft_reset(%struct.cyttsp* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %13 = call i32 @cyttsp_load_bl_regs(%struct.cyttsp* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %90

18:                                               ; preds = %11
  %19 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %20 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @GET_BOOTLOADERMODE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %27 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_VALID_APP(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %34 = call i32 @cyttsp_exit_bl_mode(%struct.cyttsp* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %90

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %25, %18
  %41 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %42 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @GET_HSTMODE(i32 %44)
  %46 = load i64, i64* @CY_OPERATE_MODE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %50 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_OPERATIONAL_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %40
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %90

58:                                               ; preds = %48
  %59 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %60 = call i32 @cyttsp_set_sysinfo_mode(%struct.cyttsp* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %90

65:                                               ; preds = %58
  %66 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %67 = call i32 @cyttsp_set_sysinfo_regs(%struct.cyttsp* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %90

72:                                               ; preds = %65
  %73 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %74 = call i32 @cyttsp_set_operational_mode(%struct.cyttsp* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %90

79:                                               ; preds = %72
  %80 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %81 = call i32 @cyttsp_act_dist_setup(%struct.cyttsp* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @CY_ACTIVE_STATE, align 4
  %88 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %89 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %84, %77, %70, %63, %55, %37, %16, %9
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @cyttsp_soft_reset(%struct.cyttsp*) #1

declare dso_local i32 @cyttsp_load_bl_regs(%struct.cyttsp*) #1

declare dso_local i64 @GET_BOOTLOADERMODE(i32) #1

declare dso_local i64 @IS_VALID_APP(i32) #1

declare dso_local i32 @cyttsp_exit_bl_mode(%struct.cyttsp*) #1

declare dso_local i64 @GET_HSTMODE(i32) #1

declare dso_local i64 @IS_OPERATIONAL_ERR(i32) #1

declare dso_local i32 @cyttsp_set_sysinfo_mode(%struct.cyttsp*) #1

declare dso_local i32 @cyttsp_set_sysinfo_regs(%struct.cyttsp*) #1

declare dso_local i32 @cyttsp_set_operational_mode(%struct.cyttsp*) #1

declare dso_local i32 @cyttsp_act_dist_setup(%struct.cyttsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
