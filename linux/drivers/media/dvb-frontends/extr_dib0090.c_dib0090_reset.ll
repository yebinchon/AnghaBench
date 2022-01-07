; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@EN_IQADC = common dso_local global i32 0, align 4
@EN_BB = common dso_local global i32 0, align 4
@EN_BIAS = common dso_local global i32 0, align 4
@EN_DIGCLK = common dso_local global i32 0, align 4
@EN_PLL = common dso_local global i32 0, align 4
@EN_CRYSTAL = common dso_local global i32 0, align 4
@dib0090_defaults = common dso_local global i32 0, align 4
@dib0090_p1g_additionnal_defaults = common dso_local global i32 0, align 4
@P1D_E_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Pll lock : %d\0A\00", align 1
@DC_CAL = common dso_local global i32 0, align 4
@WBD_CAL = common dso_local global i32 0, align 4
@TEMP_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib0090_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib0090_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.dib0090_state*, %struct.dib0090_state** %6, align 8
  store %struct.dib0090_state* %7, %struct.dib0090_state** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %10 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call i32 @dib0090_reset_digital(%struct.dvb_frontend* %8, %struct.TYPE_6__* %11)
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = call i64 @dib0090_identify(%struct.dvb_frontend* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %137

19:                                               ; preds = %1
  %20 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %21 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %19
  %26 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %27 = call i32 @dib0090_read_reg(%struct.dib0090_state* %26, i32 26)
  %28 = ashr i32 %27, 5
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %33 = load i32, i32* @EN_IQADC, align 4
  %34 = load i32, i32* @EN_BB, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EN_BIAS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EN_DIGCLK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @EN_PLL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EN_CRYSTAL, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @dib0090_write_reg(%struct.dib0090_state* %32, i32 27, i32 %43)
  br label %53

45:                                               ; preds = %25
  %46 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %47 = load i32, i32* @EN_DIGCLK, align 4
  %48 = load i32, i32* @EN_PLL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @EN_CRYSTAL, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @dib0090_write_reg(%struct.dib0090_state* %46, i32 27, i32 %51)
  br label %53

53:                                               ; preds = %45, %31
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %56 = load i32, i32* @dib0090_defaults, align 4
  %57 = call i32 @dib0090_set_default_config(%struct.dib0090_state* %55, i32 %56)
  %58 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %59 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %65 = call i32 @dib0090_write_reg(%struct.dib0090_state* %64, i32 24, i32 10512)
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %68 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %74 = load i32, i32* @dib0090_p1g_additionnal_defaults, align 4
  %75 = call i32 @dib0090_set_default_config(%struct.dib0090_state* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %78 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 31
  %82 = load i32, i32* @P1D_E_F, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %76
  %85 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %86 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %76
  %91 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %92 = call i32 @dib0090_set_EFUSE(%struct.dib0090_state* %91)
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %95 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %102 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %103 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 3
  %108 = call i32 @dib0090_write_reg(%struct.dib0090_state* %101, i32 20, i32 %107)
  br label %124

109:                                              ; preds = %93
  %110 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %111 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 24000
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %119 = call i32 @dib0090_write_reg(%struct.dib0090_state* %118, i32 20, i32 1)
  br label %123

120:                                              ; preds = %109
  %121 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %122 = call i32 @dib0090_write_reg(%struct.dib0090_state* %121, i32 20, i32 2)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %100
  %125 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %126 = call i32 @dib0090_read_reg(%struct.dib0090_state* %125, i32 26)
  %127 = ashr i32 %126, 11
  %128 = and i32 %127, 1
  %129 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @DC_CAL, align 4
  %131 = load i32, i32* @WBD_CAL, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @TEMP_CAL, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %136 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %124, %16
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @dib0090_reset_digital(%struct.dvb_frontend*, %struct.TYPE_6__*) #1

declare dso_local i64 @dib0090_identify(%struct.dvb_frontend*) #1

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dib0090_set_default_config(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_set_EFUSE(%struct.dib0090_state*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
