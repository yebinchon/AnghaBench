; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }
%struct.w83781d_data = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83781D_REG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Detection of w83781d chip failed at step 3\0A\00", align 1
@W83781D_REG_BANK = common dso_local global i32 0, align 4
@W83781D_REG_CHIPMAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Detection of w83781d chip failed at step 4\0A\00", align 1
@W83781D_REG_I2C_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Detection of w83781d chip failed at step 5\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"w83781d chip vendor is neither Winbond nor Asus\0A\00", align 1
@W83781D_REG_WCHIPID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"w83781d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"w83782d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"w83783s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"as99127f\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Device at 0x%02x appears to be the same as ISA device\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @w83781d_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.w83781d_data*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %13 = call %struct.w83781d_data* (...) @w83781d_data_if_isa()
  store %struct.w83781d_data* %13, %struct.w83781d_data** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %9, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %21 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %22 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %202

27:                                               ; preds = %2
  %28 = load %struct.w83781d_data*, %struct.w83781d_data** %8, align 8
  %29 = icmp ne %struct.w83781d_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.w83781d_data*, %struct.w83781d_data** %8, align 8
  %32 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @W83781D_REG_CONFIG, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %192

44:                                               ; preds = %34
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* @W83781D_REG_BANK, align 4
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @W83781D_REG_CHIPMAN, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 7
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 163
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 195
  br i1 %63, label %74, label %64

64:                                               ; preds = %61, %58, %54
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 92
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 18
  br i1 %73, label %74, label %78

74:                                               ; preds = %71, %61
  %75 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %76 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %192

78:                                               ; preds = %71, %68, %64, %44
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 163
  br i1 %84, label %92, label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 92
  br i1 %91, label %92, label %103

92:                                               ; preds = %89, %82
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load i32, i32* @W83781D_REG_I2C_ADDR, align 4
  %95 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %93, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %100 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %99, i32 0, i32 0
  %101 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %192

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %89, %85
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = load i32, i32* @W83781D_REG_BANK, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* @W83781D_REG_BANK, align 4
  %108 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %106, i32 %107)
  %109 = and i32 %108, 120
  %110 = or i32 %109, 128
  %111 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %104, i32 %105, i32 %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load i32, i32* @W83781D_REG_CHIPMAN, align 4
  %114 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 92
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  br label %127

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 18
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 1, i32* %12, align 4
  br label %126

122:                                              ; preds = %118
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %123, i32 0, i32 0
  %125 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %192

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %117
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = load i32, i32* @W83781D_REG_WCHIPID, align 4
  %130 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %131, 16
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 17
  br i1 %135, label %136, label %140

136:                                              ; preds = %133, %127
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %165

140:                                              ; preds = %136, %133
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 48
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %164

147:                                              ; preds = %143, %140
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 64
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 45
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %163

157:                                              ; preds = %153, %150, %147
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 49
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %162

161:                                              ; preds = %157
  br label %192

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162, %156
  br label %164

164:                                              ; preds = %163, %146
  br label %165

165:                                              ; preds = %164, %139
  %166 = load i32, i32* %6, align 4
  %167 = icmp sle i32 %166, 48
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i64 @w83781d_alias_detect(%struct.i2c_client* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %175 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %174, i32 0, i32 0
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %175, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %192

178:                                              ; preds = %168, %165
  %179 = load %struct.w83781d_data*, %struct.w83781d_data** %8, align 8
  %180 = icmp ne %struct.w83781d_data* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.w83781d_data*, %struct.w83781d_data** %8, align 8
  %183 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %182, i32 0, i32 0
  %184 = call i32 @mutex_unlock(i32* %183)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %187 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** %11, align 8
  %190 = load i32, i32* @I2C_NAME_SIZE, align 4
  %191 = call i32 @strlcpy(i32 %188, i8* %189, i32 %190)
  store i32 0, i32* %3, align 4
  br label %202

192:                                              ; preds = %173, %161, %122, %98, %74, %40
  %193 = load %struct.w83781d_data*, %struct.w83781d_data** %8, align 8
  %194 = icmp ne %struct.w83781d_data* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.w83781d_data*, %struct.w83781d_data** %8, align 8
  %197 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %196, i32 0, i32 0
  %198 = call i32 @mutex_unlock(i32* %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load i32, i32* @ENODEV, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %199, %185, %24
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.w83781d_data* @w83781d_data_if_isa(...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @w83781d_alias_detect(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
