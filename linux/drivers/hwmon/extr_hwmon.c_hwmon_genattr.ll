; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_genattr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_hwmon_genattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i8*, i32 }
%struct.device = type { i32 }
%struct.hwmon_ops = type { i32 (i8*, i32, i32, i32)*, i32, i32, i32 }
%struct.hwmon_device_attribute = type { i8*, i32, i32, %struct.device_attribute, %struct.hwmon_ops*, i32 }
%struct.device_attribute = type { %struct.attribute, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hwmon_chip = common dso_local global i32 0, align 4
@hwmon_attr_show_string = common dso_local global i32 0, align 4
@hwmon_attr_show = common dso_local global i32 0, align 4
@hwmon_attr_store = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute* (%struct.device*, i8*, i32, i32, i32, i8*, %struct.hwmon_ops*)* @hwmon_genattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute* @hwmon_genattr(%struct.device* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, %struct.hwmon_ops* %6) #0 {
  %8 = alloca %struct.attribute*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.hwmon_ops*, align 8
  %16 = alloca %struct.hwmon_device_attribute*, align 8
  %17 = alloca %struct.device_attribute*, align 8
  %18 = alloca %struct.attribute*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.hwmon_ops* %6, %struct.hwmon_ops** %15, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @is_string_attr(i32 %22, i32 %23)
  store i32 %24, i32* %21, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.attribute* @ERR_PTR(i32 %29)
  store %struct.attribute* %30, %struct.attribute** %8, align 8
  br label %152

31:                                               ; preds = %7
  %32 = load %struct.hwmon_ops*, %struct.hwmon_ops** %15, align 8
  %33 = getelementptr inbounds %struct.hwmon_ops, %struct.hwmon_ops* %32, i32 0, i32 0
  %34 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %33, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 %34(i8* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.attribute* @ERR_PTR(i32 %44)
  store %struct.attribute* %45, %struct.attribute** %8, align 8
  br label %152

46:                                               ; preds = %31
  %47 = load i32, i32* %19, align 4
  %48 = and i32 %47, 292
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.hwmon_ops*, %struct.hwmon_ops** %15, align 8
  %55 = getelementptr inbounds %struct.hwmon_ops, %struct.hwmon_ops* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %21, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load %struct.hwmon_ops*, %struct.hwmon_ops** %15, align 8
  %63 = getelementptr inbounds %struct.hwmon_ops, %struct.hwmon_ops* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61, %53
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.attribute* @ERR_PTR(i32 %68)
  store %struct.attribute* %69, %struct.attribute** %8, align 8
  br label %152

70:                                               ; preds = %61, %58, %46
  %71 = load i32, i32* %19, align 4
  %72 = and i32 %71, 146
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.hwmon_ops*, %struct.hwmon_ops** %15, align 8
  %76 = getelementptr inbounds %struct.hwmon_ops, %struct.hwmon_ops* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.attribute* @ERR_PTR(i32 %81)
  store %struct.attribute* %82, %struct.attribute** %8, align 8
  br label %152

83:                                               ; preds = %74, %70
  %84 = load %struct.device*, %struct.device** %9, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.hwmon_device_attribute* @devm_kzalloc(%struct.device* %84, i32 56, i32 %85)
  store %struct.hwmon_device_attribute* %86, %struct.hwmon_device_attribute** %16, align 8
  %87 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %88 = icmp ne %struct.hwmon_device_attribute* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.attribute* @ERR_PTR(i32 %91)
  store %struct.attribute* %92, %struct.attribute** %8, align 8
  br label %152

93:                                               ; preds = %83
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @hwmon_chip, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i8*, i8** %14, align 8
  store i8* %98, i8** %20, align 8
  br label %113

99:                                               ; preds = %93
  %100 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %101 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %11, align 4
  %107 = call i64 @hwmon_attr_base(i32 %106)
  %108 = add nsw i64 %105, %107
  %109 = call i32 @scnprintf(i8* %102, i32 8, i8* %103, i64 %108)
  %110 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %111 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %20, align 8
  br label %113

113:                                              ; preds = %99, %97
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %116 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %119 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %122 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.hwmon_ops*, %struct.hwmon_ops** %15, align 8
  %124 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %125 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %124, i32 0, i32 4
  store %struct.hwmon_ops* %123, %struct.hwmon_ops** %125, align 8
  %126 = load %struct.hwmon_device_attribute*, %struct.hwmon_device_attribute** %16, align 8
  %127 = getelementptr inbounds %struct.hwmon_device_attribute, %struct.hwmon_device_attribute* %126, i32 0, i32 3
  store %struct.device_attribute* %127, %struct.device_attribute** %17, align 8
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %113
  %131 = load i32, i32* @hwmon_attr_show_string, align 4
  br label %134

132:                                              ; preds = %113
  %133 = load i32, i32* @hwmon_attr_show, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = load %struct.device_attribute*, %struct.device_attribute** %17, align 8
  %137 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @hwmon_attr_store, align 4
  %139 = load %struct.device_attribute*, %struct.device_attribute** %17, align 8
  %140 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load %struct.device_attribute*, %struct.device_attribute** %17, align 8
  %142 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %141, i32 0, i32 0
  store %struct.attribute* %142, %struct.attribute** %18, align 8
  %143 = load %struct.attribute*, %struct.attribute** %18, align 8
  %144 = call i32 @sysfs_attr_init(%struct.attribute* %143)
  %145 = load i8*, i8** %20, align 8
  %146 = load %struct.attribute*, %struct.attribute** %18, align 8
  %147 = getelementptr inbounds %struct.attribute, %struct.attribute* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.attribute*, %struct.attribute** %18, align 8
  %150 = getelementptr inbounds %struct.attribute, %struct.attribute* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.attribute*, %struct.attribute** %18, align 8
  store %struct.attribute* %151, %struct.attribute** %8, align 8
  br label %152

152:                                              ; preds = %134, %89, %79, %66, %42, %27
  %153 = load %struct.attribute*, %struct.attribute** %8, align 8
  ret %struct.attribute* %153
}

declare dso_local i32 @is_string_attr(i32, i32) #1

declare dso_local %struct.attribute* @ERR_PTR(i32) #1

declare dso_local %struct.hwmon_device_attribute* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @hwmon_attr_base(i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
