; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i64 }
%struct.i2c_msg = type { i32, i32, i32, i64* }

@SW_TWSI_V = common dso_local global i32 0, align 4
@SW_TWSI_SOVR = common dso_local global i32 0, align 4
@SW_TWSI_SIZE_SHIFT = common dso_local global i32 0, align 4
@SW_TWSI_ADDR_SHIFT = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@SW_TWSI_OP_10 = common dso_local global i32 0, align 4
@SW_TWSI_OP_7 = common dso_local global i32 0, align 4
@SW_TWSI_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, %struct.i2c_msg*)* @octeon_i2c_hlc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_hlc_write(%struct.octeon_i2c* %0, %struct.i2c_msg* %1) #0 {
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
  %13 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %14 = call i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c* %13)
  %15 = load i32, i32* @SW_TWSI_V, align 4
  %16 = load i32, i32* @SW_TWSI_SOVR, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 0
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
  %46 = load i32, i32* @SW_TWSI_OP_10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %2
  %50 = load i32, i32* @SW_TWSI_OP_7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %45
  store i32 0, i32* %6, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 0
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %86, %53
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 0
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi i1 [ false, %59 ], [ %68, %66 ]
  br i1 %70, label %71, label %91

71:                                               ; preds = %69
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 0
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 8, %81
  %83 = shl i32 %80, %82
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  br label %59

91:                                               ; preds = %69
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i64 0
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %140

97:                                               ; preds = %91
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %126, %97
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 0
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 4
  %105 = icmp slt i32 %99, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 4
  br label %109

109:                                              ; preds = %106, %98
  %110 = phi i1 [ false, %98 ], [ %108, %106 ]
  br i1 %110, label %111, label %131

111:                                              ; preds = %109
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i64 0
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 8, %121
  %123 = shl i32 %120, %122
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %111
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %7, align 4
  br label %98

131:                                              ; preds = %109
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %134 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %137 = call i64 @SW_TWSI_EXT(%struct.octeon_i2c* %136)
  %138 = add nsw i64 %135, %137
  %139 = call i32 @octeon_i2c_writeq_flush(i32 %132, i64 %138)
  br label %140

140:                                              ; preds = %131, %91
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %143 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %146 = call i64 @SW_TWSI(%struct.octeon_i2c* %145)
  %147 = add nsw i64 %144, %146
  %148 = call i32 @octeon_i2c_writeq_flush(i32 %141, i64 %147)
  %149 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %150 = call i32 @octeon_i2c_hlc_wait(%struct.octeon_i2c* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %170

154:                                              ; preds = %140
  %155 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %156 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %159 = call i64 @SW_TWSI(%struct.octeon_i2c* %158)
  %160 = add nsw i64 %157, %159
  %161 = call i32 @__raw_readq(i64 %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @SW_TWSI_R, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %154
  %167 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %168 = call i32 @octeon_i2c_check_status(%struct.octeon_i2c* %167, i32 0)
  store i32 %168, i32* %3, align 4
  br label %172

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %153
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %166
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @octeon_i2c_hlc_enable(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_writeq_flush(i32, i64) #1

declare dso_local i64 @SW_TWSI_EXT(%struct.octeon_i2c*) #1

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
