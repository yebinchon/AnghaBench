; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_irq_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_irq_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESPI_BASE_INTID = common dso_local global i32 0, align 4
@EPPI_BASE_INTID = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @gic_irq_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_irq_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %11 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @is_of_node(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %128

15:                                               ; preds = %4
  %16 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %17 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %165

23:                                               ; preds = %15
  %24 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %25 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %101 [
    i32 0, label %29
    i32 1, label %38
    i32 2, label %47
    i32 3, label %57
    i32 129, label %67
    i32 128, label %75
  ]

29:                                               ; preds = %23
  %30 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %31 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 32
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %8, align 8
  store i64 %36, i64* %37, align 8
  br label %104

38:                                               ; preds = %23
  %39 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %40 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 16
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  br label %104

47:                                               ; preds = %23
  %48 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %49 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ESPI_BASE_INTID, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %8, align 8
  store i64 %55, i64* %56, align 8
  br label %104

57:                                               ; preds = %23
  %58 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %59 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EPPI_BASE_INTID, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  br label %104

67:                                               ; preds = %23
  %68 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %69 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %8, align 8
  store i64 %73, i64* %74, align 8
  br label %104

75:                                               ; preds = %23
  %76 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %77 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64*, i64** %8, align 8
  store i64 %81, i64* %82, align 8
  %83 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %84 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %87, 16
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = load i32, i32* @EPPI_BASE_INTID, align 4
  %91 = sub nsw i32 %90, 16
  %92 = sext i32 %91 to i64
  %93 = load i64*, i64** %8, align 8
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %92
  store i64 %95, i64* %93, align 8
  br label %100

96:                                               ; preds = %75
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 16
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %96, %89
  br label %104

101:                                              ; preds = %23
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %165

104:                                              ; preds = %100, %67, %57, %47, %38, %29
  %105 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %106 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %119 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 128
  br label %124

124:                                              ; preds = %117, %104
  %125 = phi i1 [ false, %104 ], [ %123, %117 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @WARN_ON(i32 %126)
  store i32 0, i32* %5, align 4
  br label %165

128:                                              ; preds = %4
  %129 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %130 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @is_fwnode_irqchip(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %128
  %135 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %136 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 2
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %165

142:                                              ; preds = %134
  %143 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %144 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %8, align 8
  store i64 %148, i64* %149, align 8
  %150 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %151 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @WARN_ON(i32 %160)
  store i32 0, i32* %5, align 4
  br label %165

162:                                              ; preds = %128
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %162, %142, %139, %124, %101, %20
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i64 @is_of_node(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @is_fwnode_irqchip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
