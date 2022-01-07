; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5627.c_sch5627_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5627.c_sch5627_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sch5627_data = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@SCH5627_REG_HWMON_ID = common dso_local global i32 0, align 4
@SCH5627_HWMON_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"invalid %s id: 0x%02X (expected 0x%02X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hwmon\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SCH5627_REG_COMPANY_ID = common dso_local global i32 0, align 4
@SCH5627_COMPANY_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"company\00", align 1
@SCH5627_REG_PRIMARY_ID = common dso_local global i32 0, align 4
@SCH5627_PRIMARY_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@SCH5627_REG_BUILD_CODE = common dso_local global i32 0, align 4
@SCH5627_REG_BUILD_ID = common dso_local global i32 0, align 4
@SCH5627_REG_HWMON_REV = common dso_local global i32 0, align 4
@SCH5627_REG_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"hardware monitoring not enabled\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"found %s chip at %#hx\0A\00", align 1
@DEVNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"firmware build: code 0x%02X, id 0x%04X, hwmon: rev 0x%02X\0A\00", align 1
@sch5627_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sch5627_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch5627_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sch5627_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sch5627_data* @devm_kzalloc(%struct.TYPE_5__* %11, i32 32, i32 %12)
  store %struct.sch5627_data* %13, %struct.sch5627_data** %4, align 8
  %14 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %15 = icmp ne %struct.sch5627_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %220

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_IO, align 4
  %22 = call %struct.TYPE_6__* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %26 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %28 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.sch5627_data* %31)
  %33 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %34 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SCH5627_REG_HWMON_ID, align 4
  %37 = call i32 @sch56xx_read_virtual_reg(i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %19
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %5, align 4
  br label %216

42:                                               ; preds = %19
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SCH5627_HWMON_ID, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SCH5627_HWMON_ID, align 4
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %216

52:                                               ; preds = %42
  %53 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %54 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SCH5627_REG_COMPANY_ID, align 4
  %57 = call i32 @sch56xx_read_virtual_reg(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %5, align 4
  br label %216

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SCH5627_COMPANY_ID, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SCH5627_COMPANY_ID, align 4
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %216

72:                                               ; preds = %62
  %73 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %74 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SCH5627_REG_PRIMARY_ID, align 4
  %77 = call i32 @sch56xx_read_virtual_reg(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %5, align 4
  br label %216

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @SCH5627_PRIMARY_ID, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @SCH5627_PRIMARY_ID, align 4
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %216

92:                                               ; preds = %82
  %93 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %94 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SCH5627_REG_BUILD_CODE, align 4
  %97 = call i32 @sch56xx_read_virtual_reg(i32 %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %5, align 4
  br label %216

102:                                              ; preds = %92
  %103 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %104 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SCH5627_REG_BUILD_ID, align 4
  %107 = call i32 @sch56xx_read_virtual_reg16(i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %5, align 4
  br label %216

112:                                              ; preds = %102
  %113 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %114 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SCH5627_REG_HWMON_REV, align 4
  %117 = call i32 @sch56xx_read_virtual_reg(i32 %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %5, align 4
  br label %216

122:                                              ; preds = %112
  %123 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %124 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SCH5627_REG_CTRL, align 4
  %127 = call i32 @sch56xx_read_virtual_reg(i32 %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %5, align 4
  br label %216

132:                                              ; preds = %122
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %135 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %137 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %132
  %142 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %216

145:                                              ; preds = %132
  %146 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %147 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SCH5627_REG_CTRL, align 4
  %150 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %151 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, 16
  %154 = call i32 @sch56xx_write_virtual_reg(i32 %148, i32 %149, i32 %153)
  %155 = load i32, i32* @jiffies, align 4
  %156 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %157 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %159 = call i32 @sch5627_read_limits(%struct.sch5627_data* %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %216

163:                                              ; preds = %145
  %164 = load i32, i32* @DEVNAME, align 4
  %165 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %166 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %169, i32 %170, i32 %171)
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = call i32 @sysfs_create_group(i32* %175, i32* @sch5627_group)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %163
  br label %216

180:                                              ; preds = %163
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32* @hwmon_device_register(%struct.TYPE_5__* %182)
  %184 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %185 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %184, i32 0, i32 4
  store i32* %183, i32** %185, align 8
  %186 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %187 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = call i64 @IS_ERR(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %180
  %192 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %193 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @PTR_ERR(i32* %194)
  store i32 %195, i32* %5, align 4
  %196 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %197 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %196, i32 0, i32 4
  store i32* null, i32** %197, align 8
  br label %216

198:                                              ; preds = %180
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %202 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = shl i32 %204, 24
  %206 = load i32, i32* %7, align 4
  %207 = shl i32 %206, 8
  %208 = or i32 %205, %207
  %209 = load i32, i32* %8, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %212 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %211, i32 0, i32 1
  %213 = call i32 @sch56xx_watchdog_register(%struct.TYPE_5__* %200, i32 %203, i32 %210, i32* %212, i32 1)
  %214 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  %215 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  store i32 0, i32* %2, align 4
  br label %220

216:                                              ; preds = %191, %179, %162, %141, %130, %120, %110, %100, %86, %80, %66, %60, %46, %40
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = call i32 @sch5627_remove(%struct.platform_device* %217)
  %219 = load i32, i32* %5, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %216, %198, %16
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.sch5627_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sch5627_data*) #1

declare dso_local i32 @sch56xx_read_virtual_reg(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sch56xx_read_virtual_reg16(i32, i32) #1

declare dso_local i32 @sch56xx_write_virtual_reg(i32, i32, i32) #1

declare dso_local i32 @sch5627_read_limits(%struct.sch5627_data*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32* @hwmon_device_register(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @sch56xx_watchdog_register(%struct.TYPE_5__*, i32, i32, i32*, i32) #1

declare dso_local i32 @sch5627_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
