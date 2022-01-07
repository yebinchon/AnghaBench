; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_lm77_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm77.c_lm77_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm77\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm77_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm77_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %6, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %185

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %31, i32 2)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %33, i32 3)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %35, i32 4)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %37, i32 5)
  store i32 %38, i32* %13, align 4
  store i32 8, i32* %7, align 4
  br label %39

39:                                               ; preds = %81, %26
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %40, 255
  br i1 %41, label %42, label %84

42:                                               ; preds = %39
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %77, label %49

49:                                               ; preds = %42
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 2
  %53 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %50, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %77, label %56

56:                                               ; preds = %49
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 3
  %60 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %57, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %56
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 4
  %67 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %64, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 5
  %74 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %71, i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70, %63, %56, %49, %42
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %185

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 8
  store i32 %83, i32* %7, align 4
  br label %39

84:                                               ; preds = %39
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 240
  %87 = icmp ne i32 %86, 240
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 240
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, 240
  %95 = icmp ne i32 %94, 240
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 240
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, 240
  %103 = icmp ne i32 %102, 240
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 240
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, 240
  %111 = icmp ne i32 %110, 240
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, 240
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %117, 240
  %119 = icmp ne i32 %118, 240
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* %13, align 4
  %122 = and i32 %121, 240
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120, %112, %104, %96, %88
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %185

127:                                              ; preds = %120, %116
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, 224
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %185

134:                                              ; preds = %127
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %135, i32 0)
  store i32 %136, i32* %8, align 4
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %137, i32 6)
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %134
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %142, i32 7)
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141, %134
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %185

149:                                              ; preds = %141
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %150, i32 2)
  store i32 %151, i32* %10, align 4
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %152, i32 6)
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %161, label %156

156:                                              ; preds = %149
  %157 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %158 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %157, i32 7)
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156, %149
  %162 = load i32, i32* @ENODEV, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %185

164:                                              ; preds = %156
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %165, i32 4)
  store i32 %166, i32* %12, align 4
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %167, i32 6)
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %176, label %171

171:                                              ; preds = %164
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %172, i32 7)
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %171, %164
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %185

179:                                              ; preds = %171
  %180 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %181 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @I2C_NAME_SIZE, align 4
  %184 = call i32 @strlcpy(i32 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %183)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %179, %176, %161, %146, %131, %124, %77, %23
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
