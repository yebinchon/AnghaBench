; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_read.c"
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
@SW_TWSI_OP_10 = common dso_local global i32 0, align 4
@SW_TWSI_OP_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, %struct.i2c_msg*)* @octeon_i2c_hlc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_hlc_read(%struct.octeon_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %11 = call i32 @octeon_i2c_hlc_enable(%struct.octeon_i2c* %10)
  %12 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %13 = call i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c* %12)
  %14 = load i32, i32* @SW_TWSI_V, align 4
  %15 = load i32, i32* @SW_TWSI_R, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SW_TWSI_SOVR, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @SW_TWSI_SIZE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, 127
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @SW_TWSI_ADDR_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 0
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I2C_M_TEN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i32, i32* @SW_TWSI_OP_10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %54

50:                                               ; preds = %2
  %51 = load i32, i32* @SW_TWSI_OP_7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %57 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %60 = call i64 @SW_TWSI(%struct.octeon_i2c* %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @octeon_i2c_writeq_flush(i32 %55, i64 %61)
  %63 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %64 = call i32 @octeon_i2c_hlc_wait(%struct.octeon_i2c* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %166

68:                                               ; preds = %54
  %69 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %70 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %73 = call i64 @SW_TWSI(%struct.octeon_i2c* %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @__raw_readq(i64 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SW_TWSI_R, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %82 = call i32 @octeon_i2c_check_status(%struct.octeon_i2c* %81, i32 0)
  store i32 %82, i32* %3, align 4
  br label %168

83:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 0
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %114, %83
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i64 0
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 4
  br label %99

99:                                               ; preds = %96, %89
  %100 = phi i1 [ false, %89 ], [ %98, %96 ]
  br i1 %100, label %101, label %119

101:                                              ; preds = %99
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 8, %103
  %105 = ashr i32 %102, %104
  %106 = and i32 %105, 255
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 0
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %7, align 4
  br label %89

119:                                              ; preds = %99
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i64 0
  %122 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %123, 4
  br i1 %124, label %125, label %165

125:                                              ; preds = %119
  %126 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %127 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %130 = call i64 @SW_TWSI_EXT(%struct.octeon_i2c* %129)
  %131 = add nsw i64 %128, %130
  %132 = call i32 @__raw_readq(i64 %131)
  store i32 %132, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %159, %125
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i64 0
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 4
  %140 = icmp slt i32 %134, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 4
  br label %144

144:                                              ; preds = %141, %133
  %145 = phi i1 [ false, %133 ], [ %143, %141 ]
  br i1 %145, label %146, label %164

146:                                              ; preds = %144
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %6, align 4
  %149 = mul nsw i32 8, %148
  %150 = ashr i32 %147, %149
  %151 = and i32 %150, 255
  %152 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i64 0
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %151, i32* %158, align 4
  br label %159

159:                                              ; preds = %146
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %7, align 4
  br label %133

164:                                              ; preds = %144
  br label %165

165:                                              ; preds = %164, %119
  br label %166

166:                                              ; preds = %165, %67
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %80
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @octeon_i2c_hlc_enable(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_writeq_flush(i32, i64) #1

declare dso_local i64 @SW_TWSI(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_hlc_wait(%struct.octeon_i2c*) #1

declare dso_local i32 @__raw_readq(i64) #1

declare dso_local i32 @octeon_i2c_check_status(%struct.octeon_i2c*, i32) #1

declare dso_local i64 @SW_TWSI_EXT(%struct.octeon_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
