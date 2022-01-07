; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }

@w83781d_group = common dso_local global i32 0, align 4
@w83783s = common dso_local global i32 0, align 4
@w83781d_group_in1 = common dso_local global i32 0, align 4
@as99127f = common dso_local global i32 0, align 4
@w83781d = common dso_local global i32 0, align 4
@w83781d_group_in78 = common dso_local global i32 0, align 4
@w83781d_group_temp3 = common dso_local global i32 0, align 4
@sensor_dev_attr_temp3_alarm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@w83781d_group_pwm12 = common dso_local global i32 0, align 4
@w83782d = common dso_local global i32 0, align 4
@w83781d_group_pwm34 = common dso_local global i32 0, align 4
@sensor_dev_attr_temp1_type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@sensor_dev_attr_temp2_type = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@sensor_dev_attr_temp3_type = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @w83781d_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_create_files(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = call i32 @sysfs_create_group(i32* %10, i32* @w83781d_group)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %148

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @w83783s, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = call i32 @sysfs_create_group(i32* %22, i32* @w83781d_group_in1)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %148

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @as99127f, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @w83781d, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @w83783s, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = call i32 @sysfs_create_group(i32* %43, i32* @w83781d_group_in78)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %148

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %37, %33, %29
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @w83783s, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = call i32 @sysfs_create_group(i32* %56, i32* @w83781d_group_temp3)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %148

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @w83781d, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* @S_IRUGO, align 4
  %70 = load i32, i32* @S_IWUSR, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @sysfs_chmod_file(i32* %68, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sensor_dev_attr_temp3_alarm, i32 0, i32 0, i32 0), i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %148

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @w83781d, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @as99127f, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 0
  %90 = call i32 @sysfs_create_group(i32* %89, i32* @w83781d_group_pwm12)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %148

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %83, %79
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @w83782d, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = getelementptr inbounds %struct.device, %struct.device* %104, i32 0, i32 0
  %106 = call i32 @sysfs_create_group(i32* %105, i32* @w83781d_group_pwm34)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %148

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %100, %96
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @as99127f, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %147

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @w83781d, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i32 @device_create_file(%struct.device* %121, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sensor_dev_attr_temp1_type, i32 0, i32 0))
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %148

127:                                              ; preds = %120
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = call i32 @device_create_file(%struct.device* %128, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sensor_dev_attr_temp2_type, i32 0, i32 0))
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %148

134:                                              ; preds = %127
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @w83783s, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load %struct.device*, %struct.device** %5, align 8
  %140 = call i32 @device_create_file(%struct.device* %139, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sensor_dev_attr_temp3_type, i32 0, i32 0))
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %148

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %134
  br label %147

147:                                              ; preds = %146, %116, %112
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %143, %132, %125, %109, %93, %75, %60, %47, %26, %14
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysfs_chmod_file(i32*, i32*, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
