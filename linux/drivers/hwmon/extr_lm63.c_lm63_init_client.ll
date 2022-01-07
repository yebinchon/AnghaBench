; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm63_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@LM63_REG_CONFIG1 = common dso_local global i32 0, align 4
@LM63_REG_CONFIG_FAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Switching to operational mode\0A\00", align 1
@LM63_REG_PWM_FREQ = common dso_local global i32 0, align 4
@LM63_MAX_CONVRATE_HZ = common dso_local global i32 0, align 4
@LM96163_MAX_CONVRATE_HZ = common dso_local global i32 0, align 4
@LM96163_REG_TRUTHERM = common dso_local global i32 0, align 4
@LM63_REG_CONVRATE = common dso_local global i32 0, align 4
@LM63_MAX_CONVRATE = common dso_local global i64 0, align 8
@LM96163_REG_CONFIG_ENHANCED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Alert/tach pin configured for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"tachometer input\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"alert output\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"PWM clock %s kHz, output frequency %u Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1.4\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"360\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"PWM output active %s, %s mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm63_data*)* @lm63_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm63_init_client(%struct.lm63_data* %0) #0 {
  %2 = alloca %struct.lm63_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lm63_data* %0, %struct.lm63_data** %2, align 8
  %7 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %8 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %7, i32 0, i32 11
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = load i32, i32* @LM63_REG_CONFIG1, align 4
  %14 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %12, i32 %13)
  %15 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %16 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load i32, i32* @LM63_REG_CONFIG_FAN, align 4
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %17, i32 %18)
  %20 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %21 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %23 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %31 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 167
  store i32 %33, i32* %31, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @LM63_REG_CONFIG1, align 4
  %36 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %37 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %27, %1
  %41 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %42 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 129
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %47 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, 4
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = load i32, i32* @LM63_REG_PWM_FREQ, align 4
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  %54 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %55 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %57 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %62 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %50
  %64 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %65 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %85 [
    i32 130, label %67
    i32 129, label %67
    i32 128, label %73
  ]

67:                                               ; preds = %63, %63
  %68 = load i32, i32* @LM63_MAX_CONVRATE_HZ, align 4
  %69 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %70 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %72 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %71, i32 0, i32 4
  store i32 8, i32* %72, align 8
  br label %85

73:                                               ; preds = %63
  %74 = load i32, i32* @LM96163_MAX_CONVRATE_HZ, align 4
  %75 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %76 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  %77 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %78 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %77, i32 0, i32 4
  store i32 12, i32* %78, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %80 = load i32, i32* @LM96163_REG_TRUTHERM, align 4
  %81 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %79, i32 %80)
  %82 = and i32 %81, 2
  %83 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %84 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %63, %73, %67
  %86 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %87 = load i32, i32* @LM63_REG_CONVRATE, align 4
  %88 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %86, i32 %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @LM63_MAX_CONVRATE, align 8
  %92 = icmp sgt i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i64, i64* @LM63_MAX_CONVRATE, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %96, %85
  %99 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %100 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @UPDATE_INTERVAL(i32 %101, i64 %102)
  %104 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %105 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %107 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 128
  br i1 %109, label %110, label %147

110:                                              ; preds = %98
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = load i32, i32* @LM96163_REG_CONFIG_ENHANCED, align 4
  %113 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %111, i32 %112)
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %6, align 8
  %115 = load i64, i64* %6, align 8
  %116 = and i64 %115, 32
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %120 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %119, i32 0, i32 6
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %110
  %122 = load i64, i64* %6, align 8
  %123 = and i64 %122, 16
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %127 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %125
  %132 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %133 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 8
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %138 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %137, i32 0, i32 7
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %131, %125, %121
  %140 = load i64, i64* %6, align 8
  %141 = and i64 %140, 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %145 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %144, i32 0, i32 8
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %146, %98
  %148 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %149 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 130
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %155 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %161 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %152, %147
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %165 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 8
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %171 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %172 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 8
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 700, i32 180000
  %178 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %179 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sdiv i32 %177, %180
  %182 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %170, i32 %181)
  %183 = load %struct.device*, %struct.device** %4, align 8
  %184 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %185 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 16
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %191 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %192 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 32
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %198 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %190, i8* %197)
  ret void
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @UPDATE_INTERVAL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
