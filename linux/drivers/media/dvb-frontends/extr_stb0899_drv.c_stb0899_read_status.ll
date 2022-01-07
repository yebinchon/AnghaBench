; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Delivery system DVB-S/DSS\00", align 1
@STB0899_VSTATUS = common dso_local global i32 0, align 4
@VSTATUS_LOCKEDVIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"--------> FE_HAS_CARRIER | FE_HAS_LOCK\00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@STB0899_PLPARM = common dso_local global i32 0, align 4
@VITCURPUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"--------> FE_HAS_VITERBI | FE_HAS_SYNC\00", align 1
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@STB0899_POSTPROC_GPIO_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Delivery system DVB-S2\00", align 1
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@DMD_STAT2 = common dso_local global i32 0, align 4
@UWP_LOCK = common dso_local global i32 0, align 4
@CSM_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER\00", align 1
@STB0899_CFGPDELSTATUS1 = common dso_local global i32 0, align 4
@CFGPDELSTATUS_LOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK\00", align 1
@CONTINUOUS_STREAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI\00", align 1
@ACCEPTED_STREAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb0899_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %10, align 8
  store %struct.stb0899_state* %11, %struct.stb0899_state** %6, align 8
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %13 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %12, i32 0, i32 2
  store %struct.stb0899_internal* %13, %struct.stb0899_internal** %7, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %161 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %75
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %20 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FE_DEBUG, align 4
  %23 = call i32 @dprintk(i32 %21, i32 %22, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %25 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %18
  %29 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %30 = load i32, i32* @STB0899_VSTATUS, align 4
  %31 = call i32 @stb0899_read_reg(%struct.stb0899_state* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @VSTATUS_LOCKEDVIT, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @STB0899_GETFIELD(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %28
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %38 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FE_DEBUG, align 4
  %41 = call i32 @dprintk(i32 %39, i32 %40, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %43 = load i32, i32* @FE_HAS_CARRIER, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FE_HAS_LOCK, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %51 = load i32, i32* @STB0899_PLPARM, align 4
  %52 = call i32 @stb0899_read_reg(%struct.stb0899_state* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @VITCURPUN, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @STB0899_GETFIELD(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %36
  %58 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %59 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FE_DEBUG, align 4
  %62 = call i32 @dprintk(i32 %60, i32 %61, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @FE_HAS_VITERBI, align 4
  %64 = load i32, i32* @FE_HAS_SYNC, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %70 = load i32, i32* @STB0899_POSTPROC_GPIO_LOCK, align 4
  %71 = call i32 @stb0899_postproc(%struct.stb0899_state* %69, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %57, %36
  br label %73

73:                                               ; preds = %72, %28
  br label %74

74:                                               ; preds = %73, %18
  br label %169

75:                                               ; preds = %2
  %76 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %77 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FE_DEBUG, align 4
  %80 = call i32 @dprintk(i32 %78, i32 %79, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %82 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %160

85:                                               ; preds = %75
  %86 = load i32, i32* @STB0899_S2DEMOD, align 4
  %87 = load i32, i32* @DMD_STAT2, align 4
  %88 = call i32 @STB0899_READ_S2REG(i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @UWP_LOCK, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @STB0899_GETFIELD(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %159

93:                                               ; preds = %85
  %94 = load i32, i32* @CSM_LOCK, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @STB0899_GETFIELD(i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %159

98:                                               ; preds = %93
  %99 = load i32, i32* @FE_HAS_CARRIER, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %104 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @FE_DEBUG, align 4
  %107 = call i32 @dprintk(i32 %105, i32 %106, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %109 = load i32, i32* @STB0899_CFGPDELSTATUS1, align 4
  %110 = call i32 @stb0899_read_reg(%struct.stb0899_state* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @CFGPDELSTATUS_LOCK, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @STB0899_GETFIELD(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %98
  %116 = load i32, i32* @FE_HAS_LOCK, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %121 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FE_DEBUG, align 4
  %124 = call i32 @dprintk(i32 %122, i32 %123, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %115, %98
  %126 = load i32, i32* @CONTINUOUS_STREAM, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @STB0899_GETFIELD(i32 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load i32, i32* @FE_HAS_VITERBI, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  %135 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %136 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @FE_DEBUG, align 4
  %139 = call i32 @dprintk(i32 %137, i32 %138, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %130, %125
  %141 = load i32, i32* @ACCEPTED_STREAM, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @STB0899_GETFIELD(i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load i32, i32* @FE_HAS_SYNC, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %151 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @FE_DEBUG, align 4
  %154 = call i32 @dprintk(i32 %152, i32 %153, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %155 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %156 = load i32, i32* @STB0899_POSTPROC_GPIO_LOCK, align 4
  %157 = call i32 @stb0899_postproc(%struct.stb0899_state* %155, i32 %156, i32 1)
  br label %158

158:                                              ; preds = %145, %140
  br label %159

159:                                              ; preds = %158, %93, %85
  br label %160

160:                                              ; preds = %159, %75
  br label %169

161:                                              ; preds = %2
  %162 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %163 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @FE_DEBUG, align 4
  %166 = call i32 @dprintk(i32 %164, i32 %165, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %170

169:                                              ; preds = %160, %74
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %161
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @stb0899_postproc(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
