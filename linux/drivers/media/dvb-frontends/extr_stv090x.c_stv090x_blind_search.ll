; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_blind_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_blind_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CARCFG = common dso_local global i32 0, align 4
@RTCS2 = common dso_local global i32 0, align 4
@EQUALCFG = common dso_local global i32 0, align 4
@FFECFG = common dso_local global i32 0, align 4
@VITSCALE = common dso_local global i32 0, align 4
@VAVSRVIT = common dso_local global i32 0, align 4
@KREFTMG = common dso_local global i32 0, align 4
@AGC2I1 = common dso_local global i32 0, align 4
@AGC2I0 = common dso_local global i32 0, align 4
@DSTATUS2 = common dso_local global i32 0, align 4
@CFR_OVERFLOW_FIELD = common dso_local global i32 0, align 4
@DEMOD_DELOCK_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_blind_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_blind_search(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i32 0, i32* %13, align 4
  store i32 110, i32* %11, align 4
  store i32 10, i32* %12, align 4
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %16 = call i64 @stv090x_get_agc2_min_level(%struct.stv090x_state* %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %19 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @STV090x_SEARCH_AGC2_TH(i32 %22)
  %24 = icmp sgt i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %14, align 4
  br label %180

26:                                               ; preds = %1
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %28 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 32
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = load i32, i32* @CARCFG, align 4
  %36 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %34, i32 %35, i32 196)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %182

39:                                               ; preds = %33
  br label %47

40:                                               ; preds = %26
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %42 = load i32, i32* @CARCFG, align 4
  %43 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %41, i32 %42, i32 6)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %182

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %49 = load i32, i32* @RTCS2, align 4
  %50 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %48, i32 %49, i32 68)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %182

53:                                               ; preds = %47
  %54 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %55 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 32
  br i1 %59, label %60, label %85

60:                                               ; preds = %53
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %62 = load i32, i32* @EQUALCFG, align 4
  %63 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %61, i32 %62, i32 65)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %182

66:                                               ; preds = %60
  %67 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %68 = load i32, i32* @FFECFG, align 4
  %69 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %67, i32 %68, i32 65)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %182

72:                                               ; preds = %66
  %73 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %74 = load i32, i32* @VITSCALE, align 4
  %75 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %73, i32 %74, i32 130)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %182

78:                                               ; preds = %72
  %79 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %80 = load i32, i32* @VAVSRVIT, align 4
  %81 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %79, i32 %80, i32 0)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %182

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %177, %85
  %88 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %89 = load i32, i32* @KREFTMG, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %88, i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %182

94:                                               ; preds = %87
  %95 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %96 = call i64 @stv090x_srate_srch_coarse(%struct.stv090x_state* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %100 = call i64 @stv090x_srate_srch_fine(%struct.stv090x_state* %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %105 = call i32 @stv090x_get_lock_tmg(%struct.stv090x_state* %104)
  %106 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %108 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %106, i32 %109)
  store i32 %110, i32* %14, align 4
  br label %112

111:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %103
  br label %163

113:                                              ; preds = %94
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %152, %113
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 10
  br i1 %116, label %117, label %155

117:                                              ; preds = %114
  %118 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %119 = load i32, i32* @AGC2I1, align 4
  %120 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %118, i32 %119)
  %121 = shl i32 %120, 8
  %122 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %123 = load i32, i32* @AGC2I0, align 4
  %124 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %122, i32 %123)
  %125 = or i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %4, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* %4, align 8
  %130 = icmp sge i64 %129, 65280
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %117
  %135 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %136 = load i32, i32* @DSTATUS2, align 4
  %137 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %135, i32 %136)
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %5, align 8
  %139 = load i64, i64* %5, align 8
  %140 = load i32, i32* @CFR_OVERFLOW_FIELD, align 4
  %141 = call i32 @STV090x_GETFIELD_Px(i64 %139, i32 %140)
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %151

143:                                              ; preds = %134
  %144 = load i64, i64* %5, align 8
  %145 = load i32, i32* @DEMOD_DELOCK_FIELD, align 4
  %146 = call i32 @STV090x_GETFIELD_Px(i64 %144, i32 %145)
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %148, %143, %134
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %114

155:                                              ; preds = %114
  %156 = load i32, i32* %7, align 4
  %157 = icmp sgt i32 %156, 7
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = icmp sgt i32 %159, 7
  br i1 %160, label %161, label %162

161:                                              ; preds = %158, %155
  store i32 1, i32* %13, align 4
  br label %162

162:                                              ; preds = %161, %158
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %162, %112
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %164, 20
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  br label %177

177:                                              ; preds = %173, %170, %166
  %178 = phi i1 [ false, %170 ], [ false, %166 ], [ %176, %173 ]
  br i1 %178, label %87, label %179

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %25
  %181 = load i32, i32* %14, align 4
  store i32 %181, i32* %2, align 4
  br label %185

182:                                              ; preds = %93, %83, %77, %71, %65, %52, %45, %38
  %183 = load i32, i32* @FE_ERROR, align 4
  %184 = call i32 @dprintk(i32 %183, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %185

185:                                              ; preds = %182, %180
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i64 @stv090x_get_agc2_min_level(%struct.stv090x_state*) #1

declare dso_local i64 @STV090x_SEARCH_AGC2_TH(i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv090x_srate_srch_coarse(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_srate_srch_fine(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_lock_tmg(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i64, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
