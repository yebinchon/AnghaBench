; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_comp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_comp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i64 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@SW_TWSI_V = common dso_local global i32 0, align 4
@SW_TWSI_R = common dso_local global i32 0, align 4
@SW_TWSI_SOVR = common dso_local global i32 0, align 4
@SW_TWSI_SIZE_SHIFT = common dso_local global i32 0, align 4
@SW_TWSI_ADDR_SHIFT = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@SW_TWSI_OP_10_IA = common dso_local global i32 0, align 4
@SW_TWSI_OP_7_IA = common dso_local global i32 0, align 4
@SW_TWSI_EIA = common dso_local global i32 0, align 4
@SW_TWSI_IA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, %struct.i2c_msg*)* @octeon_i2c_hlc_comp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_hlc_comp_read(%struct.octeon_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %12 = call i32 @octeon_i2c_hlc_enable(%struct.octeon_i2c* %11)
  %13 = load i32, i32* @SW_TWSI_V, align 4
  %14 = load i32, i32* @SW_TWSI_R, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SW_TWSI_SOVR, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 1
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @SW_TWSI_SIZE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, 127
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @SW_TWSI_ADDR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I2C_M_TEN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load i32, i32* @SW_TWSI_OP_10_IA, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %2
  %50 = load i32, i32* @SW_TWSI_OP_7_IA, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 0
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %89

59:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  %60 = load i32, i32* @SW_TWSI_EIA, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 0
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SW_TWSI_IA_SHIFT, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i64 0
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SW_TWSI_IA_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %83 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %86 = call i64 @SW_TWSI_EXT(%struct.octeon_i2c* %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @octeon_i2c_writeq_flush(i32 %81, i64 %87)
  br label %100

89:                                               ; preds = %53
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i64 0
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SW_TWSI_IA_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %89, %59
  %101 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %102 = call i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c* %101)
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %105 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %108 = call i64 @SW_TWSI(%struct.octeon_i2c* %107)
  %109 = add nsw i64 %106, %108
  %110 = call i32 @octeon_i2c_writeq_flush(i32 %103, i64 %109)
  %111 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %112 = call i32 @octeon_i2c_hlc_wait(%struct.octeon_i2c* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %214

116:                                              ; preds = %100
  %117 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %118 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %121 = call i64 @SW_TWSI(%struct.octeon_i2c* %120)
  %122 = add nsw i64 %119, %121
  %123 = call i32 @__raw_readq(i64 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @SW_TWSI_R, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %130 = call i32 @octeon_i2c_check_status(%struct.octeon_i2c* %129, i32 0)
  store i32 %130, i32* %3, align 4
  br label %216

131:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i64 1
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %162, %131
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 1
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 4
  br label %147

147:                                              ; preds = %144, %137
  %148 = phi i1 [ false, %137 ], [ %146, %144 ]
  br i1 %148, label %149, label %167

149:                                              ; preds = %147
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %6, align 4
  %152 = mul nsw i32 8, %151
  %153 = ashr i32 %150, %152
  %154 = and i32 %153, 255
  %155 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i64 1
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %154, i32* %161, align 4
  br label %162

162:                                              ; preds = %149
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %7, align 4
  br label %137

167:                                              ; preds = %147
  %168 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i64 1
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 4
  br i1 %172, label %173, label %213

173:                                              ; preds = %167
  %174 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %175 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %178 = call i64 @SW_TWSI_EXT(%struct.octeon_i2c* %177)
  %179 = add nsw i64 %176, %178
  %180 = call i32 @__raw_readq(i64 %179)
  store i32 %180, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %207, %173
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i64 1
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 4
  %188 = icmp slt i32 %182, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load i32, i32* %6, align 4
  %191 = icmp slt i32 %190, 4
  br label %192

192:                                              ; preds = %189, %181
  %193 = phi i1 [ false, %181 ], [ %191, %189 ]
  br i1 %193, label %194, label %212

194:                                              ; preds = %192
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %6, align 4
  %197 = mul nsw i32 8, %196
  %198 = ashr i32 %195, %197
  %199 = and i32 %198, 255
  %200 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %201 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %200, i64 1
  %202 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %199, i32* %206, align 4
  br label %207

207:                                              ; preds = %194
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %7, align 4
  br label %181

212:                                              ; preds = %192
  br label %213

213:                                              ; preds = %212, %167
  br label %214

214:                                              ; preds = %213, %115
  %215 = load i32, i32* %8, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %128
  %217 = load i32, i32* %3, align 4
  ret i32 %217
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
