; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_create_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_create_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.edac_device_instance* }
%struct.edac_device_instance = type { i32, i32, %struct.kobject, i32*, %struct.edac_device_ctl_info* }
%struct.kobject = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ktype_instance_ctrl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register instance '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"now register '%d' blocks for instance %d\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Registered instance %d '%s' kobject\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edac_device_ctl_info*, i32)* @edac_device_create_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_device_create_instance(%struct.edac_device_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edac_device_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.edac_device_instance*, align 8
  %10 = alloca %struct.kobject*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %12 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %11, i32 0, i32 1
  %13 = load %struct.edac_device_instance*, %struct.edac_device_instance** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %13, i64 %15
  store %struct.edac_device_instance* %16, %struct.edac_device_instance** %9, align 8
  %17 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %18 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %17, i32 0, i32 2
  %19 = call i32 @memset(%struct.kobject* %18, i32 0, i32 4)
  %20 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %21 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %22 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %21, i32 0, i32 4
  store %struct.edac_device_ctl_info* %20, %struct.edac_device_ctl_info** %22, align 8
  %23 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %24 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %23, i32 0, i32 0
  %25 = call %struct.kobject* @kobject_get(i32* %24)
  store %struct.kobject* %25, %struct.kobject** %10, align 8
  %26 = load %struct.kobject*, %struct.kobject** %10, align 8
  %27 = icmp ne %struct.kobject* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %109

31:                                               ; preds = %2
  %32 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %33 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %32, i32 0, i32 2
  %34 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %35 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %34, i32 0, i32 0
  %36 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %37 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kobject_init_and_add(%struct.kobject* %33, i32* @ktype_instance_ctrl, i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %44 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.kobject*, %struct.kobject** %10, align 8
  %48 = call i32 @kobject_put(%struct.kobject* %47)
  br label %109

49:                                               ; preds = %31
  %50 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %51 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %92, %49
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %58 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %63 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %64 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %65 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @edac_device_create_block(%struct.edac_device_ctl_info* %62, %struct.edac_device_instance* %63, i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %80 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %81 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @edac_device_delete_block(%struct.edac_device_ctl_info* %79, i32* %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %74

90:                                               ; preds = %74
  br label %105

91:                                               ; preds = %61
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %55

95:                                               ; preds = %55
  %96 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %97 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %96, i32 0, i32 2
  %98 = load i32, i32* @KOBJ_ADD, align 4
  %99 = call i32 @kobject_uevent(%struct.kobject* %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %102 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %103)
  store i32 0, i32* %3, align 4
  br label %111

105:                                              ; preds = %90
  %106 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %107 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %106, i32 0, i32 2
  %108 = call i32 @kobject_put(%struct.kobject* %107)
  br label %109

109:                                              ; preds = %105, %42, %28
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %95
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @memset(%struct.kobject*, i32, i32) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local i32 @kobject_init_and_add(%struct.kobject*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @edac_device_create_block(%struct.edac_device_ctl_info*, %struct.edac_device_instance*, i32*) #1

declare dso_local i32 @edac_device_delete_block(%struct.edac_device_ctl_info*, i32*) #1

declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
