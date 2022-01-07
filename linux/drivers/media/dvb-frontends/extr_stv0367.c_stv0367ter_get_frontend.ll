; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0367_state* }
%struct.stv0367_state = type { %struct.stv0367ter_state* }
%struct.stv0367ter_state = type { i64 }
%struct.dtv_frontend_properties = type { i8*, i32, i32, i32, i8*, i32, i64 }

@F367TER_TPS_CONST = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@F367TER_INV_SPECTR = common dso_local global i32 0, align 4
@F367TER_TPS_HIERMODE = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@HIERARCHY_AUTO = common dso_local global i32 0, align 4
@FE_TER_HIER_LOW_PRIO = common dso_local global i64 0, align 8
@F367TER_TPS_LPCODE = common dso_local global i32 0, align 4
@F367TER_TPS_HPCODE = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@FEC_7_8 = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@F367TER_SYR_MODE = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i32 0, align 4
@F367TER_SYR_GUARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @stv0367ter_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367ter_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.stv0367_state*, align 8
  %6 = alloca %struct.stv0367ter_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stv0367_state*, %struct.stv0367_state** %11, align 8
  store %struct.stv0367_state* %12, %struct.stv0367_state** %5, align 8
  %13 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %14 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %13, i32 0, i32 0
  %15 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %14, align 8
  store %struct.stv0367ter_state* %15, %struct.stv0367ter_state** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = call i64 @stv0367_get_tuner_freq(%struct.dvb_frontend* %16)
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 6
  store i64 %17, i64* %19, align 8
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 0, %28
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 6
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %34 = load i32, i32* @F367TER_TPS_CONST, align 4
  %35 = call i8* @stv0367_readbits(%struct.stv0367_state* %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @QPSK, align 4
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  br label %55

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @QAM_16, align 4
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @QAM_64, align 4
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %57 = load i32, i32* @F367TER_INV_SPECTR, align 4
  %58 = call i8* @stv0367_readbits(%struct.stv0367_state* %56, i32 %57)
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %62 = load i32, i32* @F367TER_TPS_HIERMODE, align 4
  %63 = call i8* @stv0367_readbits(%struct.stv0367_state* %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %82 [
    i32 0, label %66
    i32 1, label %70
    i32 2, label %74
    i32 3, label %78
  ]

66:                                               ; preds = %55
  %67 = load i32, i32* @HIERARCHY_NONE, align 4
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  br label %86

70:                                               ; preds = %55
  %71 = load i32, i32* @HIERARCHY_1, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  br label %86

74:                                               ; preds = %55
  %75 = load i32, i32* @HIERARCHY_2, align 4
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %86

78:                                               ; preds = %55
  %79 = load i32, i32* @HIERARCHY_4, align 4
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %86

82:                                               ; preds = %55
  %83 = load i32, i32* @HIERARCHY_AUTO, align 4
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %78, %74, %70, %66
  %87 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %6, align 8
  %88 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FE_TER_HIER_LOW_PRIO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %94 = load i32, i32* @F367TER_TPS_LPCODE, align 4
  %95 = call i8* @stv0367_readbits(%struct.stv0367_state* %93, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %9, align 4
  br label %102

97:                                               ; preds = %86
  %98 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %99 = load i32, i32* @F367TER_TPS_HPCODE, align 4
  %100 = call i8* @stv0367_readbits(%struct.stv0367_state* %98, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %9, align 4
  switch i32 %103, label %124 [
    i32 0, label %104
    i32 1, label %108
    i32 2, label %112
    i32 3, label %116
    i32 4, label %120
  ]

104:                                              ; preds = %102
  %105 = load i32, i32* @FEC_1_2, align 4
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %128

108:                                              ; preds = %102
  %109 = load i32, i32* @FEC_2_3, align 4
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %128

112:                                              ; preds = %102
  %113 = load i32, i32* @FEC_3_4, align 4
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %128

116:                                              ; preds = %102
  %117 = load i32, i32* @FEC_5_6, align 4
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %128

120:                                              ; preds = %102
  %121 = load i32, i32* @FEC_7_8, align 4
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  br label %128

124:                                              ; preds = %102
  %125 = load i32, i32* @FEC_AUTO, align 4
  %126 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %120, %116, %112, %108, %104
  %129 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %130 = load i32, i32* @F367TER_SYR_MODE, align 4
  %131 = call i8* @stv0367_readbits(%struct.stv0367_state* %129, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  switch i32 %133, label %142 [
    i32 129, label %134
    i32 128, label %138
  ]

134:                                              ; preds = %128
  %135 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  br label %146

138:                                              ; preds = %128
  %139 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  br label %146

142:                                              ; preds = %128
  %143 = load i32, i32* @TRANSMISSION_MODE_AUTO, align 4
  %144 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %138, %134
  %147 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %148 = load i32, i32* @F367TER_SYR_GUARD, align 4
  %149 = call i8* @stv0367_readbits(%struct.stv0367_state* %147, i32 %148)
  %150 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %151 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  ret i32 0
}

declare dso_local i64 @stv0367_get_tuner_freq(%struct.dvb_frontend*) #1

declare dso_local i8* @stv0367_readbits(%struct.stv0367_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
