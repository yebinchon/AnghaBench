; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_comp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_comp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i64 }
%struct.i2c_msg = type { i32, i32, i32, i64* }

@SW_TWSI_V = common dso_local global i32 0, align 4
@SW_TWSI_SOVR = common dso_local global i32 0, align 4
@SW_TWSI_SIZE_SHIFT = common dso_local global i32 0, align 4
@SW_TWSI_ADDR_SHIFT = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@SW_TWSI_OP_10_IA = common dso_local global i32 0, align 4
@SW_TWSI_OP_7_IA = common dso_local global i32 0, align 4
@SW_TWSI_EIA = common dso_local global i32 0, align 4
@SW_TWSI_IA_SHIFT = common dso_local global i32 0, align 4
@SW_TWSI_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, %struct.i2c_msg*)* @octeon_i2c_hlc_comp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_hlc_comp_write(%struct.octeon_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %13 = call i32 @octeon_i2c_hlc_enable(%struct.octeon_i2c* %12)
  %14 = load i32, i32* @SW_TWSI_V, align 4
  %15 = load i32, i32* @SW_TWSI_SOVR, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 1
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @SW_TWSI_SIZE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 127
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @SW_TWSI_ADDR_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I2C_M_TEN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load i32, i32* @SW_TWSI_OP_10_IA, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %52

48:                                               ; preds = %2
  %49 = load i32, i32* @SW_TWSI_OP_7_IA, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i64 0
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load i32, i32* @SW_TWSI_EIA, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i64 0
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @SW_TWSI_IA_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  store i32 1, i32* %6, align 4
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 0
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @SW_TWSI_IA_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %96

84:                                               ; preds = %52
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i64 0
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @SW_TWSI_IA_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %84, %58
  store i32 0, i32* %7, align 4
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i64 1
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %129, %96
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i64 1
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 4
  br label %112

112:                                              ; preds = %109, %102
  %113 = phi i1 [ false, %102 ], [ %111, %109 ]
  br i1 %113, label %114, label %134

114:                                              ; preds = %112
  %115 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i64 1
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 3
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %7, align 4
  %125 = mul nsw i32 8, %124
  %126 = shl i32 %123, %125
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %114
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %8, align 4
  br label %102

134:                                              ; preds = %112
  %135 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i64 1
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 4
  br i1 %139, label %140, label %175

140:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %169, %140
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i64 1
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 4
  %148 = icmp slt i32 %142, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 4
  br label %152

152:                                              ; preds = %149, %141
  %153 = phi i1 [ false, %141 ], [ %151, %149 ]
  br i1 %153, label %154, label %174

154:                                              ; preds = %152
  %155 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i64 1
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 3
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %7, align 4
  %165 = mul nsw i32 8, %164
  %166 = shl i32 %163, %165
  %167 = load i32, i32* %11, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %8, align 4
  br label %141

174:                                              ; preds = %152
  store i32 1, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %134
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %181 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %184 = call i64 @SW_TWSI_EXT(%struct.octeon_i2c* %183)
  %185 = add nsw i64 %182, %184
  %186 = call i32 @octeon_i2c_writeq_flush(i32 %179, i64 %185)
  br label %187

187:                                              ; preds = %178, %175
  %188 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %189 = call i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c* %188)
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %192 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %195 = call i64 @SW_TWSI(%struct.octeon_i2c* %194)
  %196 = add nsw i64 %193, %195
  %197 = call i32 @octeon_i2c_writeq_flush(i32 %190, i64 %196)
  %198 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %199 = call i32 @octeon_i2c_hlc_wait(%struct.octeon_i2c* %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %187
  br label %219

203:                                              ; preds = %187
  %204 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %205 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %208 = call i64 @SW_TWSI(%struct.octeon_i2c* %207)
  %209 = add nsw i64 %206, %208
  %210 = call i32 @__raw_readq(i64 %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @SW_TWSI_R, align 4
  %213 = and i32 %211, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %203
  %216 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %217 = call i32 @octeon_i2c_check_status(%struct.octeon_i2c* %216, i32 0)
  store i32 %217, i32* %3, align 4
  br label %221

218:                                              ; preds = %203
  br label %219

219:                                              ; preds = %218, %202
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %219, %215
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @octeon_i2c_hlc_enable(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_writeq_flush(i32, i64) #1

declare dso_local i64 @SW_TWSI_EXT(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c*) #1

declare dso_local i64 @SW_TWSI(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_hlc_wait(%struct.octeon_i2c*) #1

declare dso_local i32 @__raw_readq(i64) #1

declare dso_local i32 @octeon_i2c_check_status(%struct.octeon_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
