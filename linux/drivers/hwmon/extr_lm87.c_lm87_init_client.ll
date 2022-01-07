; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.lm87_data = type { i32, i32 }
%struct.regulator = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"has-temp3\00", align 1
@CHAN_TEMP3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"has-in6\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"has-in7\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@CHAN_VCC_5V = common dso_local global i32 0, align 4
@LM87_REG_CHANNEL_MODE = common dso_local global i32 0, align 4
@LM87_REG_CONFIG = common dso_local global i32 0, align 4
@lm87_restore_config = common dso_local global i32 0, align 4
@LM87_REG_TEMP_HIGH = common dso_local global i32* null, align 8
@LM87_REG_TEMP_LOW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm87_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm87_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm87_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.lm87_data* %11, %struct.lm87_data** %4, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.regulator* null, %struct.regulator** %8, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call i64 @of_property_read_bool(%struct.device_node* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @CHAN_TEMP3, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i64 @of_property_read_bool(%struct.device_node* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = call i32 @CHAN_NO_FAN(i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i64 @of_property_read_bool(%struct.device_node* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 @CHAN_NO_FAN(i32 1)
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call %struct.regulator* @devm_regulator_get_optional(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.regulator* %45, %struct.regulator** %8, align 8
  %46 = load %struct.regulator*, %struct.regulator** %8, align 8
  %47 = call i32 @IS_ERR(%struct.regulator* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.regulator*, %struct.regulator** %8, align 8
  %51 = call i32 @regulator_get_voltage(%struct.regulator* %50)
  %52 = icmp eq i32 %51, 5000000
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @CHAN_VCC_5V, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %61 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = load i32, i32* @LM87_REG_CHANNEL_MODE, align 4
  %64 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %65 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lm87_write_value(%struct.i2c_client* %62, i32 %63, i32 %66)
  br label %94

68:                                               ; preds = %1
  %69 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i64 @dev_get_platdata(%struct.TYPE_4__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = call i64 @dev_get_platdata(%struct.TYPE_4__* %75)
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %80 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = load i32, i32* @LM87_REG_CHANNEL_MODE, align 4
  %83 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %84 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @lm87_write_value(%struct.i2c_client* %81, i32 %82, i32 %85)
  br label %93

87:                                               ; preds = %68
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = load i32, i32* @LM87_REG_CHANNEL_MODE, align 4
  %90 = call i32 @lm87_read_value(%struct.i2c_client* %88, i32 %89)
  %91 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %92 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %73
  br label %94

94:                                               ; preds = %93, %58
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = load i32, i32* @LM87_REG_CONFIG, align 4
  %97 = call i32 @lm87_read_value(%struct.i2c_client* %95, i32 %96)
  %98 = and i32 %97, 111
  %99 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %100 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* @lm87_restore_config, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %105 = call i32 @devm_add_action(%struct.TYPE_4__* %102, i32 %103, %struct.i2c_client* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %204

110:                                              ; preds = %94
  %111 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %112 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %188, label %116

116:                                              ; preds = %110
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 6
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @LM87_REG_IN_MIN(i32 %122)
  %124 = call i32 @lm87_write_value(%struct.i2c_client* %121, i32 %123, i32 0)
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @LM87_REG_IN_MAX(i32 %126)
  %128 = call i32 @lm87_write_value(%struct.i2c_client* %125, i32 %127, i32 255)
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %117

132:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %159, %132
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %136, label %162

136:                                              ; preds = %133
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = load i32*, i32** @LM87_REG_TEMP_HIGH, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @lm87_write_value(%struct.i2c_client* %137, i32 %142, i32 127)
  %144 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %145 = load i32*, i32** @LM87_REG_TEMP_LOW, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @lm87_write_value(%struct.i2c_client* %144, i32 %149, i32 0)
  %151 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @LM87_REG_AIN_MIN(i32 %152)
  %154 = call i32 @lm87_write_value(%struct.i2c_client* %151, i32 %153, i32 0)
  %155 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @LM87_REG_AIN_MAX(i32 %156)
  %158 = call i32 @lm87_write_value(%struct.i2c_client* %155, i32 %157, i32 255)
  br label %159

159:                                              ; preds = %136
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %133

162:                                              ; preds = %133
  %163 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %164 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @CHAN_TEMP3, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %162
  %170 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %171 = load i32*, i32** @LM87_REG_TEMP_HIGH, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @lm87_write_value(%struct.i2c_client* %170, i32 %173, i32 127)
  %175 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %176 = load i32*, i32** @LM87_REG_TEMP_LOW, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @lm87_write_value(%struct.i2c_client* %175, i32 %178, i32 0)
  br label %187

180:                                              ; preds = %162
  %181 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %182 = call i32 @LM87_REG_IN_MIN(i32 0)
  %183 = call i32 @lm87_write_value(%struct.i2c_client* %181, i32 %182, i32 0)
  %184 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %185 = call i32 @LM87_REG_IN_MAX(i32 0)
  %186 = call i32 @lm87_write_value(%struct.i2c_client* %184, i32 %185, i32 255)
  br label %187

187:                                              ; preds = %180, %169
  br label %188

188:                                              ; preds = %187, %110
  %189 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %190 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 9
  %193 = icmp ne i32 %192, 1
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  %195 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %196 = load i32, i32* @LM87_REG_CONFIG, align 4
  %197 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %198 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 119
  %201 = or i32 %200, 1
  %202 = call i32 @lm87_write_value(%struct.i2c_client* %195, i32 %196, i32 %201)
  br label %203

203:                                              ; preds = %194, %188
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %203, %108
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @CHAN_NO_FAN(i32) #1

declare dso_local %struct.regulator* @devm_regulator_get_optional(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i32 @lm87_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @dev_get_platdata(%struct.TYPE_4__*) #1

declare dso_local i32 @lm87_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_4__*, i32, %struct.i2c_client*) #1

declare dso_local i32 @LM87_REG_IN_MIN(i32) #1

declare dso_local i32 @LM87_REG_IN_MAX(i32) #1

declare dso_local i32 @LM87_REG_AIN_MIN(i32) #1

declare dso_local i32 @LM87_REG_AIN_MAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
