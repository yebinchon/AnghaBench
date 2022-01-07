; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.f75375_data = type { i64, i32*, i32*, i32* }
%struct.f75375s_platform_data = type { i32*, i32* }

@F75375_REG_CONFIG1 = common dso_local global i32 0, align 4
@F75375_REG_FAN_TIMER = common dso_local global i32 0, align 4
@f75387 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.f75375_data*, %struct.f75375s_platform_data*)* @f75375_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f75375_init(%struct.i2c_client* %0, %struct.f75375_data* %1, %struct.f75375s_platform_data* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.f75375_data*, align 8
  %6 = alloca %struct.f75375s_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.f75375_data* %1, %struct.f75375_data** %5, align 8
  store %struct.f75375s_platform_data* %2, %struct.f75375s_platform_data** %6, align 8
  %13 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %6, align 8
  %14 = icmp ne %struct.f75375s_platform_data* %13, null
  br i1 %14, label %151, label %15

15:                                               ; preds = %3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @F75375_REG_CONFIG1, align 4
  %18 = call i32 @f75375_read8(%struct.i2c_client* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @F75375_REG_FAN_TIMER, align 4
  %21 = call i32 @f75375_read8(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %147, %15
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %150

25:                                               ; preds = %22
  %26 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %27 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @f75387, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @F75387_FAN_CTRL_LINEAR(i32 %33)
  %35 = shl i32 1, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %40 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @F75387_FAN_MANU_MODE(i32 %47)
  %49 = ashr i32 %46, %48
  %50 = and i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @F75387_FAN_DUTY_MODE(i32 %52)
  %54 = ashr i32 %51, %53
  %55 = and i32 %54, 1
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %63 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 4, i32* %67, align 4
  br label %103

68:                                               ; preds = %58, %45
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %76 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 3, i32* %80, align 4
  br label %102

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %89 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 2, i32* %93, align 4
  br label %101

94:                                               ; preds = %84, %81
  %95 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %96 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %74
  br label %103

103:                                              ; preds = %102, %61
  br label %146

104:                                              ; preds = %25
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @F75375_FAN_CTRL_LINEAR(i32 %106)
  %108 = shl i32 1, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %104
  %112 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %113 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %104
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @FAN_CTRL_MODE(i32 %120)
  %122 = ashr i32 %119, %121
  %123 = and i32 %122, 3
  switch i32 %123, label %138 [
    i32 0, label %124
    i32 1, label %131
  ]

124:                                              ; preds = %118
  %125 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %126 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 3, i32* %130, align 4
  br label %145

131:                                              ; preds = %118
  %132 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %133 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 2, i32* %137, align 4
  br label %145

138:                                              ; preds = %118
  %139 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %140 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %131, %124
  br label %146

146:                                              ; preds = %145, %103
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %22

150:                                              ; preds = %22
  br label %211

151:                                              ; preds = %3
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %6, align 8
  %154 = getelementptr inbounds %struct.f75375s_platform_data, %struct.f75375s_platform_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @set_pwm_enable_direct(%struct.i2c_client* %152, i32 0, i32 %157)
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %6, align 8
  %161 = getelementptr inbounds %struct.f75375s_platform_data, %struct.f75375s_platform_data* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @set_pwm_enable_direct(%struct.i2c_client* %159, i32 1, i32 %164)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %208, %151
  %167 = load i32, i32* %7, align 4
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %169, label %211

169:                                              ; preds = %166
  %170 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %6, align 8
  %171 = getelementptr inbounds %struct.f75375s_platform_data, %struct.f75375s_platform_data* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @auto_mode_enabled(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %169
  %180 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %6, align 8
  %181 = getelementptr inbounds %struct.f75375s_platform_data, %struct.f75375s_platform_data* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @duty_mode_enabled(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %179, %169
  br label %208

190:                                              ; preds = %179
  %191 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %6, align 8
  %192 = getelementptr inbounds %struct.f75375s_platform_data, %struct.f75375s_platform_data* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @clamp_val(i32 %197, i32 0, i32 255)
  %199 = load %struct.f75375_data*, %struct.f75375_data** %5, align 8
  %200 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %198, i32* %204, align 4
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @f75375_write_pwm(%struct.i2c_client* %205, i32 %206)
  br label %208

208:                                              ; preds = %190, %189
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %166

211:                                              ; preds = %150, %166
  ret void
}

declare dso_local i32 @f75375_read8(%struct.i2c_client*, i32) #1

declare dso_local i32 @F75387_FAN_CTRL_LINEAR(i32) #1

declare dso_local i32 @F75387_FAN_MANU_MODE(i32) #1

declare dso_local i32 @F75387_FAN_DUTY_MODE(i32) #1

declare dso_local i32 @F75375_FAN_CTRL_LINEAR(i32) #1

declare dso_local i32 @FAN_CTRL_MODE(i32) #1

declare dso_local i32 @set_pwm_enable_direct(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @auto_mode_enabled(i32) #1

declare dso_local i32 @duty_mode_enabled(i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @f75375_write_pwm(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
