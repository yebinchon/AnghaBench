; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32 }

@STB0899_VSTATUS = common dso_local global i32 0, align 4
@VSTATUS_LOCKEDVIT = common dso_local global i32 0, align 4
@STB0899_NIRM = common dso_local global i32 0, align 4
@stb0899_cn_tab = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\0A\00", align 1
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@UWP_CNTRL1 = common dso_local global i32 0, align 4
@UWP_ESN0_QUANT = common dso_local global i32 0, align 4
@UWP_STAT2 = common dso_local global i32 0, align 4
@ESN0_EST = common dso_local global i32 0, align 4
@stb0899_quant_tab = common dso_local global i32 0, align 4
@stb0899_est_tab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb0899_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %16, align 8
  store %struct.stb0899_state* %17, %struct.stb0899_state** %6, align 8
  %18 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %19 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %18, i32 0, i32 2
  store %struct.stb0899_internal* %19, %struct.stb0899_internal** %7, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %22 = load i32, i32* @STB0899_VSTATUS, align 4
  %23 = call i32 @stb0899_read_reg(%struct.stb0899_state* %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %25 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %129 [
    i32 129, label %27
    i32 130, label %27
    i32 128, label %69
  ]

27:                                               ; preds = %2, %2
  %28 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %29 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  %33 = load i32, i32* @VSTATUS_LOCKEDVIT, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @STB0899_GETFIELD(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %39 = load i32, i32* @STB0899_NIRM, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %41 = call i32 @stb0899_read_regs(%struct.stb0899_state* %38, i32 %39, i32* %40, i32 2)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MAKEWORD16(i32 %43, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @stb0899_cn_tab, align 4
  %48 = load i32, i32* @stb0899_cn_tab, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @stb0899_table_lookup(i32 %47, i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %56 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FE_DEBUG, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %57, i32 %58, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %37, %32
  br label %68

68:                                               ; preds = %67, %27
  br label %137

69:                                               ; preds = %2
  %70 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %71 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %128

74:                                               ; preds = %69
  %75 = load i32, i32* @STB0899_S2DEMOD, align 4
  %76 = load i32, i32* @UWP_CNTRL1, align 4
  %77 = call i32 @STB0899_READ_S2REG(i32 %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* @UWP_ESN0_QUANT, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @STB0899_GETFIELD(i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @STB0899_S2DEMOD, align 4
  %82 = load i32, i32* @UWP_STAT2, align 4
  %83 = call i32 @STB0899_READ_S2REG(i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* @ESN0_EST, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @STB0899_GETFIELD(i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  store i32 301, i32* %8, align 4
  br label %115

90:                                               ; preds = %74
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 270, i32* %8, align 4
  br label %114

94:                                               ; preds = %90
  %95 = load i32, i32* @stb0899_quant_tab, align 4
  %96 = load i32, i32* @stb0899_quant_tab, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* %9, align 4
  %100 = mul i32 %99, 100
  %101 = call i8* @stb0899_table_lookup(i32 %95, i32 %98, i32 %100)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @stb0899_est_tab, align 4
  %104 = load i32, i32* @stb0899_est_tab, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %11, align 4
  %108 = call i8* @stb0899_table_lookup(i32 %103, i32 %106, i32 %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub i32 %110, %111
  %113 = udiv i32 %112, 10
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %94, %93
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* %8, align 4
  %117 = load i32*, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  %118 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %119 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FE_DEBUG, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %120, i32 %121, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %115, %69
  br label %137

129:                                              ; preds = %2
  %130 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %131 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FE_DEBUG, align 4
  %134 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %132, i32 %133, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %138

137:                                              ; preds = %128, %68
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %129
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i8* @stb0899_table_lookup(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
