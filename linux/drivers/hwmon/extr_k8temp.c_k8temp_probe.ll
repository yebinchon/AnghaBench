; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_k8temp.c_k8temp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_k8temp.c_k8temp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.k8temp_data = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Temperature readouts might be wrong - check erratum #141\0A\00", align 1
@REG_TEMP = common dso_local global i32 0, align 4
@SEL_PLACE = common dso_local global i32 0, align 4
@SEL_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Configuration bit(s) stuck at 1!\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"k8temp\00", align 1
@k8temp_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @k8temp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k8temp_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.k8temp_data*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.k8temp_data* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.k8temp_data* %15, %struct.k8temp_data** %10, align 8
  %16 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %17 = icmp ne %struct.k8temp_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %172

21:                                               ; preds = %2
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %26
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %172

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 64
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %43 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @is_rev_g_desktop(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %53 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %52, i32 0, i32 1
  store i32 21000, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load i32, i32* @REG_TEMP, align 4
  %57 = call i32 @pci_read_config_byte(%struct.pci_dev* %55, i32 %56, i32* %6)
  %58 = load i32, i32* @SEL_PLACE, align 4
  %59 = load i32, i32* @SEL_CORE, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* @REG_TEMP, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @pci_write_config_byte(%struct.pci_dev* %64, i32 %65, i32 %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = load i32, i32* @REG_TEMP, align 4
  %70 = call i32 @pci_read_config_byte(%struct.pci_dev* %68, i32 %69, i32* %6)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SEL_PLACE, align 4
  %73 = load i32, i32* @SEL_CORE, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %54
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %172

83:                                               ; preds = %54
  %84 = load i32, i32* @SEL_PLACE, align 4
  %85 = load i32, i32* @SEL_CORE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* @REG_TEMP, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* @REG_TEMP, align 4
  %95 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %96 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %95, i32 0, i32 2
  %97 = call i32 @pci_read_config_byte(%struct.pci_dev* %93, i32 %94, i32* %96)
  %98 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %99 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SEL_PLACE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %83
  %105 = load i32, i32* @SEL_CORE, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = load i32, i32* @REG_TEMP, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @pci_write_config_byte(%struct.pci_dev* %109, i32 %110, i32 %111)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = load i32, i32* @REG_TEMP, align 4
  %115 = call i32 @pci_read_config_dword(%struct.pci_dev* %113, i32 %114, i32* %7)
  %116 = load i32, i32* @SEL_CORE, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %104
  %124 = load i32, i32* @SEL_PLACE, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %127 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %123, %104
  br label %131

131:                                              ; preds = %130, %83
  %132 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %133 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SEL_CORE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %131
  %139 = load i32, i32* @SEL_PLACE, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %6, align 4
  %143 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %144 = load i32, i32* @REG_TEMP, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @pci_write_config_byte(%struct.pci_dev* %143, i32 %144, i32 %145)
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = load i32, i32* @REG_TEMP, align 4
  %149 = call i32 @pci_read_config_dword(%struct.pci_dev* %147, i32 %148, i32* %7)
  %150 = load i32, i32* %7, align 4
  %151 = ashr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %138
  %155 = load i32, i32* @SEL_CORE, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %158 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %154, %138
  br label %162

162:                                              ; preds = %161, %131
  %163 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %164 = getelementptr inbounds %struct.k8temp_data, %struct.k8temp_data* %163, i32 0, i32 3
  %165 = call i32 @mutex_init(i32* %164)
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = load %struct.k8temp_data*, %struct.k8temp_data** %10, align 8
  %169 = call %struct.device* @devm_hwmon_device_register_with_info(i32* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.k8temp_data* %168, i32* @k8temp_chip_info, i32* null)
  store %struct.device* %169, %struct.device** %11, align 8
  %170 = load %struct.device*, %struct.device** %11, align 8
  %171 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %170)
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %162, %77, %35, %18
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.k8temp_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @is_rev_g_desktop(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(i32*, i8*, %struct.k8temp_data*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
