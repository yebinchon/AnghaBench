; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SOR_PWR = common dso_local global i32 0, align 4
@SOR_PWR_NORMAL_STATE_PU = common dso_local global i64 0, align 8
@SOR_PWR_TRIGGER = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to set safe parent clock: %d\0A\00", align 1
@SOR_DP_PADCTL_PD_TXD_3 = common dso_local global i64 0, align 8
@SOR_DP_PADCTL_PD_TXD_0 = common dso_local global i64 0, align 8
@SOR_DP_PADCTL_PD_TXD_1 = common dso_local global i64 0, align 8
@SOR_DP_PADCTL_PD_TXD_2 = common dso_local global i64 0, align 8
@SOR_LANE_SEQ_CTL_TRIGGER = common dso_local global i64 0, align 8
@SOR_LANE_SEQ_CTL_SEQUENCE_UP = common dso_local global i64 0, align 8
@SOR_LANE_SEQ_CTL_POWER_STATE_DOWN = common dso_local global i64 0, align 8
@SOR_LANE_SEQ_CTL = common dso_local global i32 0, align 4
@SOR_PLL2_PORT_POWERDOWN = common dso_local global i64 0, align 8
@SOR_PLL0_VCOPD = common dso_local global i64 0, align 8
@SOR_PLL0_PWR = common dso_local global i64 0, align 8
@SOR_PLL2_SEQ_PLLCAPPD = common dso_local global i64 0, align 8
@SOR_PLL2_SEQ_PLLCAPPD_ENFORCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*)* @tegra_sor_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_power_down(%struct.tegra_sor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_sor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %3, align 8
  %7 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %8 = load i32, i32* @SOR_PWR, align 4
  %9 = call i64 @tegra_sor_readl(%struct.tegra_sor* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* @SOR_PWR_NORMAL_STATE_PU, align 8
  %11 = xor i64 %10, -1
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* @SOR_PWR_TRIGGER, align 8
  %15 = load i64, i64* %4, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %4, align 8
  %17 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @SOR_PWR, align 4
  %20 = call i32 @tegra_sor_writel(%struct.tegra_sor* %17, i64 %18, i32 %19)
  %21 = load i64, i64* @jiffies, align 8
  %22 = call i64 @msecs_to_jiffies(i32 250)
  %23 = add i64 %21, %22
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @time_before(i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %31 = load i32, i32* @SOR_PWR, align 4
  %32 = call i64 @tegra_sor_readl(%struct.tegra_sor* %30, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @SOR_PWR_TRIGGER, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %203

38:                                               ; preds = %29
  %39 = call i32 @usleep_range(i32 25, i32 100)
  br label %24

40:                                               ; preds = %24
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @SOR_PWR_TRIGGER, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %203

48:                                               ; preds = %40
  %49 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %50 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @tegra_sor_set_parent_clock(%struct.tegra_sor* %49, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %203

63:                                               ; preds = %48
  %64 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %65 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %66 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @tegra_sor_readl(%struct.tegra_sor* %64, i32 %71)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* @SOR_DP_PADCTL_PD_TXD_3, align 8
  %74 = load i64, i64* @SOR_DP_PADCTL_PD_TXD_0, align 8
  %75 = or i64 %73, %74
  %76 = load i64, i64* @SOR_DP_PADCTL_PD_TXD_1, align 8
  %77 = or i64 %75, %76
  %78 = load i64, i64* @SOR_DP_PADCTL_PD_TXD_2, align 8
  %79 = or i64 %77, %78
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %4, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %4, align 8
  %83 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @tegra_sor_writel(%struct.tegra_sor* %83, i64 %84, i32 %91)
  %93 = load i64, i64* @SOR_LANE_SEQ_CTL_TRIGGER, align 8
  %94 = load i64, i64* @SOR_LANE_SEQ_CTL_SEQUENCE_UP, align 8
  %95 = or i64 %93, %94
  %96 = load i64, i64* @SOR_LANE_SEQ_CTL_POWER_STATE_DOWN, align 8
  %97 = or i64 %95, %96
  store i64 %97, i64* %4, align 8
  %98 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i32, i32* @SOR_LANE_SEQ_CTL, align 4
  %101 = call i32 @tegra_sor_writel(%struct.tegra_sor* %98, i64 %99, i32 %100)
  %102 = load i64, i64* @jiffies, align 8
  %103 = call i64 @msecs_to_jiffies(i32 250)
  %104 = add i64 %102, %103
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %119, %63
  %106 = load i64, i64* @jiffies, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @time_before(i64 %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %112 = load i32, i32* @SOR_LANE_SEQ_CTL, align 4
  %113 = call i64 @tegra_sor_readl(%struct.tegra_sor* %111, i32 %112)
  store i64 %113, i64* %4, align 8
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @SOR_LANE_SEQ_CTL_TRIGGER, align 8
  %116 = and i64 %114, %115
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %121

119:                                              ; preds = %110
  %120 = call i32 @usleep_range(i32 25, i32 100)
  br label %105

121:                                              ; preds = %118, %105
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @SOR_LANE_SEQ_CTL_TRIGGER, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @ETIMEDOUT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %203

129:                                              ; preds = %121
  %130 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %131 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %132 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @tegra_sor_readl(%struct.tegra_sor* %130, i32 %137)
  store i64 %138, i64* %4, align 8
  %139 = load i64, i64* @SOR_PLL2_PORT_POWERDOWN, align 8
  %140 = load i64, i64* %4, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %4, align 8
  %142 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %143 = load i64, i64* %4, align 8
  %144 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %145 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @tegra_sor_writel(%struct.tegra_sor* %142, i64 %143, i32 %150)
  %152 = call i32 @usleep_range(i32 20, i32 100)
  %153 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %154 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %155 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @tegra_sor_readl(%struct.tegra_sor* %153, i32 %160)
  store i64 %161, i64* %4, align 8
  %162 = load i64, i64* @SOR_PLL0_VCOPD, align 8
  %163 = load i64, i64* @SOR_PLL0_PWR, align 8
  %164 = or i64 %162, %163
  %165 = load i64, i64* %4, align 8
  %166 = or i64 %165, %164
  store i64 %166, i64* %4, align 8
  %167 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %168 = load i64, i64* %4, align 8
  %169 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %170 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %169, i32 0, i32 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @tegra_sor_writel(%struct.tegra_sor* %167, i64 %168, i32 %175)
  %177 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %178 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %179 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @tegra_sor_readl(%struct.tegra_sor* %177, i32 %184)
  store i64 %185, i64* %4, align 8
  %186 = load i64, i64* @SOR_PLL2_SEQ_PLLCAPPD, align 8
  %187 = load i64, i64* %4, align 8
  %188 = or i64 %187, %186
  store i64 %188, i64* %4, align 8
  %189 = load i64, i64* @SOR_PLL2_SEQ_PLLCAPPD_ENFORCE, align 8
  %190 = load i64, i64* %4, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %4, align 8
  %192 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %193 = load i64, i64* %4, align 8
  %194 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %195 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @tegra_sor_writel(%struct.tegra_sor* %192, i64 %193, i32 %200)
  %202 = call i32 @usleep_range(i32 20, i32 100)
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %129, %126, %56, %45, %37
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i64 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i64, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tegra_sor_set_parent_clock(%struct.tegra_sor*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
