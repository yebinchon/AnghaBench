; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_set_pwm_enable_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_set_pwm_enable_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.f75375_data = type { i64, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@F75375_REG_FAN_TIMER = common dso_local global i32 0, align 4
@f75387 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @set_pwm_enable_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm_enable_direct(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f75375_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.f75375_data* %11, %struct.f75375_data** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %156

20:                                               ; preds = %14
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = load i32, i32* @F75375_REG_FAN_TIMER, align 4
  %23 = call i32 @f75375_read8(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %25 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @f75387, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %20
  %30 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %31 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @duty_mode_enabled(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @duty_mode_enabled(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %156

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @F75387_FAN_DUTY_MODE(i32 %45)
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @F75387_FAN_MANU_MODE(i32 %51)
  %53 = shl i32 1, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %99 [
    i32 0, label %58
    i32 1, label %75
    i32 2, label %86
    i32 3, label %87
    i32 4, label %93
  ]

58:                                               ; preds = %44
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @F75387_FAN_MANU_MODE(i32 %59)
  %61 = shl i32 1, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @F75387_FAN_DUTY_MODE(i32 %64)
  %66 = shl i32 1, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %70 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 255, i32* %74, align 4
  br label %99

75:                                               ; preds = %44
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @F75387_FAN_MANU_MODE(i32 %76)
  %78 = shl i32 1, %77
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @F75387_FAN_DUTY_MODE(i32 %81)
  %83 = shl i32 1, %82
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %99

86:                                               ; preds = %44
  br label %99

87:                                               ; preds = %44
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @F75387_FAN_MANU_MODE(i32 %88)
  %90 = shl i32 1, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %99

93:                                               ; preds = %44
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @F75387_FAN_DUTY_MODE(i32 %94)
  %96 = shl i32 1, %95
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %44, %93, %87, %86, %75, %58
  br label %137

100:                                              ; preds = %20
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @FAN_CTRL_MODE(i32 %101)
  %103 = shl i32 3, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  switch i32 %107, label %136 [
    i32 0, label %108
    i32 1, label %120
    i32 2, label %126
    i32 3, label %132
    i32 4, label %133
  ]

108:                                              ; preds = %100
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @FAN_CTRL_MODE(i32 %109)
  %111 = shl i32 3, %110
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %115 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 255, i32* %119, align 4
  br label %136

120:                                              ; preds = %100
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @FAN_CTRL_MODE(i32 %121)
  %123 = shl i32 3, %122
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %136

126:                                              ; preds = %100
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @FAN_CTRL_MODE(i32 %127)
  %129 = shl i32 1, %128
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %136

132:                                              ; preds = %100
  br label %136

133:                                              ; preds = %100
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %156

136:                                              ; preds = %100, %132, %126, %120, %108
  br label %137

137:                                              ; preds = %136, %99
  %138 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %139 = load i32, i32* @F75375_REG_FAN_TIMER, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @f75375_write8(%struct.i2c_client* %138, i32 %139, i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %144 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %137
  %152 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @f75375_write_pwm(%struct.i2c_client* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %137
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %133, %41, %17
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @f75375_read8(%struct.i2c_client*, i32) #1

declare dso_local i64 @duty_mode_enabled(i32) #1

declare dso_local i32 @F75387_FAN_DUTY_MODE(i32) #1

declare dso_local i32 @F75387_FAN_MANU_MODE(i32) #1

declare dso_local i32 @FAN_CTRL_MODE(i32) #1

declare dso_local i32 @f75375_write8(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @f75375_write_pwm(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
