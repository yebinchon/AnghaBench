; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2160_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2160_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.TYPE_5__, %struct.lg216x_state* }
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_4__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.lg216x_state = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @lg2160_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg2160_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.lg216x_state*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 2
  %8 = load %struct.lg216x_state*, %struct.lg216x_state** %7, align 8
  store %struct.lg216x_state* %8, %struct.lg216x_state** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @lg_dbg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %19, align 8
  %21 = icmp ne i32 (%struct.dvb_frontend.1*)* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %1
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %26, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %29 = bitcast %struct.dvb_frontend* %28 to %struct.dvb_frontend.1*
  %30 = call i32 %27(%struct.dvb_frontend.1* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %22
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %39, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %42 = bitcast %struct.dvb_frontend* %41 to %struct.dvb_frontend.0*
  %43 = call i32 %40(%struct.dvb_frontend.0* %42, i32 0)
  br label %44

44:                                               ; preds = %36, %22
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @lg_fail(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %169

49:                                               ; preds = %44
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %55 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %1
  %57 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %58 = call i32 @lg2160_agc_fix(%struct.lg216x_state* %57, i32 0, i32 0)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @lg_fail(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %169

63:                                               ; preds = %56
  %64 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %65 = call i32 @lg2160_agc_polarity(%struct.lg216x_state* %64, i32 0, i32 0)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @lg_fail(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %169

70:                                               ; preds = %63
  %71 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %72 = call i32 @lg2160_tuner_pwr_save_polarity(%struct.lg216x_state* %71, i32 1)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @lg_fail(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %169

77:                                               ; preds = %70
  %78 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %79 = call i32 @lg216x_set_if(%struct.lg216x_state* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @lg_fail(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %169

84:                                               ; preds = %77
  %85 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %86 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %87 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lg2160_spectrum_polarity(%struct.lg216x_state* %85, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @lg_fail(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %169

96:                                               ; preds = %84
  %97 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %98 = call i32 @lg216x_soft_reset(%struct.lg216x_state* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @lg_fail(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %169

103:                                              ; preds = %96
  %104 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %105 = call i32 @lg2160_tuner_pwr_save(%struct.lg216x_state* %104, i32 0)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @lg_fail(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %169

110:                                              ; preds = %103
  %111 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %112 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %132 [
    i32 129, label %116
    i32 128, label %124
  ]

116:                                              ; preds = %110
  %117 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %118 = call i32 @lg2160_set_spi_clock(%struct.lg216x_state* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i64 @lg_fail(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %169

123:                                              ; preds = %116
  br label %132

124:                                              ; preds = %110
  %125 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %126 = call i32 @lg2161_set_output_interface(%struct.lg216x_state* %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i64 @lg_fail(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %169

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %110, %131, %123
  %133 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %134 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %135 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @lg216x_set_parade(%struct.lg216x_state* %133, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i64 @lg_fail(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %169

143:                                              ; preds = %132
  %144 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %145 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %146 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @lg216x_set_ensemble(%struct.lg216x_state* %144, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i64 @lg_fail(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %169

154:                                              ; preds = %143
  %155 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %156 = call i32 @lg216x_initialize(%struct.lg216x_state* %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i64 @lg_fail(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %169

161:                                              ; preds = %154
  %162 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %163 = call i32 @lg216x_enable_fic(%struct.lg216x_state* %162, i32 1)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i64 @lg_fail(i32 %164)
  %166 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %167 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %168 = call i32 @lg216x_get_frontend(%struct.dvb_frontend* %166, %struct.dtv_frontend_properties* %167)
  br label %169

169:                                              ; preds = %161, %160, %153, %142, %130, %122, %109, %102, %95, %83, %76, %69, %62, %48
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @lg_dbg(i8*, i32) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg2160_agc_fix(%struct.lg216x_state*, i32, i32) #1

declare dso_local i32 @lg2160_agc_polarity(%struct.lg216x_state*, i32, i32) #1

declare dso_local i32 @lg2160_tuner_pwr_save_polarity(%struct.lg216x_state*, i32) #1

declare dso_local i32 @lg216x_set_if(%struct.lg216x_state*) #1

declare dso_local i32 @lg2160_spectrum_polarity(%struct.lg216x_state*, i32) #1

declare dso_local i32 @lg216x_soft_reset(%struct.lg216x_state*) #1

declare dso_local i32 @lg2160_tuner_pwr_save(%struct.lg216x_state*, i32) #1

declare dso_local i32 @lg2160_set_spi_clock(%struct.lg216x_state*) #1

declare dso_local i32 @lg2161_set_output_interface(%struct.lg216x_state*) #1

declare dso_local i32 @lg216x_set_parade(%struct.lg216x_state*, i32) #1

declare dso_local i32 @lg216x_set_ensemble(%struct.lg216x_state*, i32) #1

declare dso_local i32 @lg216x_initialize(%struct.lg216x_state*) #1

declare dso_local i32 @lg216x_enable_fic(%struct.lg216x_state*, i32) #1

declare dso_local i32 @lg216x_get_frontend(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
