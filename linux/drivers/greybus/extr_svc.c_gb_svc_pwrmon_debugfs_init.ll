; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_pwrmon_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_pwrmon_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { %struct.svc_debugfs_pwrmon_rail*, %struct.dentry* }
%struct.svc_debugfs_pwrmon_rail = type { i32, %struct.gb_svc*, i32* }
%struct.dentry = type { i32 }
%struct.gb_svc_pwrmon_rail_names_get_response = type { i32, %struct.gb_svc*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"pwrmon\00", align 1
@GB_SVC_PWRMON_MAX_RAIL_COUNT = common dso_local global i32 0, align 4
@GB_SVC_PWRMON_RAIL_NAME_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"voltage_now\00", align 1
@pwrmon_debugfs_voltage_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"current_now\00", align 1
@pwrmon_debugfs_current_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"power_now\00", align 1
@pwrmon_debugfs_power_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_svc*)* @gb_svc_pwrmon_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_svc_pwrmon_debugfs_init(%struct.gb_svc* %0) #0 {
  %2 = alloca %struct.gb_svc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.gb_svc_pwrmon_rail_names_get_response*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.svc_debugfs_pwrmon_rail*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.gb_svc* %0, %struct.gb_svc** %2, align 8
  %12 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %13 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %12, i32 0, i32 1
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  %15 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %128

20:                                               ; preds = %1
  %21 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %22 = call i64 @gb_svc_pwrmon_rail_count_get(%struct.gb_svc* %21, i32* %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %125

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GB_SVC_PWRMON_MAX_RAIL_COUNT, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  br label %125

33:                                               ; preds = %28
  %34 = load i32, i32* @GB_SVC_PWRMON_RAIL_NAME_BUFSIZE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 24, %37
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.svc_debugfs_pwrmon_rail* @kzalloc(i64 %39, i32 %40)
  %42 = bitcast %struct.svc_debugfs_pwrmon_rail* %41 to %struct.gb_svc_pwrmon_rail_names_get_response*
  store %struct.gb_svc_pwrmon_rail_names_get_response* %42, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %43 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %44 = icmp ne %struct.gb_svc_pwrmon_rail_names_get_response* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %125

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.svc_debugfs_pwrmon_rail* @kcalloc(i32 %47, i32 24, i32 %48)
  %50 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %51 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %50, i32 0, i32 0
  store %struct.svc_debugfs_pwrmon_rail* %49, %struct.svc_debugfs_pwrmon_rail** %51, align 8
  %52 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %53 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %52, i32 0, i32 0
  %54 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %53, align 8
  %55 = icmp ne %struct.svc_debugfs_pwrmon_rail* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %115

57:                                               ; preds = %46
  %58 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %59 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %60 = bitcast %struct.gb_svc_pwrmon_rail_names_get_response* %59 to %struct.svc_debugfs_pwrmon_rail*
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @gb_svc_pwrmon_rail_names_get(%struct.gb_svc* %58, %struct.svc_debugfs_pwrmon_rail* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %115

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %108, %65
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %66
  %71 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %72 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %71, i32 0, i32 0
  %73 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.svc_debugfs_pwrmon_rail, %struct.svc_debugfs_pwrmon_rail* %73, i64 %75
  store %struct.svc_debugfs_pwrmon_rail* %76, %struct.svc_debugfs_pwrmon_rail** %9, align 8
  %77 = load i32, i32* @GB_SVC_PWRMON_RAIL_NAME_BUFSIZE, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %10, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %11, align 8
  %81 = trunc i64 %78 to i32
  %82 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %83 = getelementptr inbounds %struct.gb_svc_pwrmon_rail_names_get_response, %struct.gb_svc_pwrmon_rail_names_get_response* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i32* %87 to i8*
  %89 = call i32 @snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %9, align 8
  %92 = getelementptr inbounds %struct.svc_debugfs_pwrmon_rail, %struct.svc_debugfs_pwrmon_rail* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %94 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %9, align 8
  %95 = getelementptr inbounds %struct.svc_debugfs_pwrmon_rail, %struct.svc_debugfs_pwrmon_rail* %94, i32 0, i32 1
  store %struct.gb_svc* %93, %struct.gb_svc** %95, align 8
  %96 = load %struct.dentry*, %struct.dentry** %5, align 8
  %97 = call %struct.dentry* @debugfs_create_dir(i8* %80, %struct.dentry* %96)
  store %struct.dentry* %97, %struct.dentry** %8, align 8
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %9, align 8
  %100 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %98, %struct.svc_debugfs_pwrmon_rail* %99, i32* @pwrmon_debugfs_voltage_fops)
  %101 = load %struct.dentry*, %struct.dentry** %8, align 8
  %102 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %9, align 8
  %103 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 292, %struct.dentry* %101, %struct.svc_debugfs_pwrmon_rail* %102, i32* @pwrmon_debugfs_current_fops)
  %104 = load %struct.dentry*, %struct.dentry** %8, align 8
  %105 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %9, align 8
  %106 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 292, %struct.dentry* %104, %struct.svc_debugfs_pwrmon_rail* %105, i32* @pwrmon_debugfs_power_fops)
  %107 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %107)
  br label %108

108:                                              ; preds = %70
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %66

111:                                              ; preds = %66
  %112 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %113 = bitcast %struct.gb_svc_pwrmon_rail_names_get_response* %112 to %struct.svc_debugfs_pwrmon_rail*
  %114 = call i32 @kfree(%struct.svc_debugfs_pwrmon_rail* %113)
  br label %128

115:                                              ; preds = %64, %56
  %116 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %117 = bitcast %struct.gb_svc_pwrmon_rail_names_get_response* %116 to %struct.svc_debugfs_pwrmon_rail*
  %118 = call i32 @kfree(%struct.svc_debugfs_pwrmon_rail* %117)
  %119 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %120 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %119, i32 0, i32 0
  %121 = load %struct.svc_debugfs_pwrmon_rail*, %struct.svc_debugfs_pwrmon_rail** %120, align 8
  %122 = call i32 @kfree(%struct.svc_debugfs_pwrmon_rail* %121)
  %123 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %124 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %123, i32 0, i32 0
  store %struct.svc_debugfs_pwrmon_rail* null, %struct.svc_debugfs_pwrmon_rail** %124, align 8
  br label %125

125:                                              ; preds = %115, %45, %32, %24
  %126 = load %struct.dentry*, %struct.dentry** %5, align 8
  %127 = call i32 @debugfs_remove(%struct.dentry* %126)
  br label %128

128:                                              ; preds = %125, %111, %19
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i64 @gb_svc_pwrmon_rail_count_get(%struct.gb_svc*, i32*) #1

declare dso_local %struct.svc_debugfs_pwrmon_rail* @kzalloc(i64, i32) #1

declare dso_local %struct.svc_debugfs_pwrmon_rail* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @gb_svc_pwrmon_rail_names_get(%struct.gb_svc*, %struct.svc_debugfs_pwrmon_rail*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.svc_debugfs_pwrmon_rail*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @kfree(%struct.svc_debugfs_pwrmon_rail*) #1

declare dso_local i32 @debugfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
