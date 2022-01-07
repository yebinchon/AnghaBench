; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt352.c_mt352_get_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt352.c_mt352_get_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt352_state* }
%struct.mt352_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@mt352_get_parameters.tps_fec_to_api = internal constant [8 x i32] [i32 133, i32 132, i32 131, i32 130, i32 129, i32 128, i32 128, i32 128], align 16
@EINVAL = common dso_local global i32 0, align 4
@TPS_RECEIVED_1 = common dso_local global i32 0, align 4
@TPS_RECEIVED_0 = common dso_local global i32 0, align 4
@CHAN_START_1 = common dso_local global i32 0, align 4
@CHAN_START_0 = common dso_local global i32 0, align 4
@TRL_NOMINAL_RATE_1 = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_AUTO = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@HIERARCHY_AUTO = common dso_local global i32 0, align 4
@IF_FREQUENCYx6 = common dso_local global i32 0, align 4
@STATUS_2 = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @mt352_get_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt352_get_parameters(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.mt352_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.mt352_state*, %struct.mt352_state** %11, align 8
  store %struct.mt352_state* %12, %struct.mt352_state** %6, align 8
  %13 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %14 = call i32 @mt352_read_register(%struct.mt352_state* %13, i32 0)
  %15 = and i32 %14, 192
  %16 = icmp ne i32 %15, 192
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %173

20:                                               ; preds = %2
  %21 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %22 = load i32, i32* @TPS_RECEIVED_1, align 4
  %23 = call i32 @mt352_read_register(%struct.mt352_state* %21, i32 %22)
  %24 = shl i32 %23, 8
  %25 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %26 = load i32, i32* @TPS_RECEIVED_0, align 4
  %27 = call i32 @mt352_read_register(%struct.mt352_state* %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %30 = load i32, i32* @CHAN_START_1, align 4
  %31 = call i32 @mt352_read_register(%struct.mt352_state* %29, i32 %30)
  %32 = shl i32 %31, 8
  %33 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %34 = load i32, i32* @CHAN_START_0, align 4
  %35 = call i32 @mt352_read_register(%struct.mt352_state* %33, i32 %34)
  %36 = or i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %38 = load i32, i32* @TRL_NOMINAL_RATE_1, align 4
  %39 = call i32 @mt352_read_register(%struct.mt352_state* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 7
  %42 = and i32 %41, 7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* @mt352_get_parameters.tps_fec_to_api, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* @mt352_get_parameters.tps_fec_to_api, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 13
  %58 = and i32 %57, 3
  switch i32 %58, label %71 [
    i32 0, label %59
    i32 1, label %63
    i32 2, label %67
  ]

59:                                               ; preds = %20
  %60 = load i32, i32* @QPSK, align 4
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  br label %75

63:                                               ; preds = %20
  %64 = load i32, i32* @QAM_16, align 4
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  br label %75

67:                                               ; preds = %20
  %68 = load i32, i32* @QAM_64, align 4
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %20
  %72 = load i32, i32* @QAM_AUTO, align 4
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %67, %63, %59
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 2
  %89 = and i32 %88, 3
  switch i32 %89, label %106 [
    i32 0, label %90
    i32 1, label %94
    i32 2, label %98
    i32 3, label %102
  ]

90:                                               ; preds = %83
  %91 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  br label %110

94:                                               ; preds = %83
  %95 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  br label %110

98:                                               ; preds = %83
  %99 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  br label %110

102:                                              ; preds = %83
  %103 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %104 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  br label %110

106:                                              ; preds = %83
  %107 = load i32, i32* @GUARD_INTERVAL_AUTO, align 4
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %102, %98, %94, %90
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 10
  %113 = and i32 %112, 7
  switch i32 %113, label %130 [
    i32 0, label %114
    i32 1, label %118
    i32 2, label %122
    i32 3, label %126
  ]

114:                                              ; preds = %110
  %115 = load i32, i32* @HIERARCHY_NONE, align 4
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  br label %134

118:                                              ; preds = %110
  %119 = load i32, i32* @HIERARCHY_1, align 4
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %134

122:                                              ; preds = %110
  %123 = load i32, i32* @HIERARCHY_2, align 4
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  br label %134

126:                                              ; preds = %110
  %127 = load i32, i32* @HIERARCHY_4, align 4
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  br label %134

130:                                              ; preds = %110
  %131 = load i32, i32* @HIERARCHY_AUTO, align 4
  %132 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %126, %122, %118, %114
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @IF_FREQUENCYx6, align 4
  %137 = sub nsw i32 %135, %136
  %138 = mul nsw i32 500, %137
  %139 = sdiv i32 %138, 3
  %140 = mul nsw i32 %139, 1000
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 114
  br i1 %144, label %145, label %148

145:                                              ; preds = %134
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 3
  store i32 8000000, i32* %147, align 4
  br label %158

148:                                              ; preds = %134
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 100
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %153 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %152, i32 0, i32 3
  store i32 7000000, i32* %153, align 4
  br label %157

154:                                              ; preds = %148
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 3
  store i32 6000000, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %145
  %159 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %160 = load i32, i32* @STATUS_2, align 4
  %161 = call i32 @mt352_read_register(%struct.mt352_state* %159, i32 %160)
  %162 = and i32 %161, 2
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @INVERSION_OFF, align 4
  %166 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %167 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  br label %172

168:                                              ; preds = %158
  %169 = load i32, i32* @INVERSION_ON, align 4
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %164
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %17
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @mt352_read_register(%struct.mt352_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
