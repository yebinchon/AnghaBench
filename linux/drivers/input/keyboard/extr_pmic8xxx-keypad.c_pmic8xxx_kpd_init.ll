; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kpd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kpd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i64, i64, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@pmic8xxx_kpd_init.row_bits = internal constant [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7], align 16
@KEYP_CTRL_SCAN_COLS_MIN = common dso_local global i64 0, align 8
@KEYP_CTRL_SCAN_COLS_BITS = common dso_local global i32 0, align 4
@KEYP_CTRL_SCAN_COLS_SHIFT = common dso_local global i32 0, align 4
@KEYP_CTRL_SCAN_ROWS_MIN = common dso_local global i64 0, align 8
@KEYP_CTRL_SCAN_ROWS_SHIFT = common dso_local global i32 0, align 4
@KEYP_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error writing KEYP_CTRL reg, rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"scan-delay\00", align 1
@MIN_SCAN_DELAY = common dso_local global i32 0, align 4
@MAX_SCAN_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid keypad scan time supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"row-hold\00", align 1
@MIN_ROW_HOLD_DELAY = common dso_local global i32 0, align 4
@MAX_ROW_HOLD_DELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"invalid keypad row hold time supplied\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"debounce\00", align 1
@MIN_DEBOUNCE_TIME = common dso_local global i32 0, align 4
@MAX_DEBOUNCE_TIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"invalid debounce time supplied\0A\00", align 1
@KEYP_SCAN_DBOUNCE_SHIFT = common dso_local global i32 0, align 4
@KEYP_SCAN_PAUSE_SHIFT = common dso_local global i32 0, align 4
@KEYP_CLOCK_FREQ = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@KEYP_SCAN_ROW_HOLD_SHIFT = common dso_local global i32 0, align 4
@KEYP_SCAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Error writing KEYP_SCAN reg, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic8xxx_kp*, %struct.platform_device*)* @pmic8xxx_kpd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_kpd_init(%struct.pmic8xxx_kp* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmic8xxx_kp*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pmic8xxx_kp* %0, %struct.pmic8xxx_kp** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %20 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KEYP_CTRL_SCAN_COLS_MIN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %27 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KEYP_CTRL_SCAN_COLS_MIN, align 8
  %30 = sub nsw i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @KEYP_CTRL_SCAN_COLS_BITS, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @KEYP_CTRL_SCAN_COLS_SHIFT, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %39 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KEYP_CTRL_SCAN_ROWS_MIN, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %52

44:                                               ; preds = %32
  %45 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %46 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KEYP_CTRL_SCAN_ROWS_MIN, align 8
  %49 = sub nsw i64 %47, %48
  %50 = getelementptr inbounds [14 x i32], [14 x i32]* @pmic8xxx_kpd_init.row_bits, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %44, %43
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @KEYP_CTRL_SCAN_ROWS_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %59 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @KEYP_CTRL, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @regmap_write(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %68 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_2__*
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %193

75:                                               ; preds = %52
  %76 = load %struct.device_node*, %struct.device_node** %6, align 8
  %77 = call i64 @of_property_read_u32(%struct.device_node* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @MIN_SCAN_DELAY, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @MAX_SCAN_DELAY, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @MIN_SCAN_DELAY, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @is_power_of_2(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89, %85, %81
  %94 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %193

99:                                               ; preds = %89
  %100 = load %struct.device_node*, %struct.device_node** %6, align 8
  %101 = call i64 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @MIN_ROW_HOLD_DELAY, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @MAX_ROW_HOLD_DELAY, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %118, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @MIN_ROW_HOLD_DELAY, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @MIN_ROW_HOLD_DELAY, align 4
  %116 = urem i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113, %109, %105
  %119 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %193

124:                                              ; preds = %113
  %125 = load %struct.device_node*, %struct.device_node** %6, align 8
  %126 = call i64 @of_property_read_u32(%struct.device_node* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @MIN_DEBOUNCE_TIME, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %9, align 4
  %132 = urem i32 %131, 5
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @MAX_DEBOUNCE_TIME, align 4
  %137 = icmp ugt i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @MIN_DEBOUNCE_TIME, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138, %134, %130
  %143 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %193

148:                                              ; preds = %138
  %149 = load i32, i32* %9, align 4
  %150 = udiv i32 %149, 5
  %151 = sub i32 %150, 1
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @KEYP_SCAN_DBOUNCE_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @fls(i32 %157)
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @KEYP_SCAN_PAUSE_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* %13, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @KEYP_CLOCK_FREQ, align 4
  %167 = mul i32 %165, %166
  %168 = load i32, i32* @NSEC_PER_SEC, align 4
  %169 = udiv i32 %167, %168
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @KEYP_SCAN_ROW_HOLD_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = load i32, i32* %13, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %13, align 4
  %175 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %176 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @KEYP_SCAN, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @regmap_write(i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %148
  %184 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %185 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to %struct.TYPE_2__*
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %183, %148
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %142, %118, %93, %66
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
