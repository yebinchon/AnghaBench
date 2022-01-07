; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM75A_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lm75a\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lm75\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm75_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %173

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 224
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %173

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 7)
  %36 = load i32, i32* @LM75A_ID, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 4)
  %41 = icmp ne i32 %40, 255
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 5)
  %45 = icmp ne i32 %44, 255
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %47, i32 6)
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42, %38
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %173

53:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i32 2)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 3)
  store i32 %57, i32* %10, align 4
  br label %109

58:                                               ; preds = %33
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %59, i32 2)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %61, i32 4)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %58
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %66, i32 5)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %71, i32 6)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %76, i32 7)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %70, %65, %58
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %173

83:                                               ; preds = %75
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %84, i32 3)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %86, i32 4)
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %105, label %90

90:                                               ; preds = %83
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %91, i32 5)
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %96, i32 6)
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %101, i32 7)
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %95, %90, %83
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %173

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %53
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %173

118:                                              ; preds = %112, %109
  store i32 8, i32* %7, align 4
  br label %119

119:                                              ; preds = %160, %118
  %120 = load i32, i32* %7, align 4
  %121 = icmp sle i32 %120, 248
  br i1 %121, label %122, label %163

122:                                              ; preds = %119
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %123, i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %143, label %129

129:                                              ; preds = %122
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 2
  %133 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %130, i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %129
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 3
  %140 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %137, i32 %139)
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %136, %129, %122
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %173

146:                                              ; preds = %136
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 7
  %153 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %150, i32 %152)
  %154 = load i32, i32* @LM75A_ID, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %173

159:                                              ; preds = %149, %146
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 40
  store i32 %162, i32* %7, align 4
  br label %119

163:                                              ; preds = %119
  %164 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %165 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %171 = load i32, i32* @I2C_NAME_SIZE, align 4
  %172 = call i32 @strlcpy(i32 %166, i8* %170, i32 %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %163, %156, %143, %115, %105, %80, %50, %30, %21
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
