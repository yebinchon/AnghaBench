; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32 }

@STB0899_VSTATUS = common dso_local global i32 0, align 4
@VSTATUS_LOCKEDVIT = common dso_local global i32 0, align 4
@STB0899_AGCIQIN = common dso_local global i32 0, align 4
@AGCIQVALUE = common dso_local global i32 0, align 4
@stb0899_dvbsrf_tab = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm\00", align 1
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@IF_AGC_GAIN = common dso_local global i32 0, align 4
@stb0899_dvbs2rf_tab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @stb0899_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_signal_strength(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %11, align 8
  store %struct.stb0899_state* %12, %struct.stb0899_state** %6, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 2
  store %struct.stb0899_internal* %14, %struct.stb0899_internal** %7, align 8
  %15 = load i64*, i64** %5, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %17 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %92 [
    i32 129, label %19
    i32 130, label %19
    i32 128, label %60
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %21 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %26 = load i32, i32* @STB0899_VSTATUS, align 4
  %27 = call i32 @stb0899_read_reg(%struct.stb0899_state* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @VSTATUS_LOCKEDVIT, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @STB0899_GETFIELD(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %34 = load i32, i32* @STB0899_AGCIQIN, align 4
  %35 = call i32 @stb0899_read_reg(%struct.stb0899_state* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @AGCIQVALUE, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @STB0899_GETFIELD(i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @stb0899_dvbsrf_tab, align 4
  %40 = load i32, i32* @stb0899_dvbsrf_tab, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @stb0899_table_lookup(i32 %39, i32 %42, i32 %43)
  %45 = load i64*, i64** %5, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 750
  store i64 %48, i64* %46, align 8
  %49 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %50 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FE_DEBUG, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %51, i32 %52, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %56)
  br label %58

58:                                               ; preds = %32, %24
  br label %59

59:                                               ; preds = %58, %19
  br label %100

60:                                               ; preds = %2
  %61 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %62 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  %66 = load i32, i32* @STB0899_S2DEMOD, align 4
  %67 = load i32, i32* @IF_AGC_GAIN, align 4
  %68 = call i32 @STB0899_READ_S2REG(i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @IF_AGC_GAIN, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @STB0899_GETFIELD(i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @stb0899_dvbs2rf_tab, align 4
  %73 = load i32, i32* @stb0899_dvbs2rf_tab, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @stb0899_table_lookup(i32 %72, i32 %75, i32 %76)
  %78 = load i64*, i64** %5, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 950
  store i64 %81, i64* %79, align 8
  %82 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %83 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FE_DEBUG, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 16383
  %88 = load i64*, i64** %5, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %84, i32 %85, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %87, i64 %89)
  br label %91

91:                                               ; preds = %65, %60
  br label %100

92:                                               ; preds = %2
  %93 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %94 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FE_DEBUG, align 4
  %97 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %95, i32 %96, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %101

100:                                              ; preds = %91, %59
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i64 @stb0899_table_lookup(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
