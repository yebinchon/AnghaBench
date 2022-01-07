; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_pll_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_pll_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24123_bandselect_val = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.cx24123_state*, %struct.dtv_frontend_properties }
%struct.cx24123_state = type { i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i64, i32 }
%struct.cx24123_AGC_val = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@cx24123_bandselect_vals = common dso_local global %struct.cx24123_bandselect_val* null, align 8
@cx24123_AGC_vals = common dso_local global %struct.cx24123_bandselect_val* null, align 8
@force_band = common dso_local global i32 0, align 4
@XTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24123_pll_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_pll_calculate(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.cx24123_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cx24123_bandselect_val*, align 8
  %13 = alloca %struct.cx24123_AGC_val*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1
  store %struct.dtv_frontend_properties* %15, %struct.dtv_frontend_properties** %3, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.cx24123_state*, %struct.cx24123_state** %17, align 8
  store %struct.cx24123_state* %18, %struct.cx24123_state** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.cx24123_bandselect_val* %19)
  store i32 %20, i32* %11, align 4
  store %struct.cx24123_bandselect_val* null, %struct.cx24123_bandselect_val** %12, align 8
  store %struct.cx24123_AGC_val* null, %struct.cx24123_AGC_val** %13, align 8
  %21 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %22 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %21, i64 0
  %23 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %26 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %28 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %27, i64 0
  %29 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %32 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %34 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %33, i64 0
  %35 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %38 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %40 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %39, i64 0
  %41 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %86, %1
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.cx24123_bandselect_val* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %43
  %49 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %49, i64 %51
  %53 = bitcast %struct.cx24123_bandselect_val* %52 to %struct.cx24123_AGC_val*
  store %struct.cx24123_AGC_val* %53, %struct.cx24123_AGC_val** %13, align 8
  %54 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %13, align 8
  %55 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %48
  %62 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %13, align 8
  %63 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %13, align 8
  %71 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %74 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %13, align 8
  %76 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %79 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %13, align 8
  %81 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %84 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %69, %61, %48
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %43

89:                                               ; preds = %43
  %90 = load i32, i32* @force_band, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @force_band, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %92, %89
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %124, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %97
  %102 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %102, i64 %104
  store %struct.cx24123_bandselect_val* %105, %struct.cx24123_bandselect_val** %12, align 8
  %106 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** %12, align 8
  %107 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %110 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp sle i32 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** %12, align 8
  %115 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %121, %113, %101
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %97

127:                                              ; preds = %97
  br label %131

128:                                              ; preds = %92
  %129 = load i32, i32* @force_band, align 4
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %128, %127
  %132 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %132, i64 %134
  %136 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %139 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %140, i64 %142
  %144 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %7, align 4
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %149, i64 %151
  %153 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %155, i64 %157
  %159 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %154, %160
  %162 = sdiv i32 %161, 2
  %163 = icmp slt i32 %148, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %131
  store i32 1, i32* %9, align 4
  br label %166

165:                                              ; preds = %131
  store i32 2, i32* %9, align 4
  br label %166

166:                                              ; preds = %165, %164
  %167 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %168 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 %169, %170
  %172 = mul nsw i32 %171, 10
  %173 = load i32, i32* @XTAL, align 4
  %174 = mul nsw i32 2, %173
  %175 = sdiv i32 %174, 1000
  %176 = sdiv i32 %172, %175
  %177 = sdiv i32 %176, 32
  %178 = and i32 %177, 511
  store i32 %178, i32* %5, align 4
  %179 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %180 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = mul nsw i32 %181, %182
  %184 = mul nsw i32 %183, 10
  %185 = load i32, i32* @XTAL, align 4
  %186 = mul nsw i32 2, %185
  %187 = sdiv i32 %186, 1000
  %188 = sdiv i32 %184, %187
  %189 = srem i32 %188, 32
  %190 = and i32 %189, 31
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %166
  %194 = load i32, i32* %5, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %196, %193, %166
  %200 = load i32, i32* %9, align 4
  %201 = shl i32 %200, 14
  %202 = or i32 2031616, %201
  %203 = load i32, i32* %5, align 4
  %204 = shl i32 %203, 5
  %205 = or i32 %202, %204
  %206 = load i32, i32* %6, align 4
  %207 = or i32 %205, %206
  %208 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %209 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.cx24123_bandselect_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
