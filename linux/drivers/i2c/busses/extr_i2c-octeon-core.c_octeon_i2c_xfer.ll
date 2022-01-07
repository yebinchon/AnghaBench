; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i64, i32 }
%struct.octeon_i2c = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.octeon_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.octeon_i2c* %13, %struct.octeon_i2c** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %26, 8
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I2C_M_RD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = call i32 @octeon_i2c_hlc_read(%struct.octeon_i2c* %37, %struct.i2c_msg* %38)
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %43 = call i32 @octeon_i2c_hlc_write(%struct.octeon_i2c* %41, %struct.i2c_msg* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %189

45:                                               ; preds = %22, %16
  br label %118

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %117

49:                                               ; preds = %46
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 0
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @I2C_M_RD, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %49
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i64 1
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %116

65:                                               ; preds = %57
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 0
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %65
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 0
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 2
  br i1 %76, label %77, label %116

77:                                               ; preds = %71
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i64 1
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %77
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 1
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 8
  br i1 %88, label %89, label %116

89:                                               ; preds = %83
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i64 0
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i64 1
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %89
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 1
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @I2C_M_RD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %110 = call i32 @octeon_i2c_hlc_comp_read(%struct.octeon_i2c* %108, %struct.i2c_msg* %109)
  store i32 %110, i32* %10, align 4
  br label %115

111:                                              ; preds = %99
  %112 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %114 = call i32 @octeon_i2c_hlc_comp_write(%struct.octeon_i2c* %112, %struct.i2c_msg* %113)
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %111, %107
  br label %189

116:                                              ; preds = %89, %83, %77, %71, %65, %57, %49
  br label %117

117:                                              ; preds = %116, %46
  br label %118

118:                                              ; preds = %117, %45
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %183, %118
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %123, %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  br i1 %127, label %128, label %186

128:                                              ; preds = %126
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i64 %131
  store %struct.i2c_msg* %132, %struct.i2c_msg** %11, align 8
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %10, align 4
  br label %186

140:                                              ; preds = %128
  %141 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %142 = call i32 @octeon_i2c_start(%struct.octeon_i2c* %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %4, align 4
  br label %198

147:                                              ; preds = %140
  %148 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @I2C_M_RD, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %147
  %155 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %156 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i32 0, i32 0
  %164 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %168 = and i32 %166, %167
  %169 = call i32 @octeon_i2c_read(%struct.octeon_i2c* %155, i64 %158, i32 %161, i32* %163, i32 %168)
  store i32 %169, i32* %10, align 4
  br label %182

170:                                              ; preds = %147
  %171 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %172 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %176 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %179 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @octeon_i2c_write(%struct.octeon_i2c* %171, i64 %174, i32 %177, i32 %180)
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %170, %154
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %119

186:                                              ; preds = %137, %126
  %187 = load %struct.octeon_i2c*, %struct.octeon_i2c** %8, align 8
  %188 = call i32 @octeon_i2c_stop(%struct.octeon_i2c* %187)
  br label %189

189:                                              ; preds = %186, %115, %44
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* %10, align 4
  br label %196

194:                                              ; preds = %189
  %195 = load i32, i32* %7, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %196, %145
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.octeon_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @octeon_i2c_hlc_read(%struct.octeon_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @octeon_i2c_hlc_write(%struct.octeon_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @octeon_i2c_hlc_comp_read(%struct.octeon_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @octeon_i2c_hlc_comp_write(%struct.octeon_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @octeon_i2c_start(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_read(%struct.octeon_i2c*, i64, i32, i32*, i32) #1

declare dso_local i32 @octeon_i2c_write(%struct.octeon_i2c*, i64, i32, i32) #1

declare dso_local i32 @octeon_i2c_stop(%struct.octeon_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
