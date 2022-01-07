; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_clk_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_clk_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I3C_BUS_THIGH_MAX_NS = common dso_local global i64 0, align 8
@SCL_I3C_TIMING_CNT_MIN = common dso_local global i32 0, align 4
@I3C_BUS_TYP_I3C_SCL_RATE = common dso_local global i64 0, align 8
@SCL_I3C_PP_TIMING = common dso_local global i64 0, align 8
@DEVICE_CTRL = common dso_local global i64 0, align 8
@DEV_CTRL_I2C_SLAVE_PRESENT = common dso_local global i32 0, align 4
@BUS_FREE_TIMING = common dso_local global i64 0, align 8
@I3C_BUS_TLOW_OD_MIN_NS = common dso_local global i64 0, align 8
@SCL_I3C_OD_TIMING = common dso_local global i64 0, align 8
@I3C_BUS_SDR1_SCL_RATE = common dso_local global i64 0, align 8
@I3C_BUS_SDR2_SCL_RATE = common dso_local global i64 0, align 8
@I3C_BUS_SDR3_SCL_RATE = common dso_local global i64 0, align 8
@I3C_BUS_SDR4_SCL_RATE = common dso_local global i64 0, align 8
@SCL_EXT_LCNT_TIMING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i3c_master*)* @dw_i3c_clk_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_clk_cfg(%struct.dw_i3c_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i3c_master*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %3, align 8
  %9 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %10 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @DIV_ROUND_UP(i64 1000000000, i64 %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* @I3C_BUS_THIGH_MAX_NS, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @DIV_ROUND_UP(i64 %22, i64 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SCL_I3C_TIMING_CNT_MIN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @SCL_I3C_TIMING_CNT_MIN, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @I3C_BUS_TYP_I3C_SCL_RATE, align 8
  %34 = call i32 @DIV_ROUND_UP(i64 %32, i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SCL_I3C_TIMING_CNT_MIN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @SCL_I3C_TIMING_CNT_MIN, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @SCL_I3C_TIMING_HCNT(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @SCL_I3C_TIMING_LCNT(i32 %45)
  %47 = or i32 %44, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %50 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SCL_I3C_PP_TIMING, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %56 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DEVICE_CTRL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  %61 = load i32, i32* @DEV_CTRL_I2C_SLAVE_PRESENT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %42
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @BUS_I3C_MST_FREE(i32 %65)
  %67 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %68 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BUS_FREE_TIMING, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %64, %42
  %74 = load i64, i64* @I3C_BUS_TLOW_OD_MIN_NS, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @DIV_ROUND_UP(i64 %74, i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @SCL_I3C_TIMING_HCNT(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @SCL_I3C_TIMING_LCNT(i32 %79)
  %81 = or i32 %78, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %84 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SCL_I3C_OD_TIMING, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @I3C_BUS_SDR1_SCL_RATE, align 8
  %91 = call i32 @DIV_ROUND_UP(i64 %89, i64 %90)
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @SCL_EXT_LCNT_1(i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @I3C_BUS_SDR2_SCL_RATE, align 8
  %98 = call i32 @DIV_ROUND_UP(i64 %96, i64 %97)
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @SCL_EXT_LCNT_2(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @I3C_BUS_SDR3_SCL_RATE, align 8
  %107 = call i32 @DIV_ROUND_UP(i64 %105, i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @SCL_EXT_LCNT_3(i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @I3C_BUS_SDR4_SCL_RATE, align 8
  %116 = call i32 @DIV_ROUND_UP(i64 %114, i64 %115)
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @SCL_EXT_LCNT_4(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %125 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SCL_EXT_LCNT_TIMING, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %73, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @SCL_I3C_TIMING_HCNT(i32) #1

declare dso_local i32 @SCL_I3C_TIMING_LCNT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BUS_I3C_MST_FREE(i32) #1

declare dso_local i32 @SCL_EXT_LCNT_1(i32) #1

declare dso_local i32 @SCL_EXT_LCNT_2(i32) #1

declare dso_local i32 @SCL_EXT_LCNT_3(i32) #1

declare dso_local i32 @SCL_EXT_LCNT_4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
