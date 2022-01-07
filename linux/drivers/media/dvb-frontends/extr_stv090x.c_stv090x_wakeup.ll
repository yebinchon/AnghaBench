; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Wake %s(%d) from standby\00", align 1
@STV0900 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"STV0900\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"STV0903\00", align 1
@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@STANDBY_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR1 = common dso_local global i32 0, align 4
@ADC1_PON_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR2 = common dso_local global i32 0, align 4
@DISEQC1_PON_FIELD = common dso_local global i32 0, align 4
@STV090x_STOPCLK1 = common dso_local global i32 0, align 4
@STOP_CLKPKDT1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKADCI1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKFEC_FIELD = common dso_local global i32 0, align 4
@STV090x_STOPCLK2 = common dso_local global i32 0, align 4
@STOP_CLKSAMP1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKVIT1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKTS_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR3 = common dso_local global i32 0, align 4
@ADC2_PON_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR4 = common dso_local global i32 0, align 4
@DISEQC2_PON_FIELD = common dso_local global i32 0, align 4
@STOP_CLKPKDT2_FIELD = common dso_local global i32 0, align 4
@STOP_CLKADCI2_FIELD = common dso_local global i32 0, align 4
@STOP_CLKSAMP2_FIELD = common dso_local global i32 0, align 4
@STOP_CLKVIT2_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Wrong demodulator!\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_wakeup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  store %struct.stv090x_state* %8, %struct.stv090x_state** %4, align 8
  %9 = load i32, i32* @FE_DEBUG, align 4
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %11 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STV0900, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %9, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  %21 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %22 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %27 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %28 = call i32 @stv090x_read_reg(%struct.stv090x_state* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @STANDBY_FIELD, align 4
  %31 = call i32 @STV090x_SETFIELD(i32 %29, i32 %30, i32 0)
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %33 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @stv090x_write_reg(%struct.stv090x_state* %32, i32 %33, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %181

38:                                               ; preds = %1
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %40 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %172 [
    i32 129, label %42
    i32 128, label %107
  ]

42:                                               ; preds = %38
  %43 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %44 = load i32, i32* @STV090x_TSTTNR1, align 4
  %45 = call i32 @stv090x_read_reg(%struct.stv090x_state* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ADC1_PON_FIELD, align 4
  %48 = call i32 @STV090x_SETFIELD(i32 %46, i32 %47, i32 1)
  %49 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %50 = load i32, i32* @STV090x_TSTTNR1, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @stv090x_write_reg(%struct.stv090x_state* %49, i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %181

55:                                               ; preds = %42
  %56 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %57 = load i32, i32* @STV090x_TSTTNR2, align 4
  %58 = call i32 @stv090x_read_reg(%struct.stv090x_state* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @DISEQC1_PON_FIELD, align 4
  %61 = call i32 @STV090x_SETFIELD(i32 %59, i32 %60, i32 1)
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %63 = load i32, i32* @STV090x_TSTTNR2, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @stv090x_write_reg(%struct.stv090x_state* %62, i32 %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %181

68:                                               ; preds = %55
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %70 = load i32, i32* @STV090x_STOPCLK1, align 4
  %71 = call i32 @stv090x_read_reg(%struct.stv090x_state* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @STOP_CLKPKDT1_FIELD, align 4
  %74 = call i32 @STV090x_SETFIELD(i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @STOP_CLKADCI1_FIELD, align 4
  %77 = call i32 @STV090x_SETFIELD(i32 %75, i32 %76, i32 0)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @STOP_CLKFEC_FIELD, align 4
  %80 = call i32 @STV090x_SETFIELD(i32 %78, i32 %79, i32 0)
  %81 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %82 = load i32, i32* @STV090x_STOPCLK1, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @stv090x_write_reg(%struct.stv090x_state* %81, i32 %82, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %181

87:                                               ; preds = %68
  %88 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %89 = load i32, i32* @STV090x_STOPCLK2, align 4
  %90 = call i32 @stv090x_read_reg(%struct.stv090x_state* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @STOP_CLKSAMP1_FIELD, align 4
  %93 = call i32 @STV090x_SETFIELD(i32 %91, i32 %92, i32 0)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @STOP_CLKVIT1_FIELD, align 4
  %96 = call i32 @STV090x_SETFIELD(i32 %94, i32 %95, i32 0)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @STOP_CLKTS_FIELD, align 4
  %99 = call i32 @STV090x_SETFIELD(i32 %97, i32 %98, i32 0)
  %100 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %101 = load i32, i32* @STV090x_STOPCLK2, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @stv090x_write_reg(%struct.stv090x_state* %100, i32 %101, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %87
  br label %181

106:                                              ; preds = %87
  br label %175

107:                                              ; preds = %38
  %108 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %109 = load i32, i32* @STV090x_TSTTNR3, align 4
  %110 = call i32 @stv090x_read_reg(%struct.stv090x_state* %108, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @ADC2_PON_FIELD, align 4
  %113 = call i32 @STV090x_SETFIELD(i32 %111, i32 %112, i32 1)
  %114 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %115 = load i32, i32* @STV090x_TSTTNR3, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i64 @stv090x_write_reg(%struct.stv090x_state* %114, i32 %115, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %181

120:                                              ; preds = %107
  %121 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %122 = load i32, i32* @STV090x_TSTTNR4, align 4
  %123 = call i32 @stv090x_read_reg(%struct.stv090x_state* %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @DISEQC2_PON_FIELD, align 4
  %126 = call i32 @STV090x_SETFIELD(i32 %124, i32 %125, i32 1)
  %127 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %128 = load i32, i32* @STV090x_TSTTNR4, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @stv090x_write_reg(%struct.stv090x_state* %127, i32 %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %181

133:                                              ; preds = %120
  %134 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %135 = load i32, i32* @STV090x_STOPCLK1, align 4
  %136 = call i32 @stv090x_read_reg(%struct.stv090x_state* %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @STOP_CLKPKDT2_FIELD, align 4
  %139 = call i32 @STV090x_SETFIELD(i32 %137, i32 %138, i32 0)
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @STOP_CLKADCI2_FIELD, align 4
  %142 = call i32 @STV090x_SETFIELD(i32 %140, i32 %141, i32 0)
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @STOP_CLKFEC_FIELD, align 4
  %145 = call i32 @STV090x_SETFIELD(i32 %143, i32 %144, i32 0)
  %146 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %147 = load i32, i32* @STV090x_STOPCLK1, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @stv090x_write_reg(%struct.stv090x_state* %146, i32 %147, i32 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %133
  br label %181

152:                                              ; preds = %133
  %153 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %154 = load i32, i32* @STV090x_STOPCLK2, align 4
  %155 = call i32 @stv090x_read_reg(%struct.stv090x_state* %153, i32 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @STOP_CLKSAMP2_FIELD, align 4
  %158 = call i32 @STV090x_SETFIELD(i32 %156, i32 %157, i32 0)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @STOP_CLKVIT2_FIELD, align 4
  %161 = call i32 @STV090x_SETFIELD(i32 %159, i32 %160, i32 0)
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @STOP_CLKTS_FIELD, align 4
  %164 = call i32 @STV090x_SETFIELD(i32 %162, i32 %163, i32 0)
  %165 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %166 = load i32, i32* @STV090x_STOPCLK2, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i64 @stv090x_write_reg(%struct.stv090x_state* %165, i32 %166, i32 %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %152
  br label %181

171:                                              ; preds = %152
  br label %175

172:                                              ; preds = %38
  %173 = load i32, i32* @FE_ERROR, align 4
  %174 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %173, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %171, %106
  %176 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %177 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = call i32 @mutex_unlock(i32* %179)
  store i32 0, i32* %2, align 4
  br label %189

181:                                              ; preds = %170, %151, %132, %119, %105, %86, %67, %54, %37
  %182 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %183 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load i32, i32* @FE_ERROR, align 4
  %188 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %187, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %189

189:                                              ; preds = %181, %175
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD(i32, i32, i32) #1

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
