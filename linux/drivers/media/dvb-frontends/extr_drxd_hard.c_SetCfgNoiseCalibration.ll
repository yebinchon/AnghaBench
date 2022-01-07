; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgNoiseCalibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgNoiseCalibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32 }
%struct.SNoiseCal = type { i32, i32, i32, i64 }

@SC_RA_RAM_BE_OPT_ENA__A = common dso_local global i32 0, align 4
@SC_RA_RAM_BE_OPT_ENA_CP_OPT = common dso_local global i32 0, align 4
@CP_REG_AC_NEXP_OFFS__A = common dso_local global i32 0, align 4
@B_SC_RA_RAM_CO_TD_CAL_2K__A = common dso_local global i32 0, align 4
@B_SC_RA_RAM_CO_TD_CAL_8K__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, %struct.SNoiseCal*)* @SetCfgNoiseCalibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetCfgNoiseCalibration(%struct.drxd_state* %0, %struct.SNoiseCal* %1) #0 {
  %3 = alloca %struct.drxd_state*, align 8
  %4 = alloca %struct.SNoiseCal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %3, align 8
  store %struct.SNoiseCal* %1, %struct.SNoiseCal** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %2
  %8 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %9 = load i32, i32* @SC_RA_RAM_BE_OPT_ENA__A, align 4
  %10 = call i32 @Read16(%struct.drxd_state* %8, i32 %9, i32* %5, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %75

14:                                               ; preds = %7
  %15 = load %struct.SNoiseCal*, %struct.SNoiseCal** %4, align 8
  %16 = getelementptr inbounds %struct.SNoiseCal, %struct.SNoiseCal* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @SC_RA_RAM_BE_OPT_ENA_CP_OPT, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %40

24:                                               ; preds = %14
  %25 = load i32, i32* @SC_RA_RAM_BE_OPT_ENA_CP_OPT, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %31 = load i32, i32* @CP_REG_AC_NEXP_OFFS__A, align 4
  %32 = load %struct.SNoiseCal*, %struct.SNoiseCal** %4, align 8
  %33 = getelementptr inbounds %struct.SNoiseCal, %struct.SNoiseCal* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @Write16(%struct.drxd_state* %30, i32 %31, i32 %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %75

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %42 = load i32, i32* @SC_RA_RAM_BE_OPT_ENA__A, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @Write16(%struct.drxd_state* %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %75

48:                                               ; preds = %40
  %49 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %50 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %48
  %54 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %55 = load i32, i32* @B_SC_RA_RAM_CO_TD_CAL_2K__A, align 4
  %56 = load %struct.SNoiseCal*, %struct.SNoiseCal** %4, align 8
  %57 = getelementptr inbounds %struct.SNoiseCal, %struct.SNoiseCal* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @Write16(%struct.drxd_state* %54, i32 %55, i32 %58, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %75

63:                                               ; preds = %53
  %64 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %65 = load i32, i32* @B_SC_RA_RAM_CO_TD_CAL_8K__A, align 4
  %66 = load %struct.SNoiseCal*, %struct.SNoiseCal** %4, align 8
  %67 = getelementptr inbounds %struct.SNoiseCal, %struct.SNoiseCal* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @Write16(%struct.drxd_state* %64, i32 %65, i32 %68, i32 0)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %75

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %48
  br label %75

75:                                               ; preds = %74, %72, %62, %47, %38, %13
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
