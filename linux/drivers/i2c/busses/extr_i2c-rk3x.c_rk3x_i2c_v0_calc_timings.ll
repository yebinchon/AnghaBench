; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_v0_calc_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_v0_calc_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_timings = type { i32, i64, i64, i64 }
%struct.rk3x_i2c_calced_timings = type { i64, i64, i64 }
%struct.i2c_spec_values = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Conflicting, min_low_div %lu, max_low_div %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.i2c_timings*, %struct.rk3x_i2c_calced_timings*)* @rk3x_i2c_v0_calc_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3x_i2c_v0_calc_timings(i64 %0, %struct.i2c_timings* %1, %struct.rk3x_i2c_calced_timings* %2) #0 {
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
  %22 = alloca %struct.i2c_spec_values*, align 8
  %23 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.i2c_timings* %1, %struct.i2c_timings** %5, align 8
  store %struct.rk3x_i2c_calced_timings* %2, %struct.rk3x_i2c_calced_timings** %6, align 8
  store i64 50, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 400000
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %32, i32 0, i32 0
  store i32 400000, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 1000
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %43, i32 0, i32 0
  store i32 1000, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.i2c_spec_values* @rk3x_i2c_get_spec(i32 %48)
  store %struct.i2c_spec_values* %49, %struct.i2c_spec_values** %22, align 8
  %50 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %22, align 8
  %54 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %22, align 8
  %62 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add i64 %60, %64
  %66 = mul i64 %65, 1000
  %67 = call i64 @DIV_ROUND_UP(i64 %66, i64 875)
  %68 = call i64 @max(i64 %57, i64 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %22, align 8
  %74 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add i64 %72, %76
  %78 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  %82 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %22, align 8
  %83 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %81, %84
  %86 = call i64 @DIV_ROUND_UP(i64 %85, i64 2)
  %87 = call i64 @max(i64 %69, i64 %86)
  store i64 %87, i64* %8, align 8
  %88 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %22, align 8
  %92 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  store i64 %94, i64* %7, align 8
  %95 = load %struct.i2c_spec_values*, %struct.i2c_spec_values** %22, align 8
  %96 = getelementptr inbounds %struct.i2c_spec_values, %struct.i2c_spec_values* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %21, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %102, %103
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @DIV_ROUND_UP(i64 %105, i64 1000)
  store i64 %106, i64* %11, align 8
  %107 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sdiv i32 %109, 1000
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %12, align 8
  %114 = mul i64 %113, 8
  %115 = call i64 @DIV_ROUND_UP(i64 %112, i64 %114)
  store i64 %115, i64* %17, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %7, align 8
  %118 = mul i64 %116, %117
  %119 = call i64 @DIV_ROUND_UP(i64 %118, i64 8000000)
  store i64 %119, i64* %13, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %8, align 8
  %122 = mul i64 %120, %121
  %123 = call i64 @DIV_ROUND_UP(i64 %122, i64 8000000)
  store i64 %123, i64* %14, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %14, align 8
  %126 = add i64 %124, %125
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = mul i64 %127, %128
  %130 = udiv i64 %129, 8000000
  store i64 %130, i64* %15, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %15, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %45
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %15, align 8
  %137 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %135, i64 %136)
  %138 = load i64, i64* %13, align 8
  store i64 %138, i64* %15, align 8
  br label %139

139:                                              ; preds = %134, %45
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %17, align 8
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i64, i64* %13, align 8
  %145 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %146 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %149 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %191

150:                                              ; preds = %139
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %16, align 8
  %153 = sub i64 %151, %152
  store i64 %153, i64* %18, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %7, align 8
  %156 = mul i64 %154, %155
  %157 = load i64, i64* %12, align 8
  %158 = mul i64 %157, 8
  %159 = load i64, i64* %10, align 8
  %160 = mul i64 %158, %159
  %161 = call i64 @DIV_ROUND_UP(i64 %156, i64 %160)
  store i64 %161, i64* %20, align 8
  %162 = load i64, i64* %20, align 8
  %163 = load i64, i64* %15, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %150
  %166 = load i64, i64* %15, align 8
  store i64 %166, i64* %20, align 8
  br label %167

167:                                              ; preds = %165, %150
  %168 = load i64, i64* %20, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %18, align 8
  %171 = add i64 %169, %170
  %172 = icmp ugt i64 %168, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* %18, align 8
  %176 = add i64 %174, %175
  store i64 %176, i64* %20, align 8
  br label %177

177:                                              ; preds = %173, %167
  %178 = load i64, i64* %20, align 8
  %179 = load i64, i64* %13, align 8
  %180 = sub i64 %178, %179
  store i64 %180, i64* %19, align 8
  %181 = load i64, i64* %20, align 8
  %182 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %183 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* %19, align 8
  %187 = sub i64 %185, %186
  %188 = add i64 %184, %187
  %189 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %190 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %177, %143
  %192 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %193 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, -1
  store i64 %195, i64* %193, align 8
  %196 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %197 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, -1
  store i64 %199, i64* %197, align 8
  %200 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %201 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %200, i32 0, i32 2
  store i64 0, i64* %201, align 8
  %202 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %203 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ugt i64 %204, 65535
  br i1 %205, label %206, label %211

206:                                              ; preds = %191
  %207 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %208 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %207, i32 0, i32 0
  store i64 65535, i64* %208, align 8
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %23, align 4
  br label %211

211:                                              ; preds = %206, %191
  %212 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %213 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ugt i64 %214, 65535
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.rk3x_i2c_calced_timings*, %struct.rk3x_i2c_calced_timings** %6, align 8
  %218 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, %struct.rk3x_i2c_calced_timings* %217, i32 0, i32 1
  store i64 65535, i64* %218, align 8
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %23, align 4
  br label %221

221:                                              ; preds = %216, %211
  %222 = load i32, i32* %23, align 4
  ret i32 %222
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.i2c_spec_values* @rk3x_i2c_get_spec(i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
