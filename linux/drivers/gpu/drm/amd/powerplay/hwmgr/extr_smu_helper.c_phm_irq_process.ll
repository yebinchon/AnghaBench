; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i64, i64 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i64 0, align 8
@VISLANDS30_IV_SRCID_CG_TSS_THERMAL_LOW_TO_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"GPU over temperature range detected on PCIe %d:%d.%d!\0A\00", align 1
@VISLANDS30_IV_SRCID_CG_TSS_THERMAL_HIGH_TO_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"GPU under temperature range detected on PCIe %d:%d.%d!\0A\00", align 1
@VISLANDS30_IV_SRCID_GPIO_19 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"GPU Critical Temperature Fault detected on PCIe %d:%d.%d!\0A\00", align 1
@SOC15_IH_CLIENTID_THM = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_ROM_SMUIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_irq_process(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %9 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %10 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @AMDGPU_IRQ_CLIENTID_LEGACY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @VISLANDS30_IV_SRCID_CG_TSS_THERMAL_LOW_TO_HIGH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PCI_BUS_NUM(i32 %27)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PCI_SLOT(i32 %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PCI_FUNC(i32 %39)
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34, i32 %40)
  br label %92

42:                                               ; preds = %18
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @VISLANDS30_IV_SRCID_CG_TSS_THERMAL_HIGH_TO_LOW, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PCI_BUS_NUM(i32 %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PCI_SLOT(i32 %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PCI_FUNC(i32 %63)
  %65 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %58, i32 %64)
  br label %91

66:                                               ; preds = %42
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @VISLANDS30_IV_SRCID_GPIO_19, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PCI_BUS_NUM(i32 %75)
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PCI_SLOT(i32 %81)
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PCI_FUNC(i32 %87)
  %89 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %82, i32 %88)
  br label %90

90:                                               ; preds = %70, %66
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91, %22
  br label %167

93:                                               ; preds = %3
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @SOC15_IH_CLIENTID_THM, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %141

97:                                               ; preds = %93
  %98 = load i64, i64* %8, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PCI_BUS_NUM(i32 %105)
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @PCI_SLOT(i32 %111)
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PCI_FUNC(i32 %117)
  %119 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %112, i32 %118)
  br label %140

120:                                              ; preds = %97
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @PCI_BUS_NUM(i32 %125)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @PCI_SLOT(i32 %131)
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @PCI_FUNC(i32 %137)
  %139 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %132, i32 %138)
  br label %140

140:                                              ; preds = %120, %100
  br label %166

141:                                              ; preds = %93
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* @SOC15_IH_CLIENTID_ROM_SMUIO, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @PCI_BUS_NUM(i32 %150)
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @PCI_SLOT(i32 %156)
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @PCI_FUNC(i32 %162)
  %164 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %157, i32 %163)
  br label %165

165:                                              ; preds = %145, %141
  br label %166

166:                                              ; preds = %165, %140
  br label %167

167:                                              ; preds = %166, %92
  ret i32 0
}

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
