; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i64, i32, i32, i32, %struct.TYPE_2__*, %struct.stv090x_config* }
%struct.TYPE_2__ = type { i64 }
%struct.stv090x_config = type { i64 (%struct.dvb_frontend.0*)*, i32, i64 (%struct.dvb_frontend.1*, i32)*, i32 }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque

@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error waking device\00", align 1
@TNRCFG2 = common dso_local global i32 0, align 4
@TUN_IQSWAP_FIELD = common dso_local global i32 0, align 4
@DEMOD = common dso_local global i32 0, align 4
@ROLLOFF_CONTROL_FIELD = common dso_local global i32 0, align 4
@TUNER_WAKE = common dso_local global i32 0, align 4
@STV0900 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca %struct.stv090x_config*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  store %struct.stv090x_state* %9, %struct.stv090x_state** %4, align 8
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %11 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %10, i32 0, i32 5
  %12 = load %struct.stv090x_config*, %struct.stv090x_config** %11, align 8
  store %struct.stv090x_config* %12, %struct.stv090x_config** %5, align 8
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %14 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %1
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %21 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %20, i32 1)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %173

24:                                               ; preds = %19
  %25 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %26 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %25, i32 0, i32 0
  %27 = load i64 (%struct.dvb_frontend.0*)*, i64 (%struct.dvb_frontend.0*)** %26, align 8
  %28 = icmp ne i64 (%struct.dvb_frontend.0*)* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %31 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %30, i32 0, i32 0
  %32 = load i64 (%struct.dvb_frontend.0*)*, i64 (%struct.dvb_frontend.0*)** %31, align 8
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %34 = bitcast %struct.dvb_frontend* %33 to %struct.dvb_frontend.0*
  %35 = call i64 %32(%struct.dvb_frontend.0* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %170

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %41 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %40, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %173

44:                                               ; preds = %39
  %45 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %46 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %47 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @stv090x_set_mclk(%struct.stv090x_state* %45, i32 135000000, i32 %48)
  %50 = call i32 @msleep(i32 5)
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %52 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %53 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %54 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 32, %55
  %57 = call i64 @stv090x_write_reg(%struct.stv090x_state* %51, i32 %52, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %173

60:                                               ; preds = %44
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %62 = call i32 @stv090x_get_mclk(%struct.stv090x_state* %61)
  br label %63

63:                                               ; preds = %60, %1
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %65 = call i64 @stv090x_wakeup(%struct.dvb_frontend* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @FE_ERROR, align 4
  %69 = call i32 @dprintk(i32 %68, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %173

70:                                               ; preds = %63
  %71 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %72 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %73 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @stv090x_ldpc_mode(%struct.stv090x_state* %71, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %173

78:                                               ; preds = %70
  %79 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %80 = load i32, i32* @TNRCFG2, align 4
  %81 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @TUN_IQSWAP_FIELD, align 4
  %84 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %85 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @STV090x_SETFIELD_Px(i32 %82, i32 %83, i32 %86)
  %88 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %89 = load i32, i32* @TNRCFG2, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %88, i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %173

94:                                               ; preds = %78
  %95 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %96 = load i32, i32* @DEMOD, align 4
  %97 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @ROLLOFF_CONTROL_FIELD, align 4
  %100 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %101 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @STV090x_SETFIELD_Px(i32 %98, i32 %99, i32 %102)
  %104 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %105 = load i32, i32* @DEMOD, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %104, i32 %105, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %173

110:                                              ; preds = %94
  %111 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %112 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %111, i32 1)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %173

115:                                              ; preds = %110
  %116 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %117 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %116, i32 0, i32 2
  %118 = load i64 (%struct.dvb_frontend.1*, i32)*, i64 (%struct.dvb_frontend.1*, i32)** %117, align 8
  %119 = icmp ne i64 (%struct.dvb_frontend.1*, i32)* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %122 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %121, i32 0, i32 2
  %123 = load i64 (%struct.dvb_frontend.1*, i32)*, i64 (%struct.dvb_frontend.1*, i32)** %122, align 8
  %124 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %125 = bitcast %struct.dvb_frontend* %124 to %struct.dvb_frontend.1*
  %126 = load i32, i32* @TUNER_WAKE, align 4
  %127 = call i64 %123(%struct.dvb_frontend.1* %125, i32 %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %170

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %115
  %132 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %133 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %132, i32 0, i32 0
  %134 = load i64 (%struct.dvb_frontend.0*)*, i64 (%struct.dvb_frontend.0*)** %133, align 8
  %135 = icmp ne i64 (%struct.dvb_frontend.0*)* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %138 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %137, i32 0, i32 0
  %139 = load i64 (%struct.dvb_frontend.0*)*, i64 (%struct.dvb_frontend.0*)** %138, align 8
  %140 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %141 = bitcast %struct.dvb_frontend* %140 to %struct.dvb_frontend.0*
  %142 = call i64 %139(%struct.dvb_frontend.0* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %170

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145, %131
  %147 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %148 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %147, i32 0)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %173

151:                                              ; preds = %146
  %152 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %153 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @STV0900, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %159 = call i64 @stv0900_set_tspath(%struct.stv090x_state* %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %173

162:                                              ; preds = %157
  br label %169

163:                                              ; preds = %151
  %164 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %165 = call i64 @stv0903_set_tspath(%struct.stv090x_state* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %173

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168, %162
  store i32 0, i32* %2, align 4
  br label %176

170:                                              ; preds = %144, %129, %37
  %171 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %172 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %171, i32 0)
  br label %173

173:                                              ; preds = %170, %167, %161, %150, %114, %109, %93, %77, %67, %59, %43, %23
  %174 = load i32, i32* @FE_ERROR, align 4
  %175 = call i32 @dprintk(i32 %174, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_set_mclk(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_get_mclk(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_wakeup(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i64 @stv090x_ldpc_mode(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv0900_set_tspath(%struct.stv090x_state*) #1

declare dso_local i64 @stv0903_set_tspath(%struct.stv090x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
