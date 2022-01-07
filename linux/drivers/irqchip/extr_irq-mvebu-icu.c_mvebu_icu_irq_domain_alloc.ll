; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i64* }
%struct.mvebu_icu_msi_data = type { %struct.TYPE_2__*, %struct.mvebu_icu* }
%struct.TYPE_2__ = type { i64 }
%struct.mvebu_icu = type { i32 }
%struct.mvebu_icu_irq_data = type { i64, %struct.mvebu_icu*, i32 }

@mvebu_icu_nsr_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to translate ICU parameters\0A\00", align 1
@legacy_bindings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to allocate ICU interrupt in parent domain\0A\00", align 1
@IRQCHIP_STATE_PENDING = common dso_local global i32 0, align 4
@ICU_GRP_SEI = common dso_local global i64 0, align 8
@mvebu_icu_sei_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to set the data to IRQ domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mvebu_icu_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_icu_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.irq_fwspec*, align 8
  %13 = alloca %struct.mvebu_icu_msi_data*, align 8
  %14 = alloca %struct.mvebu_icu*, align 8
  %15 = alloca %struct.mvebu_icu_irq_data*, align 8
  %16 = alloca %struct.irq_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %18, %struct.irq_fwspec** %12, align 8
  %19 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %20 = call %struct.mvebu_icu_msi_data* @platform_msi_get_host_data(%struct.irq_domain* %19)
  store %struct.mvebu_icu_msi_data* %20, %struct.mvebu_icu_msi_data** %13, align 8
  %21 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %13, align 8
  %22 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %21, i32 0, i32 1
  %23 = load %struct.mvebu_icu*, %struct.mvebu_icu** %22, align 8
  store %struct.mvebu_icu* %23, %struct.mvebu_icu** %14, align 8
  store %struct.irq_chip* @mvebu_icu_nsr_chip, %struct.irq_chip** %16, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mvebu_icu_irq_data* @kmalloc(i32 24, i32 %24)
  store %struct.mvebu_icu_irq_data* %25, %struct.mvebu_icu_irq_data** %15, align 8
  %26 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %27 = icmp ne %struct.mvebu_icu_irq_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %116

31:                                               ; preds = %4
  %32 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %33 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %34 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %35 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %34, i32 0, i32 2
  %36 = call i32 @mvebu_icu_irq_domain_translate(%struct.irq_domain* %32, %struct.irq_fwspec* %33, i64* %11, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.mvebu_icu*, %struct.mvebu_icu** %14, align 8
  %41 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %112

44:                                               ; preds = %31
  %45 = call i64 @static_branch_unlikely(i32* @legacy_bindings)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %49 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %54 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %63

55:                                               ; preds = %44
  %56 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %13, align 8
  %57 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %62 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.mvebu_icu*, %struct.mvebu_icu** %14, align 8
  %65 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %66 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %65, i32 0, i32 1
  store %struct.mvebu_icu* %64, %struct.mvebu_icu** %66, align 8
  %67 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @platform_msi_domain_alloc(%struct.irq_domain* %67, i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.mvebu_icu*, %struct.mvebu_icu** %14, align 8
  %75 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %112

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @IRQCHIP_STATE_PENDING, align 4
  %81 = call i32 @irq_set_irqchip_state(i32 %79, i32 %80, i32 0)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %107

85:                                               ; preds = %78
  %86 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %87 = getelementptr inbounds %struct.mvebu_icu_irq_data, %struct.mvebu_icu_irq_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ICU_GRP_SEI, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store %struct.irq_chip* @mvebu_icu_sei_chip, %struct.irq_chip** %16, align 8
  br label %92

92:                                               ; preds = %91, %85
  %93 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.irq_chip*, %struct.irq_chip** %16, align 8
  %97 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %98 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %93, i32 %94, i64 %95, %struct.irq_chip* %96, %struct.mvebu_icu_irq_data* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.mvebu_icu*, %struct.mvebu_icu** %14, align 8
  %103 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %107

106:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %116

107:                                              ; preds = %101, %84
  %108 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @platform_msi_domain_free(%struct.irq_domain* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %73, %39
  %113 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %15, align 8
  %114 = call i32 @kfree(%struct.mvebu_icu_irq_data* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %106, %28
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.mvebu_icu_msi_data* @platform_msi_get_host_data(%struct.irq_domain*) #1

declare dso_local %struct.mvebu_icu_irq_data* @kmalloc(i32, i32) #1

declare dso_local i32 @mvebu_icu_irq_domain_translate(%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @platform_msi_domain_alloc(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @irq_set_irqchip_state(i32, i32, i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, %struct.irq_chip*, %struct.mvebu_icu_irq_data*) #1

declare dso_local i32 @platform_msi_domain_free(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @kfree(%struct.mvebu_icu_irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
