; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sysfs.c_qib_create_port_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sysfs.c_qib_create_port_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.kobject = type { i32 }
%struct.qib_pportdata = type { i32, i32, i32, i32, i32 }
%struct.qib_devdata = type { i32, i32, i32, %struct.qib_pportdata* }

@.str = private unnamed_addr constant [48 x i8] c"Skipping infiniband class with invalid port %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@qib_port_ktype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"linkcontrol\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Skipping linkcontrol sysfs info, (err %d) port %u\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@qib_sl2vl_ktype = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"sl2vl\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Skipping sl2vl sysfs info, (err %d) port %u\0A\00", align 1
@qib_diagc_ktype = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"diag_counters\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Skipping diag_counters sysfs info, (err %d) port %u\0A\00", align 1
@qib_cc_table_size = common dso_local global i32 0, align 4
@qib_port_cc_ktype = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"CCMgtA\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Skipping Congestion Control sysfs info, (err %d) port %u\0A\00", align 1
@cc_setting_bin_attr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [66 x i8] c"Skipping Congestion Control setting sysfs info, (err %d) port %u\0A\00", align 1
@cc_table_bin_attr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [64 x i8] c"Skipping Congestion Control table sysfs info, (err %d) port %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"IB%u: Congestion Control Agent enabled for port %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_create_port_files(%struct.ib_device* %0, i32 %1, %struct.kobject* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.qib_pportdata*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kobject* %2, %struct.kobject** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %11)
  store %struct.qib_devdata* %12, %struct.qib_devdata** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15, %3
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %158

27:                                               ; preds = %15
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 3
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i64 %33
  store %struct.qib_pportdata* %34, %struct.qib_pportdata** %8, align 8
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 0
  %37 = load %struct.kobject*, %struct.kobject** %7, align 8
  %38 = call i32 @kobject_init_and_add(i32* %36, i32* @qib_port_ktype, %struct.kobject* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  br label %158

46:                                               ; preds = %27
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %48 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %47, i32 0, i32 0
  %49 = load i32, i32* @KOBJ_ADD, align 4
  %50 = call i32 @kobject_uevent(i32* %48, i32 %49)
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %52 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %51, i32 0, i32 1
  %53 = load %struct.kobject*, %struct.kobject** %7, align 8
  %54 = call i32 @kobject_init_and_add(i32* %52, i32* @qib_sl2vl_ktype, %struct.kobject* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %60)
  br label %154

62:                                               ; preds = %46
  %63 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %64 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %63, i32 0, i32 1
  %65 = load i32, i32* @KOBJ_ADD, align 4
  %66 = call i32 @kobject_uevent(i32* %64, i32 %65)
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %67, i32 0, i32 2
  %69 = load %struct.kobject*, %struct.kobject** %7, align 8
  %70 = call i32 @kobject_init_and_add(i32* %68, i32* @qib_diagc_ktype, %struct.kobject* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %76)
  br label %150

78:                                               ; preds = %62
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %80 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %79, i32 0, i32 2
  %81 = load i32, i32* @KOBJ_ADD, align 4
  %82 = call i32 @kobject_uevent(i32* %80, i32 %81)
  %83 = load i32, i32* @qib_cc_table_size, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %87 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85, %78
  store i32 0, i32* %4, align 4
  br label %160

91:                                               ; preds = %85
  %92 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %93 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %92, i32 0, i32 3
  %94 = load %struct.kobject*, %struct.kobject** %7, align 8
  %95 = call i32 @kobject_init_and_add(i32* %93, i32* @qib_port_cc_ktype, %struct.kobject* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %99, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %100, i32 %101)
  br label %146

103:                                              ; preds = %91
  %104 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %105 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %104, i32 0, i32 3
  %106 = load i32, i32* @KOBJ_ADD, align 4
  %107 = call i32 @kobject_uevent(i32* %105, i32 %106)
  %108 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %109 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %108, i32 0, i32 3
  %110 = call i32 @sysfs_create_bin_file(i32* %109, i32* @cc_setting_bin_attr)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %114, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i32 %115, i32 %116)
  br label %142

118:                                              ; preds = %103
  %119 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %120 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %119, i32 0, i32 3
  %121 = call i32 @sysfs_create_bin_file(i32* %120, i32* @cc_table_bin_attr)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %125, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i32 %126, i32 %127)
  br label %138

129:                                              ; preds = %118
  %130 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %131 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %134 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @qib_devinfo(i32 %132, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %135, i32 %136)
  store i32 0, i32* %4, align 4
  br label %160

138:                                              ; preds = %124
  %139 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %140 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %139, i32 0, i32 3
  %141 = call i32 @sysfs_remove_bin_file(i32* %140, i32* @cc_setting_bin_attr)
  br label %142

142:                                              ; preds = %138, %113
  %143 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %144 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %143, i32 0, i32 3
  %145 = call i32 @kobject_put(i32* %144)
  br label %146

146:                                              ; preds = %142, %98
  %147 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %148 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %147, i32 0, i32 2
  %149 = call i32 @kobject_put(i32* %148)
  br label %150

150:                                              ; preds = %146, %73
  %151 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %152 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %151, i32 0, i32 1
  %153 = call i32 @kobject_put(i32* %152)
  br label %154

154:                                              ; preds = %150, %57
  %155 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %156 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %155, i32 0, i32 0
  %157 = call i32 @kobject_put(i32* %156)
  br label %158

158:                                              ; preds = %154, %41, %21
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %129, %90
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, ...) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, %struct.kobject*, i8*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32, i32) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
