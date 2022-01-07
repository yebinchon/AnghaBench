; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.sis5595_data = type { i8*, i64, i32, i32, i32*, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@SIS5595_EXTENT = common dso_local global i32 0, align 4
@sis5595_driver = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sis5595\00", align 1
@s_bridge = common dso_local global %struct.TYPE_10__* null, align 8
@REV2MIN = common dso_local global i64 0, align 8
@SIS5595_PIN_REG = common dso_local global i32 0, align 4
@sis5595_group = common dso_local global i32 0, align 4
@sis5595_group_in4 = common dso_local global i32 0, align 4
@sis5595_group_temp1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sis5595_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis5595_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sis5595_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i8, align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @IORESOURCE_IO, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.resource*, %struct.resource** %7, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SIS5595_EXTENT, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sis5595_driver, i32 0, i32 0, i32 0), align 4
  %19 = call i32 @devm_request_region(%struct.TYPE_11__* %13, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %158

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.sis5595_data* @devm_kzalloc(%struct.TYPE_11__* %26, i32 48, i32 %27)
  store %struct.sis5595_data* %28, %struct.sis5595_data** %6, align 8
  %29 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %30 = icmp ne %struct.sis5595_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %158

34:                                               ; preds = %24
  %35 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %36 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %35, i32 0, i32 7
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %39 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %45 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %47 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.sis5595_data* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_bridge, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %55 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %57 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %56, i32 0, i32 2
  store i32 3, i32* %57, align 8
  %58 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %59 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @REV2MIN, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %34
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_bridge, align 8
  %65 = load i32, i32* @SIS5595_PIN_REG, align 4
  %66 = call i32 @pci_read_config_byte(%struct.TYPE_10__* %64, i32 %65, i8* %8)
  %67 = load i8, i8* %8, align 1
  %68 = sext i8 %67 to i32
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %73 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %72, i32 0, i32 2
  store i32 4, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %63
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %77 = call i32 @sis5595_init_device(%struct.sis5595_data* %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %92, %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @SIS5595_REG_FAN_MIN(i32 %83)
  %85 = call i32 @sis5595_read_value(%struct.sis5595_data* %82, i32 %84)
  %86 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %87 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %78

95:                                               ; preds = %78
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = call i32 @sysfs_create_group(i32* %98, i32* @sis5595_group)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %158

104:                                              ; preds = %95
  %105 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %106 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = call i32 @sysfs_create_group(i32* %112, i32* @sis5595_group_in4)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %144

117:                                              ; preds = %109
  br label %127

118:                                              ; preds = %104
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = call i32 @sysfs_create_group(i32* %121, i32* @sis5595_group_temp1)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %144

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %117
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @hwmon_device_register(%struct.TYPE_11__* %129)
  %131 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %132 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %134 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @IS_ERR(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %127
  %139 = load %struct.sis5595_data*, %struct.sis5595_data** %6, align 8
  %140 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @PTR_ERR(i32 %141)
  store i32 %142, i32* %4, align 4
  br label %144

143:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %158

144:                                              ; preds = %138, %125, %116
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = call i32 @sysfs_remove_group(i32* %147, i32* @sis5595_group)
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = call i32 @sysfs_remove_group(i32* %151, i32* @sis5595_group_in4)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = call i32 @sysfs_remove_group(i32* %155, i32* @sis5595_group_temp1)
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %144, %143, %102, %31, %21
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local %struct.sis5595_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sis5595_data*) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @sis5595_init_device(%struct.sis5595_data*) #1

declare dso_local i32 @sis5595_read_value(%struct.sis5595_data*, i32) #1

declare dso_local i32 @SIS5595_REG_FAN_MIN(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
