; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c___obtain_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c___obtain_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@fw_state = common dso_local global i64 0, align 8
@FW_FINAL = common dso_local global i64 0, align 8
@FW_ERR = common dso_local global i64 0, align 8
@FW_TRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"using alternate firmware names\0A\00", align 1
@fw_8051_load = common dso_local global i64 0, align 8
@fw_8051 = common dso_local global i32 0, align 4
@fw_fabric_serdes_load = common dso_local global i64 0, align 8
@fw_fabric = common dso_local global i32 0, align 4
@fw_sbus_load = common dso_local global i64 0, align 8
@fw_sbus = common dso_local global i32 0, align 4
@fw_pcie_serdes_load = common dso_local global i64 0, align 8
@fw_pcie = common dso_local global i32 0, align 4
@ALT_FW_8051_NAME_ASIC = common dso_local global i32 0, align 4
@fw_8051_name = common dso_local global i32 0, align 4
@ALT_FW_FABRIC_NAME = common dso_local global i32 0, align 4
@fw_fabric_serdes_name = common dso_local global i32 0, align 4
@ALT_FW_SBUS_NAME = common dso_local global i32 0, align 4
@fw_sbus_name = common dso_local global i32 0, align 4
@ALT_FW_PCIE_NAME = common dso_local global i32 0, align 4
@fw_pcie_serdes_name = common dso_local global i32 0, align 4
@FW_EMPTY = common dso_local global i64 0, align 8
@ICODE_RTL_SILICON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to obtain working firmware\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@fw_err = common dso_local global i32 0, align 4
@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @__obtain_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__obtain_firmware(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @fw_state, align 8
  %5 = load i64, i64* @FW_FINAL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %128

8:                                                ; preds = %1
  %9 = load i64, i64* @fw_state, align 8
  %10 = load i64, i64* @FW_ERR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %128

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %105, %13
  %15 = load i64, i64* @fw_state, align 8
  %16 = load i64, i64* @FW_TRY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = call i32 @dd_dev_warn(%struct.hfi1_devdata* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @cond_resched()
  %22 = load i64, i64* @fw_8051_load, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @dispose_one_firmware(i32* @fw_8051)
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i64, i64* @fw_fabric_serdes_load, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @dispose_one_firmware(i32* @fw_fabric)
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* @fw_sbus_load, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @dispose_one_firmware(i32* @fw_sbus)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* @fw_pcie_serdes_load, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @dispose_one_firmware(i32* @fw_pcie)
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* @ALT_FW_8051_NAME_ASIC, align 4
  store i32 %42, i32* @fw_8051_name, align 4
  %43 = load i32, i32* @ALT_FW_FABRIC_NAME, align 4
  store i32 %43, i32* @fw_fabric_serdes_name, align 4
  %44 = load i32, i32* @ALT_FW_SBUS_NAME, align 4
  store i32 %44, i32* @fw_sbus_name, align 4
  %45 = load i32, i32* @ALT_FW_PCIE_NAME, align 4
  store i32 %45, i32* @fw_pcie_serdes_name, align 4
  %46 = call i32 @usleep_range(i32 100, i32 120)
  br label %47

47:                                               ; preds = %41, %14
  %48 = load i64, i64* @fw_sbus_load, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %52 = load i32, i32* @fw_sbus_name, align 4
  %53 = call i32 @obtain_one_firmware(%struct.hfi1_devdata* %51, i32 %52, i32* @fw_sbus)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %92

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i64, i64* @fw_pcie_serdes_load, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %63 = load i32, i32* @fw_pcie_serdes_name, align 4
  %64 = call i32 @obtain_one_firmware(%struct.hfi1_devdata* %62, i32 %63, i32* @fw_pcie)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %92

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i64, i64* @fw_fabric_serdes_load, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %74 = load i32, i32* @fw_fabric_serdes_name, align 4
  %75 = call i32 @obtain_one_firmware(%struct.hfi1_devdata* %73, i32 %74, i32* @fw_fabric)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %92

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %69
  %81 = load i64, i64* @fw_8051_load, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %85 = load i32, i32* @fw_8051_name, align 4
  %86 = call i32 @obtain_one_firmware(%struct.hfi1_devdata* %84, i32 %85, i32* @fw_8051)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %92

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91, %89, %78, %67, %56
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load i64, i64* @fw_state, align 8
  %97 = load i64, i64* @FW_EMPTY, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %101 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ICODE_RTL_SILICON, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i64, i64* @FW_TRY, align 8
  store i64 %106, i64* @fw_state, align 8
  br label %14

107:                                              ; preds = %99, %95
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %109 = call i32 @dd_dev_err(%struct.hfi1_devdata* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i64, i64* @FW_ERR, align 8
  store i64 %110, i64* @fw_state, align 8
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* @fw_err, align 4
  br label %128

113:                                              ; preds = %92
  %114 = load i64, i64* @fw_state, align 8
  %115 = load i64, i64* @FW_EMPTY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %119 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i64, i64* @FW_TRY, align 8
  store i64 %124, i64* @fw_state, align 8
  br label %127

125:                                              ; preds = %117, %113
  %126 = load i64, i64* @FW_FINAL, align 8
  store i64 %126, i64* @fw_state, align 8
  br label %127

127:                                              ; preds = %125, %123
  br label %128

128:                                              ; preds = %7, %12, %127, %107
  ret void
}

declare dso_local i32 @dd_dev_warn(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dispose_one_firmware(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @obtain_one_firmware(%struct.hfi1_devdata*, i32, i32*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
