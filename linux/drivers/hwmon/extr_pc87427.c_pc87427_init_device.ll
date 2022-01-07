; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pc87427_sio_data = type { i32, i32 }
%struct.pc87427_data = type { i32, i32, i32, i32 }

@LD_FAN = common dso_local global i32 0, align 4
@PC87427_REG_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s module not ready!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"FMC\00", align 1
@PC87427_REG_FAN_STATUS = common dso_local global i32 0, align 4
@FAN_STATUS_MONEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Enabling monitoring of all fans\0A\00", align 1
@PC87427_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@PWM_ENABLE_CTLEN = common dso_local global i32 0, align 4
@PWM_ENABLE_MODE_MASK = common dso_local global i32 0, align 4
@PWM_MODE_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"PWM%d is in automatic control mode\0A\00", align 1
@LD_TEMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"HMC\00", align 1
@PC87427_REG_TEMP_STATUS = common dso_local global i32 0, align 4
@TEMP_STATUS_CHANEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @pc87427_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc87427_init_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pc87427_sio_data*, align 8
  %4 = alloca %struct.pc87427_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.pc87427_sio_data* @dev_get_platdata(%struct.device* %7)
  store %struct.pc87427_sio_data* %8, %struct.pc87427_sio_data** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.pc87427_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.pc87427_data* %10, %struct.pc87427_data** %4, align 8
  %11 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %12 = load i32, i32* @LD_FAN, align 4
  %13 = load i32, i32* @PC87427_REG_BANK, align 4
  %14 = call i32 @pc87427_read8(%struct.pc87427_data* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @dev_warn(%struct.device* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %53, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load %struct.pc87427_sio_data*, %struct.pc87427_sio_data** %3, align 8
  %27 = getelementptr inbounds %struct.pc87427_sio_data, %struct.pc87427_sio_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %53

34:                                               ; preds = %25
  %35 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %36 = load i32, i32* @LD_FAN, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @BANK_FM(i32 %37)
  %39 = load i32, i32* @PC87427_REG_FAN_STATUS, align 4
  %40 = call i32 @pc87427_read8_bank(%struct.pc87427_data* %35, i32 %36, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FAN_STATUS_MONEN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %49 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %34
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %58 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %2, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %84, %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load %struct.pc87427_sio_data*, %struct.pc87427_sio_data** %3, align 8
  %69 = getelementptr inbounds %struct.pc87427_sio_data, %struct.pc87427_sio_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  br label %84

76:                                               ; preds = %67
  %77 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %78 = load i32, i32* @LD_FAN, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @BANK_FM(i32 %79)
  %81 = load i32, i32* @PC87427_REG_FAN_STATUS, align 4
  %82 = load i32, i32* @FAN_STATUS_MONEN, align 4
  %83 = call i32 @pc87427_write8_bank(%struct.pc87427_data* %77, i32 %78, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %75
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load %struct.pc87427_sio_data*, %struct.pc87427_sio_data** %3, align 8
  %89 = getelementptr inbounds %struct.pc87427_sio_data, %struct.pc87427_sio_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %92 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %56
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %142, %93
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %145

97:                                               ; preds = %94
  %98 = load %struct.pc87427_sio_data*, %struct.pc87427_sio_data** %3, align 8
  %99 = getelementptr inbounds %struct.pc87427_sio_data, %struct.pc87427_sio_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = shl i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  br label %142

106:                                              ; preds = %97
  %107 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %108 = load i32, i32* @LD_FAN, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @BANK_FC(i32 %109)
  %111 = load i32, i32* @PC87427_REG_PWM_ENABLE, align 4
  %112 = call i32 @pc87427_read8_bank(%struct.pc87427_data* %107, i32 %108, i32 %110, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @PWM_ENABLE_CTLEN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %106
  %118 = load i32, i32* %5, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %121 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %106
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @PWM_ENABLE_MODE_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @PWM_MODE_AUTO, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load %struct.device*, %struct.device** %2, align 8
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = shl i32 1, %135
  %137 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %138 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %130, %124
  br label %142

142:                                              ; preds = %141, %105
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %94

145:                                              ; preds = %94
  %146 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %147 = load i32, i32* @LD_TEMP, align 4
  %148 = load i32, i32* @PC87427_REG_BANK, align 4
  %149 = call i32 @pc87427_read8(%struct.pc87427_data* %146, i32 %147, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %145
  %154 = load %struct.device*, %struct.device** %2, align 8
  %155 = call i32 @dev_warn(%struct.device* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %145
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %179, %156
  %158 = load i32, i32* %5, align 4
  %159 = icmp slt i32 %158, 6
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %162 = load i32, i32* @LD_TEMP, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @BANK_TM(i32 %163)
  %165 = load i32, i32* @PC87427_REG_TEMP_STATUS, align 4
  %166 = call i32 @pc87427_read8_bank(%struct.pc87427_data* %161, i32 %162, i32 %164, i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @TEMP_STATUS_CHANEN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %160
  %172 = load i32, i32* %5, align 4
  %173 = shl i32 1, %172
  %174 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %175 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %171, %160
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %157

182:                                              ; preds = %157
  ret void
}

declare dso_local %struct.pc87427_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.pc87427_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pc87427_read8(%struct.pc87427_data*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

declare dso_local i32 @pc87427_read8_bank(%struct.pc87427_data*, i32, i32, i32) #1

declare dso_local i32 @BANK_FM(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @pc87427_write8_bank(%struct.pc87427_data*, i32, i32, i32, i32) #1

declare dso_local i32 @BANK_FC(i32) #1

declare dso_local i32 @BANK_TM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
