; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_misc_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_misc_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@CPT_VF_INTR_MBOX_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Mailbox interrupt 0x%llx on CPT VF %d\0A\00", align 1
@CPT_VF_INTR_DOVF_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Doorbell overflow error interrupt 0x%llx on CPT VF %d\0A\00", align 1
@CPT_VF_INTR_IRDE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Instruction NCB read error interrupt 0x%llx on CPT VF %d\0A\00", align 1
@CPT_VF_INTR_NWRP_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"NCB response write error interrupt 0x%llx on CPT VF %d\0A\00", align 1
@CPT_VF_INTR_SERR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Software error interrupt 0x%llx on CPT VF %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unhandled interrupt in CPT VF %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cptvf_misc_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cptvf_misc_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpt_vf*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cpt_vf*
  store %struct.cpt_vf* %9, %struct.cpt_vf** %5, align 8
  %10 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %11 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %14 = call i32 @cptvf_read_vf_misc_intr_status(%struct.cpt_vf* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @CPT_VF_INTR_MBOX_MASK, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %25 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %29 = call i32 @cptvf_handle_mbox_intr(%struct.cpt_vf* %28)
  %30 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %31 = call i32 @cptvf_clear_mbox_intr(%struct.cpt_vf* %30)
  br label %109

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @CPT_VF_INTR_DOVF_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %40 = call i32 @cptvf_clear_dovf_intr(%struct.cpt_vf* %39)
  %41 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %42 = call i32 @cptvf_write_vq_doorbell(%struct.cpt_vf* %41, i32 0)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %47 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  br label %108

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @CPT_VF_INTR_IRDE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %58 = call i32 @cptvf_clear_irde_intr(%struct.cpt_vf* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %63 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %64)
  br label %107

66:                                               ; preds = %50
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @CPT_VF_INTR_NWRP_MASK, align 4
  %69 = and i32 %67, %68
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %74 = call i32 @cptvf_clear_nwrp_intr(%struct.cpt_vf* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %79 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %80)
  br label %106

82:                                               ; preds = %66
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @CPT_VF_INTR_SERR_MASK, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %90 = call i32 @cptvf_clear_swerr_intr(%struct.cpt_vf* %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %95 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %96)
  br label %105

98:                                               ; preds = %82
  %99 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %102 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %98, %88
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %56
  br label %108

108:                                              ; preds = %107, %38
  br label %109

109:                                              ; preds = %108, %20
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %110
}

declare dso_local i32 @cptvf_read_vf_misc_intr_status(%struct.cpt_vf*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @cptvf_handle_mbox_intr(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_clear_mbox_intr(%struct.cpt_vf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cptvf_clear_dovf_intr(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_write_vq_doorbell(%struct.cpt_vf*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @cptvf_clear_irde_intr(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_clear_nwrp_intr(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_clear_swerr_intr(%struct.cpt_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
