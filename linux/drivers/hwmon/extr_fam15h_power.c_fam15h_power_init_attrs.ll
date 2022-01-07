; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_fam15h_power_init_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_fam15h_power_init_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_7__ = type { %struct.attribute }
%struct.TYPE_10__ = type { %struct.attribute }
%struct.TYPE_9__ = type { %struct.attribute }
%struct.pci_dev = type { i32 }
%struct.fam15h_power_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.attribute** }

@FAM15H_MIN_NUM_ATTRS = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@X86_FEATURE_ACC_POWER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_power1_crit = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dev_attr_power1_input = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@dev_attr_power1_average = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@dev_attr_power1_average_interval = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.fam15h_power_data*)* @fam15h_power_init_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fam15h_power_init_attrs(%struct.pci_dev* %0, %struct.fam15h_power_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.fam15h_power_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attribute**, align 8
  %8 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %5, align 8
  %9 = load i32, i32* @FAM15H_MIN_NUM_ATTRS, align 4
  store i32 %9, i32* %6, align 4
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %8, align 8
  %10 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %11 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 21
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %16 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 15
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 96
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %26 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 127
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %14
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %24, %19, %2
  %33 = load i32, i32* @X86_FEATURE_ACC_POWER, align 4
  %34 = call i64 @boot_cpu_has(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.attribute** @devm_kcalloc(i32* %41, i32 %42, i32 8, i32 %43)
  store %struct.attribute** %44, %struct.attribute*** %7, align 8
  %45 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %46 = icmp ne %struct.attribute** %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %101

50:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  %51 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.attribute*, %struct.attribute** %51, i64 %54
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dev_attr_power1_crit, i32 0, i32 0), %struct.attribute** %55, align 8
  %56 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %57 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 21
  br i1 %59, label %60, label %81

60:                                               ; preds = %50
  %61 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %62 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %63, 15
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %67 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 96
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %8, align 8
  %72 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sle i32 %73, 127
  br i1 %74, label %75, label %81

75:                                               ; preds = %70, %60
  %76 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.attribute*, %struct.attribute** %76, i64 %79
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev_attr_power1_input, i32 0, i32 0), %struct.attribute** %80, align 8
  br label %81

81:                                               ; preds = %75, %70, %65, %50
  %82 = load i32, i32* @X86_FEATURE_ACC_POWER, align 4
  %83 = call i64 @boot_cpu_has(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.attribute*, %struct.attribute** %86, i64 %89
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_attr_power1_average, i32 0, i32 0), %struct.attribute** %90, align 8
  %91 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.attribute*, %struct.attribute** %91, i64 %94
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dev_attr_power1_average_interval, i32 0, i32 0), %struct.attribute** %95, align 8
  br label %96

96:                                               ; preds = %85, %81
  %97 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %98 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %99 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store %struct.attribute** %97, %struct.attribute*** %100, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %47
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local %struct.attribute** @devm_kcalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
