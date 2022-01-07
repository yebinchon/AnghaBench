; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_irq_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_irq_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i32, i64* }
%struct.mvebu_icu_msi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvebu_icu = type { i32 }

@legacy_bindings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wrong ICU parameter count %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@ICU_GRP_NSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"wrong ICU group type %x\0A\00", align 1
@ICU_GRP_SEI = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@ICU_MAX_IRQS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid interrupt number %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @mvebu_icu_irq_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_icu_irq_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mvebu_icu_msi_data*, align 8
  %11 = alloca %struct.mvebu_icu*, align 8
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %14 = call i8* @platform_msi_get_host_data(%struct.irq_domain* %13)
  %15 = bitcast i8* %14 to %struct.mvebu_icu_msi_data*
  store %struct.mvebu_icu_msi_data* %15, %struct.mvebu_icu_msi_data** %10, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %17 = call i8* @platform_msi_get_host_data(%struct.irq_domain* %16)
  %18 = bitcast i8* %17 to %struct.mvebu_icu*
  store %struct.mvebu_icu* %18, %struct.mvebu_icu** %11, align 8
  %19 = call i64 @static_branch_unlikely(i32* @legacy_bindings)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 3, i32 2
  store i32 %22, i32* %12, align 4
  %23 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %24 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %4
  %32 = load %struct.mvebu_icu*, %struct.mvebu_icu** %11, align 8
  %33 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %36 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %126

42:                                               ; preds = %4
  %43 = call i64 @static_branch_unlikely(i32* @legacy_bindings)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %47 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %53 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %58 = zext i32 %57 to i64
  %59 = and i64 %56, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %63 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @ICU_GRP_NSR, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %45
  %71 = load %struct.mvebu_icu*, %struct.mvebu_icu** %11, align 8
  %72 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %75 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %126

82:                                               ; preds = %45
  br label %111

83:                                               ; preds = %42
  %84 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %85 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  %90 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %91 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %96 = zext i32 %95 to i64
  %97 = and i64 %94, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %10, align 8
  %101 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ICU_GRP_SEI, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %83
  %108 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %83
  br label %111

111:                                              ; preds = %110, %82
  %112 = load i64*, i64** %8, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ICU_MAX_IRQS, align 8
  %115 = icmp uge i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.mvebu_icu*, %struct.mvebu_icu** %11, align 8
  %118 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64*, i64** %8, align 8
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %126

125:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %116, %70, %31
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i8* @platform_msi_get_host_data(%struct.irq_domain*) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
