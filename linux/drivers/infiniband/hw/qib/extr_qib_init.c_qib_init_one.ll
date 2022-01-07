; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.qib_devdata = type { i32, i64, i32 (i64)*, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Intel PCIE device 0x%x cannot work if CONFIG_PCI_MSI is not enabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failing on unknown Intel deviceid 0x%x\0A\00", align 1
@qib_mini_init = common dso_local global i64 0, align 8
@QIB_INITTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to create /dev devices: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed filesystem setup for counters: %d\0A\00", align 1
@ib_wq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"Write combining not enabled (err %d): performance may be poor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @qib_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_devdata*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  store %struct.qib_devdata* null, %struct.qib_devdata** %9, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %12 = call i32 @qib_pcie_init(%struct.pci_dev* %10, %struct.pci_device_id* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %176

16:                                               ; preds = %2
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %18 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 130, label %20
    i32 129, label %30
    i32 128, label %34
  ]

20:                                               ; preds = %16
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qib_early_err(i32* %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.qib_devdata* @ERR_PTR(i32 %28)
  store %struct.qib_devdata* %29, %struct.qib_devdata** %9, align 8
  br label %47

30:                                               ; preds = %16
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %33 = call %struct.qib_devdata* @qib_init_iba7220_funcs(%struct.pci_dev* %31, %struct.pci_device_id* %32)
  store %struct.qib_devdata* %33, %struct.qib_devdata** %9, align 8
  br label %47

34:                                               ; preds = %16
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %37 = call %struct.qib_devdata* @qib_init_iba7322_funcs(%struct.pci_dev* %35, %struct.pci_device_id* %36)
  store %struct.qib_devdata* %37, %struct.qib_devdata** %9, align 8
  br label %47

38:                                               ; preds = %16
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %42 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qib_early_err(i32* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %38, %34, %30, %20
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %49 = call i64 @IS_ERR(%struct.qib_devdata* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %53 = call i32 @PTR_ERR(%struct.qib_devdata* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %176

58:                                               ; preds = %54
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %60 = call i32 @qib_create_workqueues(%struct.qib_devdata* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %176

64:                                               ; preds = %58
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %66 = call i32 @qib_init(%struct.qib_devdata* %65, i32 0)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %68 = call i32 @qib_register_ib_device(%struct.qib_devdata* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i64, i64* @qib_mini_init, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @QIB_INITTED, align 4
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %80 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %74, %71, %64
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %85 = call i32 @qib_device_create(%struct.qib_devdata* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i32 @qib_dev_err(%struct.qib_devdata* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %95 = call i32 @qibfs_add(%struct.qib_devdata* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i32 @qib_dev_err(%struct.qib_devdata* %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i64, i64* @qib_mini_init, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %163

112:                                              ; preds = %109, %106, %103
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %114 = call i32 @qib_stop_timers(%struct.qib_devdata* %113)
  %115 = load i32, i32* @ib_wq, align 4
  %116 = call i32 @flush_workqueue(i32 %115)
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %134, %112
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %120 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %125 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %124, i32 0, i32 2
  %126 = load i32 (i64)*, i32 (i64)** %125, align 8
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %128 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = call i32 %126(i64 %132)
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %117

137:                                              ; preds = %117
  %138 = load i64, i64* @qib_mini_init, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %176

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %146 = call i32 @qibfs_remove(%struct.qib_devdata* %145)
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %148 = call i32 @qib_device_remove(%struct.qib_devdata* %147)
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %154 = call i32 @qib_unregister_ib_device(%struct.qib_devdata* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %157 = call i32 @qib_postinit_cleanup(%struct.qib_devdata* %156)
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %155
  br label %176

163:                                              ; preds = %109
  %164 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %165 = call i32 @qib_enable_wc(%struct.qib_devdata* %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sub nsw i32 0, %170
  %172 = call i32 @qib_dev_err(%struct.qib_devdata* %169, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %175 = call i32 @qib_verify_pioperf(%struct.qib_devdata* %174)
  br label %176

176:                                              ; preds = %173, %162, %140, %63, %57, %15
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @qib_pcie_init(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @qib_early_err(i32*, i8*, i32) #1

declare dso_local %struct.qib_devdata* @ERR_PTR(i32) #1

declare dso_local %struct.qib_devdata* @qib_init_iba7220_funcs(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local %struct.qib_devdata* @qib_init_iba7322_funcs(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i64 @IS_ERR(%struct.qib_devdata*) #1

declare dso_local i32 @PTR_ERR(%struct.qib_devdata*) #1

declare dso_local i32 @qib_create_workqueues(%struct.qib_devdata*) #1

declare dso_local i32 @qib_init(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_register_ib_device(%struct.qib_devdata*) #1

declare dso_local i32 @qib_device_create(%struct.qib_devdata*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @qibfs_add(%struct.qib_devdata*) #1

declare dso_local i32 @qib_stop_timers(%struct.qib_devdata*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @qibfs_remove(%struct.qib_devdata*) #1

declare dso_local i32 @qib_device_remove(%struct.qib_devdata*) #1

declare dso_local i32 @qib_unregister_ib_device(%struct.qib_devdata*) #1

declare dso_local i32 @qib_postinit_cleanup(%struct.qib_devdata*) #1

declare dso_local i32 @qib_enable_wc(%struct.qib_devdata*) #1

declare dso_local i32 @qib_verify_pioperf(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
