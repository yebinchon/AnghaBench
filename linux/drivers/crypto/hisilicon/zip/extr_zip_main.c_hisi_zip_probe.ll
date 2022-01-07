; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pci_device_id = type { i32 }
%struct.hisi_zip = type { %struct.hisi_qm }
%struct.hisi_qm = type { i32, i64, i32, i8*, i8*, i32, i32, %struct.pci_dev* }

@QM_HW_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZIP_SQE_SIZE = common dso_local global i32 0, align 4
@hisi_zip_name = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ZIP_PF = common dso_local global i64 0, align 8
@QM_HW_PF = common dso_local global i64 0, align 8
@QM_HW_VF = common dso_local global i64 0, align 8
@uacce_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to init qm!\0A\00", align 1
@HZIP_PF_DEF_Q_BASE = common dso_local global i8* null, align 8
@pf_q_num = common dso_local global i8* null, align 8
@QM_HW_V1 = common dso_local global i64 0, align 8
@HZIP_PF_DEF_Q_NUM = common dso_local global i8* null, align 8
@HZIP_QUEUE_NUM_V1 = common dso_local global i8* null, align 8
@QM_HW_V2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to init debugfs (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @hisi_zip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.hisi_zip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hisi_qm*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @hisi_qm_get_hw_version(%struct.pci_dev* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @QM_HW_UNKNOWN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %167

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.hisi_zip* @devm_kzalloc(i32* %20, i32 56, i32 %21)
  store %struct.hisi_zip* %22, %struct.hisi_zip** %6, align 8
  %23 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %24 = icmp ne %struct.hisi_zip* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %167

28:                                               ; preds = %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %31 = call i32 @pci_set_drvdata(%struct.pci_dev* %29, %struct.hisi_zip* %30)
  %32 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %33 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %32, i32 0, i32 0
  store %struct.hisi_qm* %33, %struct.hisi_qm** %8, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %36 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %35, i32 0, i32 7
  store %struct.pci_dev* %34, %struct.pci_dev** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %39 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @HZIP_SQE_SIZE, align 4
  %41 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %42 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @hisi_zip_name, align 4
  %44 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %45 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCI_DEVICE_ID_ZIP_PF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %28
  %52 = load i64, i64* @QM_HW_PF, align 8
  br label %55

53:                                               ; preds = %28
  %54 = load i64, i64* @QM_HW_VF, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %58 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @uacce_mode, align 4
  switch i32 %59, label %69 [
    i32 0, label %60
    i32 1, label %63
    i32 2, label %66
  ]

60:                                               ; preds = %55
  %61 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %62 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  br label %72

63:                                               ; preds = %55
  %64 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %65 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  br label %72

66:                                               ; preds = %55
  %67 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %68 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  br label %72

69:                                               ; preds = %55
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %167

72:                                               ; preds = %66, %63, %60
  %73 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %74 = call i32 @hisi_qm_init(%struct.hisi_qm* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 1
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %167

82:                                               ; preds = %72
  %83 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %84 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @QM_HW_PF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %90 = call i32 @hisi_zip_pf_probe_init(%struct.hisi_zip* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %167

95:                                               ; preds = %88
  %96 = load i8*, i8** @HZIP_PF_DEF_Q_BASE, align 8
  %97 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %98 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @pf_q_num, align 8
  %100 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %101 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  br label %144

102:                                              ; preds = %82
  %103 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %104 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @QM_HW_VF, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %102
  %109 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %110 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @QM_HW_V1, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i8*, i8** @HZIP_PF_DEF_Q_NUM, align 8
  %117 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %118 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** @HZIP_QUEUE_NUM_V1, align 8
  %120 = load i8*, i8** @HZIP_PF_DEF_Q_NUM, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %126 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  br label %142

127:                                              ; preds = %108
  %128 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %129 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* @QM_HW_V2, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %136 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %137 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %136, i32 0, i32 4
  %138 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %139 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %138, i32 0, i32 3
  %140 = call i32 @hisi_qm_get_vft(%struct.hisi_qm* %135, i8** %137, i8** %139)
  br label %141

141:                                              ; preds = %134, %127
  br label %142

142:                                              ; preds = %141, %115
  br label %143

143:                                              ; preds = %142, %102
  br label %144

144:                                              ; preds = %143, %95
  %145 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %146 = call i32 @hisi_qm_start(%struct.hisi_qm* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %163

150:                                              ; preds = %144
  %151 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %152 = call i32 @hisi_zip_debugfs_init(%struct.hisi_zip* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 1
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %155, %150
  %161 = load %struct.hisi_zip*, %struct.hisi_zip** %6, align 8
  %162 = call i32 @hisi_zip_add_to_list(%struct.hisi_zip* %161)
  store i32 0, i32* %3, align 4
  br label %167

163:                                              ; preds = %149
  %164 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %165 = call i32 @hisi_qm_uninit(%struct.hisi_qm* %164)
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %163, %160, %93, %77, %69, %25, %15
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @hisi_qm_get_hw_version(%struct.pci_dev*) #1

declare dso_local %struct.hisi_zip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.hisi_zip*) #1

declare dso_local i32 @hisi_qm_init(%struct.hisi_qm*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hisi_zip_pf_probe_init(%struct.hisi_zip*) #1

declare dso_local i32 @hisi_qm_get_vft(%struct.hisi_qm*, i8**, i8**) #1

declare dso_local i32 @hisi_qm_start(%struct.hisi_qm*) #1

declare dso_local i32 @hisi_zip_debugfs_init(%struct.hisi_zip*) #1

declare dso_local i32 @hisi_zip_add_to_list(%struct.hisi_zip*) #1

declare dso_local i32 @hisi_qm_uninit(%struct.hisi_qm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
