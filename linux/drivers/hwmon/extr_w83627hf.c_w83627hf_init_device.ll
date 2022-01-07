; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.w83627hf_data = type { i32, i32, i32, i32* }

@w83627hf = common dso_local global i32 0, align 4
@W83781D_REG_I2C_SUBADDR = common dso_local global i32 0, align 4
@W83781D_REG_I2C_ADDR = common dso_local global i32 0, align 4
@force_i2c = common dso_local global i32 0, align 4
@w83637hf = common dso_local global i32 0, align 4
@W83781D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@W83781D_REG_CHIPID = common dso_local global i32 0, align 4
@w83627thf = common dso_local global i32 0, align 4
@w83687thf = common dso_local global i32 0, align 4
@W83627THF_REG_VRM_OVT_CFG = common dso_local global i32 0, align 4
@W83781D_REG_SCFG1 = common dso_local global i32 0, align 4
@BIT_SCFG1 = common dso_local global i32* null, align 8
@W83781D_REG_SCFG2 = common dso_local global i32 0, align 4
@BIT_SCFG2 = common dso_local global i32* null, align 8
@w83697hf = common dso_local global i32 0, align 4
@init = common dso_local global i64 0, align 8
@W83627HF_REG_TEMP2_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Enabling temp2, readings might not make sense\0A\00", align 1
@W83627HF_REG_TEMP3_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Enabling temp3, readings might not make sense\0A\00", align 1
@W83781D_REG_CONFIG = common dso_local global i32 0, align 4
@W83781D_REG_VBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @w83627hf_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627hf_init_device(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.w83627hf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.w83627hf_data* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.w83627hf_data* %10, %struct.w83627hf_data** %3, align 8
  %11 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %12 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @w83627hf, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %19 = load i32, i32* @W83781D_REG_I2C_SUBADDR, align 4
  %20 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %18, i32 %19, i32 137)
  %21 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %22 = load i32, i32* @W83781D_REG_I2C_ADDR, align 4
  %23 = load i32, i32* @force_i2c, align 4
  %24 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @w83627hf, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @w83637hf, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29, %25
  %34 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %35 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  %36 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %38 = load i32, i32* @W83781D_REG_CHIPID, align 4
  %39 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 15
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 1
  %44 = shl i32 %43, 4
  %45 = or i32 %41, %44
  %46 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %47 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %68

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @w83627thf, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %54 = call i32 @w83627thf_read_gpio5(%struct.platform_device* %53)
  %55 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %56 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %67

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @w83687thf, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %63 = call i32 @w83687thf_read_vid(%struct.platform_device* %62)
  %64 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %65 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @w83627thf, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @w83637hf, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @w83687thf, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76, %72, %68
  %81 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %82 = load i32, i32* @W83627THF_REG_VRM_OVT_CFG, align 4
  %83 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %81, i32 %82)
  %84 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %85 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %88 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %89 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %90

90:                                               ; preds = %149, %86
  %91 = load i32, i32* %4, align 4
  %92 = icmp sle i32 %91, 3
  br i1 %92, label %93, label %152

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = load i32*, i32** @BIT_SCFG1, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %94, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %93
  %104 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %105 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 4, i32* %110, align 4
  br label %140

111:                                              ; preds = %93
  %112 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %113 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %114 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %112, i32 %113)
  %115 = load i32*, i32** @BIT_SCFG2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %114, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %111
  %124 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %125 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 1, i32* %130, align 4
  br label %139

131:                                              ; preds = %111
  %132 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %133 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 2, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %123
  br label %140

140:                                              ; preds = %139, %103
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @w83697hf, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %4, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %152

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %90

152:                                              ; preds = %147, %90
  %153 = load i64, i64* @init, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %152
  %156 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %157 = load i32, i32* @W83627HF_REG_TEMP2_CONFIG, align 4
  %158 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %156, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = and i32 %159, 1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 @dev_warn(i32* %164, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %166 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %167 = load i32, i32* @W83627HF_REG_TEMP2_CONFIG, align 4
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, 254
  %170 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %166, i32 %167, i32 %169)
  br label %171

171:                                              ; preds = %162, %155
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @w83697hf, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %171
  %176 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %177 = load i32, i32* @W83627HF_REG_TEMP3_CONFIG, align 4
  %178 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %176, i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %175
  %183 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @dev_warn(i32* %184, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %186 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %187 = load i32, i32* @W83627HF_REG_TEMP3_CONFIG, align 4
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, 254
  %190 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %186, i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %182, %175
  br label %192

192:                                              ; preds = %191, %171
  br label %193

193:                                              ; preds = %192, %152
  %194 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %195 = load i32, i32* @W83781D_REG_CONFIG, align 4
  %196 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %197 = load i32, i32* @W83781D_REG_CONFIG, align 4
  %198 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %196, i32 %197)
  %199 = and i32 %198, 247
  %200 = or i32 %199, 1
  %201 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %194, i32 %195, i32 %200)
  %202 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %203 = load i32, i32* @W83781D_REG_VBAT, align 4
  %204 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %202, i32 %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %193
  %209 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %210 = load i32, i32* @W83781D_REG_VBAT, align 4
  %211 = load i32, i32* %6, align 4
  %212 = or i32 %211, 1
  %213 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %209, i32 %210, i32 %212)
  br label %214

214:                                              ; preds = %208, %193
  ret void
}

declare dso_local %struct.w83627hf_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @w83627thf_read_gpio5(%struct.platform_device*) #1

declare dso_local i32 @w83687thf_read_vid(%struct.platform_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
