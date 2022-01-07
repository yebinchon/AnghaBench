; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt352.c_mt352_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt352.c_mt352_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.mt352_state*, %struct.dtv_frontend_properties }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 (%struct.dvb_frontend.2*, i32)* }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i8*, i32)*, i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.mt352_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32 }

@mt352_set_parameters.tuner_go = internal global [2 x i8] c"]\01", align 1
@mt352_set_parameters.fsm_go = internal global [2 x i8] c"^\01", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS_GIVEN_1 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt352_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt352_set_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.mt352_state*, align 8
  %6 = alloca [13 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 2
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.mt352_state*, %struct.mt352_state** %11, align 8
  store %struct.mt352_state* %12, %struct.mt352_state** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %29 [
    i32 150, label %16
    i32 149, label %19
    i32 148, label %22
    i32 147, label %25
    i32 151, label %28
    i32 146, label %28
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, 128
  store i32 %18, i32* %7, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 256
  store i32 %21, i32* %7, align 4
  br label %32

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 384
  store i32 %24, i32* %7, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, 512
  store i32 %27, i32* %7, align 4
  br label %32

28:                                               ; preds = %1, %1
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %215

32:                                               ; preds = %28, %25, %22, %19, %16
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %61 [
    i32 150, label %36
    i32 149, label %39
    i32 148, label %42
    i32 147, label %45
    i32 151, label %48
    i32 146, label %48
    i32 145, label %49
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 16
  store i32 %38, i32* %7, align 4
  br label %64

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 32
  store i32 %41, i32* %7, align 4
  br label %64

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, 48
  store i32 %44, i32* %7, align 4
  br label %64

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 64
  store i32 %47, i32* %7, align 4
  br label %64

48:                                               ; preds = %32, %32
  br label %64

49:                                               ; preds = %32
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 136
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 135
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  br label %64

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %32, %60
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %215

64:                                               ; preds = %59, %48, %45, %42, %39, %36
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %75 [
    i32 131, label %68
    i32 132, label %69
    i32 134, label %69
    i32 133, label %72
  ]

68:                                               ; preds = %64
  br label %78

69:                                               ; preds = %64, %64
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 8192
  store i32 %71, i32* %7, align 4
  br label %78

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, 16384
  store i32 %74, i32* %7, align 4
  br label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %215

78:                                               ; preds = %72, %69, %68
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %86 [
    i32 130, label %82
    i32 128, label %82
    i32 129, label %83
  ]

82:                                               ; preds = %78, %78
  br label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %215

89:                                               ; preds = %83, %82
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %103 [
    i32 143, label %93
    i32 140, label %93
    i32 144, label %94
    i32 141, label %97
    i32 142, label %100
  ]

93:                                               ; preds = %89, %89
  br label %106

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, 4
  store i32 %96, i32* %7, align 4
  br label %106

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, 8
  store i32 %99, i32* %7, align 4
  br label %106

100:                                              ; preds = %89
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, 12
  store i32 %102, i32* %7, align 4
  br label %106

103:                                              ; preds = %89
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %215

106:                                              ; preds = %100, %97, %94, %93
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %120 [
    i32 136, label %110
    i32 135, label %110
    i32 139, label %111
    i32 138, label %114
    i32 137, label %117
  ]

110:                                              ; preds = %106, %106
  br label %123

111:                                              ; preds = %106
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, 1024
  store i32 %113, i32* %7, align 4
  br label %123

114:                                              ; preds = %106
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, 2048
  store i32 %116, i32* %7, align 4
  br label %123

117:                                              ; preds = %106
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, 3072
  store i32 %119, i32* %7, align 4
  br label %123

120:                                              ; preds = %106
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %215

123:                                              ; preds = %117, %114, %111, %110
  %124 = load i8, i8* @TPS_GIVEN_1, align 1
  %125 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  store i8 %124, i8* %125, align 1
  %126 = load i32, i32* %7, align 4
  %127 = call zeroext i8 @msb(i32 %126)
  %128 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 1
  store i8 %127, i8* %128, align 1
  %129 = load i32, i32* %7, align 4
  %130 = call zeroext i8 @lsb(i32 %129)
  %131 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 2
  store i8 %130, i8* %131, align 1
  %132 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 3
  store i8 80, i8* %132, align 1
  %133 = load %struct.mt352_state*, %struct.mt352_state** %5, align 8
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  %139 = call i32 @mt352_calc_nominal_rate(%struct.mt352_state* %133, i32 %136, i8* %138)
  %140 = load %struct.mt352_state*, %struct.mt352_state** %5, align 8
  %141 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %142 = getelementptr inbounds i8, i8* %141, i64 6
  %143 = call i32 @mt352_calc_input_freq(%struct.mt352_state* %140, i8* %142)
  %144 = load %struct.mt352_state*, %struct.mt352_state** %5, align 8
  %145 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %185

149:                                              ; preds = %123
  %150 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %151 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %153, align 8
  %155 = icmp ne i32 (%struct.dvb_frontend.1*)* %154, null
  br i1 %155, label %156, label %179

156:                                              ; preds = %149
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %158 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %160, align 8
  %162 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %163 = bitcast %struct.dvb_frontend* %162 to %struct.dvb_frontend.1*
  %164 = call i32 %161(%struct.dvb_frontend.1* %163)
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %166 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %167, align 8
  %169 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %156
  %171 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %172 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %173, align 8
  %175 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %176 = bitcast %struct.dvb_frontend* %175 to %struct.dvb_frontend.2*
  %177 = call i32 %174(%struct.dvb_frontend.2* %176, i32 0)
  br label %178

178:                                              ; preds = %170, %156
  br label %179

179:                                              ; preds = %178, %149
  %180 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %181 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %182 = call i32 @_mt352_write(%struct.dvb_frontend* %180, i8* %181, i32 8)
  %183 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %184 = call i32 @_mt352_write(%struct.dvb_frontend* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mt352_set_parameters.fsm_go, i64 0, i64 0), i32 2)
  br label %214

185:                                              ; preds = %123
  %186 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %187 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32 (%struct.dvb_frontend.0*, i8*, i32)*, i32 (%struct.dvb_frontend.0*, i8*, i32)** %189, align 8
  %191 = icmp ne i32 (%struct.dvb_frontend.0*, i8*, i32)* %190, null
  br i1 %191, label %192, label %213

192:                                              ; preds = %185
  %193 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %194 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32 (%struct.dvb_frontend.0*, i8*, i32)*, i32 (%struct.dvb_frontend.0*, i8*, i32)** %196, align 8
  %198 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %199 = bitcast %struct.dvb_frontend* %198 to %struct.dvb_frontend.0*
  %200 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %201 = getelementptr inbounds i8, i8* %200, i64 8
  %202 = call i32 %197(%struct.dvb_frontend.0* %199, i8* %201, i32 5)
  %203 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = shl i32 %205, 1
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %203, align 1
  %208 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %209 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %210 = call i32 @_mt352_write(%struct.dvb_frontend* %208, i8* %209, i32 13)
  %211 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %212 = call i32 @_mt352_write(%struct.dvb_frontend* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mt352_set_parameters.tuner_go, i64 0, i64 0), i32 2)
  br label %213

213:                                              ; preds = %192, %185
  br label %214

214:                                              ; preds = %213, %179
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %214, %120, %103, %86, %75, %61, %29
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local zeroext i8 @msb(i32) #1

declare dso_local zeroext i8 @lsb(i32) #1

declare dso_local i32 @mt352_calc_nominal_rate(%struct.mt352_state*, i32, i8*) #1

declare dso_local i32 @mt352_calc_input_freq(%struct.mt352_state*, i8*) #1

declare dso_local i32 @_mt352_write(%struct.dvb_frontend*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
