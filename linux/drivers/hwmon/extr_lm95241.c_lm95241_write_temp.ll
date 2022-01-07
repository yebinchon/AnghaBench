; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_write_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_write_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm95241_data = type { i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@R1DF_MASK = common dso_local global i32 0, align 4
@R2DF_MASK = common dso_local global i32 0, align 4
@LM95241_REG_RW_CONFIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TT_MASK = common dso_local global i32 0, align 4
@TT1_SHIFT = common dso_local global i32 0, align 4
@R1MS_MASK = common dso_local global i32 0, align 4
@TT_ON = common dso_local global i32 0, align 4
@TT_OFF = common dso_local global i32 0, align 4
@TT2_SHIFT = common dso_local global i32 0, align 4
@R2MS_MASK = common dso_local global i32 0, align 4
@LM95241_REG_RW_REMOTE_MODEL = common dso_local global i32 0, align 4
@LM95241_REG_RW_TRUTHERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @lm95241_write_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95241_write_temp(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.lm95241_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.lm95241_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.lm95241_data* %13, %struct.lm95241_data** %9, align 8
  %14 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %15 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %14, i32 0, i32 5
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %18 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %220 [
    i32 129, label %21
    i32 130, label %67
    i32 128, label %113
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @R1DF_MASK, align 4
  %29 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %30 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %40

33:                                               ; preds = %24
  %34 = load i32, i32* @R1DF_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %37 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %27
  br label %58

41:                                               ; preds = %21
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @R2DF_MASK, align 4
  %46 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %47 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %57

50:                                               ; preds = %41
  %51 = load i32, i32* @R2DF_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %54 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %44
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %60 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %59, i32 0, i32 4
  store i32 0, i32* %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %62 = load i32, i32* @LM95241_REG_RW_CONFIG, align 4
  %63 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %64 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %61, i32 %62, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %223

67:                                               ; preds = %4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i64, i64* %8, align 8
  %72 = icmp sle i64 %71, 127875
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @R1DF_MASK, align 4
  %75 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %76 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %86

79:                                               ; preds = %70
  %80 = load i32, i32* @R1DF_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %83 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %79, %73
  br label %104

87:                                               ; preds = %67
  %88 = load i64, i64* %8, align 8
  %89 = icmp sle i64 %88, 127875
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* @R2DF_MASK, align 4
  %92 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %93 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %103

96:                                               ; preds = %87
  %97 = load i32, i32* @R2DF_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %100 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %90
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %106 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %105, i32 0, i32 4
  store i32 0, i32* %106, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %108 = load i32, i32* @LM95241_REG_RW_CONFIG, align 4
  %109 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %110 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %107, i32 %108, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %223

113:                                              ; preds = %4
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i64, i64* %8, align 8
  %118 = icmp ne i64 %117, 2
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %11, align 4
  br label %223

122:                                              ; preds = %116, %113
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %164

125:                                              ; preds = %122
  %126 = load i32, i32* @TT_MASK, align 4
  %127 = load i32, i32* @TT1_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = xor i32 %128, -1
  %130 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %131 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i64, i64* %8, align 8
  %135 = icmp eq i64 %134, 1
  br i1 %135, label %136, label %149

136:                                              ; preds = %125
  %137 = load i32, i32* @R1MS_MASK, align 4
  %138 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %139 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @TT_ON, align 4
  %143 = load i32, i32* @TT1_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %146 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %163

149:                                              ; preds = %125
  %150 = load i32, i32* @R1MS_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %153 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* @TT_OFF, align 4
  %157 = load i32, i32* @TT1_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %160 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %149, %136
  br label %203

164:                                              ; preds = %122
  %165 = load i32, i32* @TT_MASK, align 4
  %166 = load i32, i32* @TT2_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %170 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i64, i64* %8, align 8
  %174 = icmp eq i64 %173, 1
  br i1 %174, label %175, label %188

175:                                              ; preds = %164
  %176 = load i32, i32* @R2MS_MASK, align 4
  %177 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %178 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* @TT_ON, align 4
  %182 = load i32, i32* @TT2_SHIFT, align 4
  %183 = shl i32 %181, %182
  %184 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %185 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %202

188:                                              ; preds = %164
  %189 = load i32, i32* @R2MS_MASK, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %192 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load i32, i32* @TT_OFF, align 4
  %196 = load i32, i32* @TT2_SHIFT, align 4
  %197 = shl i32 %195, %196
  %198 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %199 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %188, %175
  br label %203

203:                                              ; preds = %202, %163
  %204 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %205 = load i32, i32* @LM95241_REG_RW_REMOTE_MODEL, align 4
  %206 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %207 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %204, i32 %205, i32 %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  br label %223

213:                                              ; preds = %203
  %214 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %215 = load i32, i32* @LM95241_REG_RW_TRUTHERM, align 4
  %216 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %217 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %214, i32 %215, i32 %218)
  store i32 %219, i32* %11, align 4
  br label %223

220:                                              ; preds = %4
  %221 = load i32, i32* @EOPNOTSUPP, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %11, align 4
  br label %223

223:                                              ; preds = %220, %213, %212, %119, %104, %58
  %224 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %225 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %224, i32 0, i32 3
  %226 = call i32 @mutex_unlock(i32* %225)
  %227 = load i32, i32* %11, align 4
  ret i32 %227
}

declare dso_local %struct.lm95241_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
