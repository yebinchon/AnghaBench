; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_v1_calc_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_v1_calc_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_timings = type { i32, i64, i64 }
%struct.rk3x_i2c_calced_timings = type { i64, i64, i32 }
%struct.i2c_spec_values = type { i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.i2c_timings*, %struct.rk3x_i2c_calced_timings*)* @rk3x_i2c_v1_calc_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3x_i2c_v1_calc_timings(i64 %0, %struct.i2c_timings* %1, %struct.rk3x_i2c_calced_timings* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_timings*, align 8
  %6 = alloca %struct.rk3x_i2c_calced_timings*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.i2c_spec_values*, align 8
  %25 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.i2c_timings* %1, %struct.i2c_timings** %5, align 8
  store %struct.rk3x_i2c_calced_timings* %2, %struct.rk3x_i2c_calced_timings** %6, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1000000
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %34, i32 0, i32 0
  store i32 1000000, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 1000
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %45, i32 0, i32 0
  store i32 1000, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.i2c_spec_values* @rk3x_i2c_get_spec(i32 %50)
  store %struct.i2c_spec_values* %51, %struct.i2c_spec_values** %24, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @DIV_ROUND_UP(i64 %52, i32 1000)
  store i64 %53, i64* %13, align 8
  %54 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 1000
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @DIV_ROUND_UP(i64 %59, i32 %62)
  store i64 %63, i64* %18, align 8
  %64 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %24, align 8
  %68 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %8, align 8
  %73 = mul i64 %71, %72
  %74 = call i64 @DIV_ROUND_UP(i64 %73, i32 8000000)
  store i64 %74, i64* %16, align 8
  %75 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %24, align 8
  %79 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %7, align 8
  %84 = mul i64 %82, %83
  %85 = call i64 @DIV_ROUND_UP(i64 %84, i32 8000000)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp ult i64 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %47
  br label %91

89:                                               ; preds = %47
  %90 = load i64, i64* %16, align 8
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i64 [ 2, %88 ], [ %90, %89 ]
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp ult i64 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %98

96:                                               ; preds = %91
  %97 = load i64, i64* %15, align 8
  br label %98

98:                                               ; preds = %96, %95
  %99 = phi i64 [ 2, %95 ], [ %97, %96 ]
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %16, align 8
  %102 = add i64 %100, %101
  store i64 %102, i64* %17, align 8
  %103 = load i64, i64* %17, align 8
  %104 = load i64, i64* %18, align 8
  %105 = icmp uge i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %109 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %112 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %135

113:                                              ; preds = %98
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %17, align 8
  %116 = sub i64 %114, %115
  store i64 %116, i64* %19, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %19, align 8
  %119 = mul i64 %117, %118
  %120 = load i64, i64* %17, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i64 @DIV_ROUND_UP(i64 %119, i32 %121)
  store i64 %122, i64* %20, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %20, align 8
  %125 = add i64 %123, %124
  %126 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %127 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %20, align 8
  %131 = sub i64 %129, %130
  %132 = add i64 %128, %131
  %133 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %134 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %113, %106
  store i64 3, i64* %21, align 8
  br label %136

136:                                              ; preds = %174, %135
  %137 = load i64, i64* %21, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %136
  %140 = load i64, i64* %21, align 8
  %141 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %142 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = mul i64 %140, %143
  %145 = add i64 %144, 1
  %146 = mul i64 %145, 1000000
  %147 = load i64, i64* %13, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i64 @DIV_ROUND_UP(i64 %146, i32 %148)
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %21, align 8
  %151 = sub i64 8, %150
  %152 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %153 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = mul i64 %151, %154
  %156 = add i64 %155, 1
  %157 = mul i64 %156, 1000000
  %158 = load i64, i64* %13, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i64 @DIV_ROUND_UP(i64 %157, i32 %159)
  store i64 %160, i64* %10, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %24, align 8
  %163 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ult i64 %161, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %139
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %24, align 8
  %169 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ugt i64 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %177

173:                                              ; preds = %166, %139
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %21, align 8
  %176 = add i64 %175, -1
  store i64 %176, i64* %21, align 8
  br label %136

177:                                              ; preds = %172, %136
  %178 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %179 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %24, align 8
  %182 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %180, %183
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %13, align 8
  %186 = load i64, i64* %9, align 8
  %187 = mul i64 %185, %186
  %188 = sub i64 %187, 1000000
  %189 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %190 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = mul i64 8000000, %191
  %193 = trunc i64 %192 to i32
  %194 = call i64 @DIV_ROUND_UP(i64 %188, i32 %193)
  store i64 %194, i64* %22, align 8
  %195 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %196 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %24, align 8
  %199 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %197, %200
  store i64 %201, i64* %11, align 8
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* %11, align 8
  %204 = mul i64 %202, %203
  %205 = sub i64 %204, 1000000
  %206 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %207 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = mul i64 8000000, %208
  %210 = trunc i64 %209 to i32
  %211 = call i64 @DIV_ROUND_UP(i64 %205, i32 %210)
  store i64 %211, i64* %23, align 8
  %212 = load i64, i64* %21, align 8
  %213 = add i64 %212, -1
  store i64 %213, i64* %21, align 8
  %214 = call i32 @REG_CON_SDA_CFG(i64 %213)
  %215 = load i64, i64* %22, align 8
  %216 = add i64 %215, -1
  store i64 %216, i64* %22, align 8
  %217 = call i32 @REG_CON_STA_CFG(i64 %216)
  %218 = or i32 %214, %217
  %219 = load i64, i64* %23, align 8
  %220 = add i64 %219, -1
  store i64 %220, i64* %23, align 8
  %221 = call i32 @REG_CON_STO_CFG(i64 %220)
  %222 = or i32 %218, %221
  %223 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %224 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %226 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %227, -1
  store i64 %228, i64* %226, align 8
  %229 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %230 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, -1
  store i64 %232, i64* %230, align 8
  %233 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %234 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ugt i64 %235, 65535
  br i1 %236, label %237, label %242

237:                                              ; preds = %177
  %238 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %239 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %238, i32 0, i32 0
  store i64 65535, i64* %239, align 8
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %25, align 4
  br label %242

242:                                              ; preds = %237, %177
  %243 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %244 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ugt i64 %245, 65535
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %249 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %248, i32 0, i32 1
  store i64 65535, i64* %249, align 8
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %25, align 4
  br label %252

252:                                              ; preds = %247, %242
  %253 = load i32, i32* %25, align 4
  ret i32 %253
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.i2c_spec_values* @rk3x_i2c_get_spec(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @REG_CON_SDA_CFG(i64) #1

declare dso_local i32 @REG_CON_STA_CFG(i64) #1

declare dso_local i32 @REG_CON_STO_CFG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
