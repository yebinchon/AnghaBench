; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_sdi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_sdi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }

@DSS_PLL_CONTROL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DSS_SDI_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PLL lock request timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PLL lock timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SDI reset timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_sdi_enable(%struct.dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca i64, align 8
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  %5 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %6 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dispc_pck_free_enable(i32 %7, i32 1)
  %9 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %10 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %11 = call i32 @REG_FLD_MOD(%struct.dss_device* %9, i32 %10, i32 1, i32 18, i32 18)
  %12 = call i32 @udelay(i32 1)
  %13 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %14 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %15 = call i32 @REG_FLD_MOD(%struct.dss_device* %13, i32 %14, i32 1, i32 28, i32 28)
  %16 = load i64, i64* @jiffies, align 8
  %17 = call i64 @msecs_to_jiffies(i32 500)
  %18 = add i64 %16, %17
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %32, %1
  %20 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %21 = load i32, i32* @DSS_SDI_STATUS, align 4
  %22 = call i32 @dss_read_reg(%struct.dss_device* %20, i32 %21)
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @time_after_eq(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %84

32:                                               ; preds = %25
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %35 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %36 = call i32 @REG_FLD_MOD(%struct.dss_device* %34, i32 %35, i32 0, i32 28, i32 28)
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @msecs_to_jiffies(i32 500)
  %39 = add i64 %37, %38
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %54, %33
  %41 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %42 = load i32, i32* @DSS_SDI_STATUS, align 4
  %43 = call i32 @dss_read_reg(%struct.dss_device* %41, i32 %42)
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @time_after_eq(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @DSSERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %84

54:                                               ; preds = %47
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %57 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dispc_lcd_enable_signal(i32 %58, i32 1)
  %60 = load i64, i64* @jiffies, align 8
  %61 = call i64 @msecs_to_jiffies(i32 500)
  %62 = add i64 %60, %61
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %77, %55
  %64 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %65 = load i32, i32* @DSS_SDI_STATUS, align 4
  %66 = call i32 @dss_read_reg(%struct.dss_device* %64, i32 %65)
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @time_after_eq(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %79

77:                                               ; preds = %70
  br label %63

78:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %94

79:                                               ; preds = %75
  %80 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %81 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dispc_lcd_enable_signal(i32 %82, i32 0)
  br label %84

84:                                               ; preds = %79, %52, %30
  %85 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %86 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %87 = call i32 @REG_FLD_MOD(%struct.dss_device* %85, i32 %86, i32 0, i32 18, i32 18)
  %88 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %89 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dispc_pck_free_enable(i32 %90, i32 0)
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %84, %78
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @dispc_pck_free_enable(i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dss_device*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dss_read_reg(%struct.dss_device*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dispc_lcd_enable_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
