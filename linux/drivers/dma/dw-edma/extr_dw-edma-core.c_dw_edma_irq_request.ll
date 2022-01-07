; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_irq_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_irq_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_edma_chip = type { %struct.dw_edma*, %struct.device* }
%struct.dw_edma = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dw_edma_interrupt_common = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@dw_edma_interrupt_write = common dso_local global i32 0, align 4
@dw_edma_interrupt_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_edma_chip*, i64*, i64*)* @dw_edma_irq_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_edma_irq_request(%struct.dw_edma_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_edma_chip*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dw_edma*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dw_edma_chip* %0, %struct.dw_edma_chip** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.dw_edma_chip*, %struct.dw_edma_chip** %5, align 8
  %17 = getelementptr inbounds %struct.dw_edma_chip, %struct.dw_edma_chip* %16, i32 0, i32 1
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.dw_edma_chip*, %struct.dw_edma_chip** %5, align 8
  %20 = getelementptr inbounds %struct.dw_edma_chip, %struct.dw_edma_chip* %19, i32 0, i32 0
  %21 = load %struct.dw_edma*, %struct.dw_edma** %20, align 8
  store %struct.dw_edma* %21, %struct.dw_edma** %9, align 8
  store i64 1, i64* %10, align 8
  store i64 1, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %23 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %26 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %14, align 8
  %29 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %30 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %177

36:                                               ; preds = %3
  %37 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %38 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %71

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = call i32 @to_pci_dev(%struct.device* %42)
  %44 = call i32 @pci_irq_vector(i32 %43, i32 0)
  %45 = load i32, i32* @dw_edma_interrupt_common, align 4
  %46 = load i32, i32* @IRQF_SHARED, align 4
  %47 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %48 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %51 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = call i32 @request_irq(i32 %44, i32 %45, i32 %46, i32 %49, %struct.TYPE_2__* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %59 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %177

61:                                               ; preds = %41
  %62 = load %struct.device*, %struct.device** %8, align 8
  %63 = call i32 @to_pci_dev(%struct.device* %62)
  %64 = call i32 @pci_irq_vector(i32 %63, i32 0)
  %65 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %66 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @get_cached_msi_msg(i32 %64, i32* %69)
  br label %175

71:                                               ; preds = %36
  %72 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %73 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %88, %71
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %80, %82
  %84 = load i64, i64* %14, align 8
  %85 = icmp slt i64 %83, %84
  br label %86

86:                                               ; preds = %78, %75
  %87 = phi i1 [ false, %75 ], [ %85, %78 ]
  br i1 %87, label %88, label %99

88:                                               ; preds = %86
  %89 = load i64*, i64** %6, align 8
  %90 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %91 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dw_edma_dec_irq_alloc(i32* %15, i64* %89, i64 %92)
  %94 = load i64*, i64** %7, align 8
  %95 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %96 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @dw_edma_dec_irq_alloc(i32* %15, i64* %94, i64 %97)
  br label %75

99:                                               ; preds = %86
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %103 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @dw_edma_add_irq_mask(i64* %10, i64 %101, i64 %104)
  %106 = load i64*, i64** %7, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %109 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @dw_edma_add_irq_mask(i64* %11, i64 %107, i64 %110)
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %168, %99
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** %6, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %7, align 8
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %116, %118
  %120 = icmp slt i64 %114, %119
  br i1 %120, label %121, label %171

121:                                              ; preds = %112
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = call i32 @to_pci_dev(%struct.device* %122)
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @pci_irq_vector(i32 %123, i32 %124)
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64*, i64** %6, align 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* @dw_edma_interrupt_write, align 4
  br label %135

133:                                              ; preds = %121
  %134 = load i32, i32* @dw_edma_interrupt_read, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = load i32, i32* @IRQF_SHARED, align 4
  %138 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %139 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %142 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %141, i32 0, i32 3
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = call i32 @request_irq(i32 %125, i32 %136, i32 %137, i32 %140, %struct.TYPE_2__* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %135
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %153 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %4, align 4
  br label %177

155:                                              ; preds = %135
  %156 = load %struct.device*, %struct.device** %8, align 8
  %157 = call i32 @to_pci_dev(%struct.device* %156)
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @pci_irq_vector(i32 %157, i32 %158)
  %160 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %161 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %160, i32 0, i32 3
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = call i32 @get_cached_msi_msg(i32 %159, i32* %166)
  br label %168

168:                                              ; preds = %155
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %112

171:                                              ; preds = %112
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.dw_edma*, %struct.dw_edma** %9, align 8
  %174 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %61
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %150, %57, %33
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @get_cached_msi_msg(i32, i32*) #1

declare dso_local i32 @dw_edma_dec_irq_alloc(i32*, i64*, i64) #1

declare dso_local i32 @dw_edma_add_irq_mask(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
