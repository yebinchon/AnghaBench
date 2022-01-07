; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_get_rf_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_get_rf_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i32 }

@F367CAB_STDBY_ADCGP = common dso_local global i32 0, align 4
@F367CAB_RF_AGC1_LEVEL_LO = common dso_local global i32 0, align 4
@F367CAB_RF_AGC1_LEVEL_HI = common dso_local global i32 0, align 4
@F367CAB_AGC_IF_PWMCMD_LO = common dso_local global i32 0, align 4
@F367CAB_AGC_IF_PWMCMD_HI = common dso_local global i32 0, align 4
@RF_LOOKUP_TABLE_SIZE = common dso_local global i64 0, align 8
@stv0367cab_RF_LookUp1 = common dso_local global i32** null, align 8
@RF_LOOKUP_TABLE2_SIZE = common dso_local global i64 0, align 8
@stv0367cab_RF_LookUp2 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0367_state*)* @stv0367cab_get_rf_lvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367cab_get_rf_lvl(%struct.stv0367_state* %0) #0 {
  %2 = alloca %struct.stv0367_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.stv0367_state* %0, %struct.stv0367_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %8 = load i32, i32* @F367CAB_STDBY_ADCGP, align 4
  %9 = call i32 @stv0367_writebits(%struct.stv0367_state* %7, i32 %8, i32 0)
  %10 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %11 = load i32, i32* @F367CAB_RF_AGC1_LEVEL_LO, align 4
  %12 = call i32 @stv0367_readbits(%struct.stv0367_state* %10, i32 %11)
  %13 = and i32 %12, 3
  %14 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %15 = load i32, i32* @F367CAB_RF_AGC1_LEVEL_HI, align 4
  %16 = call i32 @stv0367_readbits(%struct.stv0367_state* %14, i32 %15)
  %17 = shl i32 %16, 2
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 100, %19
  %21 = sdiv i32 %20, 1023
  store i32 %21, i32* %4, align 4
  %22 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %23 = load i32, i32* @F367CAB_AGC_IF_PWMCMD_LO, align 4
  %24 = call i32 @stv0367_readbits(%struct.stv0367_state* %22, i32 %23)
  %25 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %26 = load i32, i32* @F367CAB_AGC_IF_PWMCMD_HI, align 4
  %27 = call i32 @stv0367_readbits(%struct.stv0367_state* %25, i32 %26)
  %28 = shl i32 %27, 8
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %30, 2048
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 2048
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 2048
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 100, %39
  %41 = sdiv i32 %40, 4095
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 90
  br i1 %43, label %44, label %79

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 28
  br i1 %46, label %47, label %79

47:                                               ; preds = %44
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %70, %47
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @RF_LOOKUP_TABLE_SIZE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32**, i32*** @stv0367cab_RF_LookUp1, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %53, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load i32**, i32*** @stv0367cab_RF_LookUp1, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 -1, %67
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %48

73:                                               ; preds = %61, %48
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @RF_LOOKUP_TABLE_SIZE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 -56, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %73
  br label %111

79:                                               ; preds = %44, %38
  store i64 0, i64* %6, align 8
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @RF_LOOKUP_TABLE2_SIZE, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = load i32**, i32*** @stv0367cab_RF_LookUp2, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %85, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load i32**, i32*** @stv0367cab_RF_LookUp2, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 -1, %99
  store i32 %100, i32* %3, align 4
  br label %105

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %80

105:                                              ; preds = %93, %80
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @RF_LOOKUP_TABLE2_SIZE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 -72, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %105
  br label %111

111:                                              ; preds = %110, %78
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @stv0367_writebits(%struct.stv0367_state*, i32, i32) #1

declare dso_local i32 @stv0367_readbits(%struct.stv0367_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
