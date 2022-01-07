; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sysfs.c_hfi1_create_port_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sysfs.c_hfi1_create_port_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.kobject = type { i32 }
%struct.hfi1_pportdata = type { i32, i32, i32, i32 }
%struct.hfi1_devdata = type { i32, %struct.hfi1_pportdata* }

@.str = private unnamed_addr constant [48 x i8] c"Skipping infiniband class with invalid port %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@hfi1_sc2vl_ktype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"sc2vl\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Skipping sc2vl sysfs info, (err %d) port %u\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@hfi1_sl2sc_ktype = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"sl2sc\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Skipping sl2sc sysfs info, (err %d) port %u\0A\00", align 1
@hfi1_vl2mtu_ktype = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"vl2mtu\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Skipping vl2mtu sysfs info, (err %d) port %u\0A\00", align 1
@port_cc_ktype = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"CCMgtA\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Skipping Congestion Control sysfs info, (err %d) port %u\0A\00", align 1
@cc_setting_bin_attr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [66 x i8] c"Skipping Congestion Control setting sysfs info, (err %d) port %u\0A\00", align 1
@cc_table_bin_attr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [64 x i8] c"Skipping Congestion Control table sysfs info, (err %d) port %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Congestion Control Agent enabled for port %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_create_port_files(%struct.ib_device* %0, i32 %1, %struct.kobject* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.hfi1_pportdata*, align 8
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kobject* %2, %struct.kobject** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %11)
  store %struct.hfi1_devdata* %12, %struct.hfi1_devdata** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15, %3
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %146

27:                                               ; preds = %15
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 1
  %30 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %30, i64 %33
  store %struct.hfi1_pportdata* %34, %struct.hfi1_pportdata** %8, align 8
  %35 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %36 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %35, i32 0, i32 0
  %37 = load %struct.kobject*, %struct.kobject** %7, align 8
  %38 = call i32 @kobject_init_and_add(i32* %36, i32* @hfi1_sc2vl_ktype, %struct.kobject* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  br label %144

46:                                               ; preds = %27
  %47 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %48 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %47, i32 0, i32 0
  %49 = load i32, i32* @KOBJ_ADD, align 4
  %50 = call i32 @kobject_uevent(i32* %48, i32 %49)
  %51 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %52 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %51, i32 0, i32 1
  %53 = load %struct.kobject*, %struct.kobject** %7, align 8
  %54 = call i32 @kobject_init_and_add(i32* %52, i32* @hfi1_sl2sc_ktype, %struct.kobject* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %60)
  br label %140

62:                                               ; preds = %46
  %63 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %64 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %63, i32 0, i32 1
  %65 = load i32, i32* @KOBJ_ADD, align 4
  %66 = call i32 @kobject_uevent(i32* %64, i32 %65)
  %67 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %68 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %67, i32 0, i32 2
  %69 = load %struct.kobject*, %struct.kobject** %7, align 8
  %70 = call i32 @kobject_init_and_add(i32* %68, i32* @hfi1_vl2mtu_ktype, %struct.kobject* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %76)
  br label %136

78:                                               ; preds = %62
  %79 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %80 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %79, i32 0, i32 2
  %81 = load i32, i32* @KOBJ_ADD, align 4
  %82 = call i32 @kobject_uevent(i32* %80, i32 %81)
  %83 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %84 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %83, i32 0, i32 3
  %85 = load %struct.kobject*, %struct.kobject** %7, align 8
  %86 = call i32 @kobject_init_and_add(i32* %84, i32* @port_cc_ktype, %struct.kobject* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %90, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %91, i32 %92)
  br label %132

94:                                               ; preds = %78
  %95 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %96 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %95, i32 0, i32 3
  %97 = load i32, i32* @KOBJ_ADD, align 4
  %98 = call i32 @kobject_uevent(i32* %96, i32 %97)
  %99 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %100 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %99, i32 0, i32 3
  %101 = call i32 @sysfs_create_bin_file(i32* %100, i32* @cc_setting_bin_attr)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %105, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i32 %106, i32 %107)
  br label %128

109:                                              ; preds = %94
  %110 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %111 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %110, i32 0, i32 3
  %112 = call i32 @sysfs_create_bin_file(i32* %111, i32* @cc_table_bin_attr)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %116, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i32 %117, i32 %118)
  br label %124

120:                                              ; preds = %109
  %121 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @dd_dev_info(%struct.hfi1_devdata* %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %122)
  store i32 0, i32* %4, align 4
  br label %146

124:                                              ; preds = %115
  %125 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %126 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %125, i32 0, i32 3
  %127 = call i32 @sysfs_remove_bin_file(i32* %126, i32* @cc_setting_bin_attr)
  br label %128

128:                                              ; preds = %124, %104
  %129 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %130 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %129, i32 0, i32 3
  %131 = call i32 @kobject_put(i32* %130)
  br label %132

132:                                              ; preds = %128, %89
  %133 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %134 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %133, i32 0, i32 2
  %135 = call i32 @kobject_put(i32* %134)
  br label %136

136:                                              ; preds = %132, %73
  %137 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %138 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %137, i32 0, i32 1
  %139 = call i32 @kobject_put(i32* %138)
  br label %140

140:                                              ; preds = %136, %57
  %141 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %142 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %141, i32 0, i32 0
  %143 = call i32 @kobject_put(i32* %142)
  br label %144

144:                                              ; preds = %140, %41
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %120, %21
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, ...) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, %struct.kobject*, i8*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
