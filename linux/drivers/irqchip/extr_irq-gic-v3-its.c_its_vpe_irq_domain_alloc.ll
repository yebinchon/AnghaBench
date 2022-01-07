; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.its_vm = type { i64*, i32, i32, %struct.TYPE_3__**, %struct.page* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@its_vpe_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @its_vpe_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_vpe_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.its_vm*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.its_vm*
  store %struct.its_vm* %18, %struct.its_vm** %10, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %20 = icmp ne %struct.its_vm* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @roundup_pow_of_two(i32 %24)
  %26 = call i64* @its_lpi_alloc(i32 %25, i32* %13, i32* %14)
  store i64* %26, i64** %11, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %154

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i64*, i64** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @its_lpi_free(i64* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %154

43:                                               ; preds = %32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.page* @its_allocate_prop_table(i32 %44)
  store %struct.page* %45, %struct.page** %12, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = icmp ne %struct.page* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i64*, i64** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @its_lpi_free(i64* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %154

55:                                               ; preds = %43
  %56 = load i64*, i64** %11, align 8
  %57 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %58 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %57, i32 0, i32 0
  store i64* %56, i64** %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %61 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %64 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.page*, %struct.page** %12, align 8
  %66 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %67 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %66, i32 0, i32 4
  store %struct.page* %65, %struct.page** %67, align 8
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %130, %55
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %133

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %77 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %78, i64 %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %75, i32* %83, align 4
  %84 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %85 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @its_vpe_init(%struct.TYPE_3__* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %72
  br label %133

95:                                               ; preds = %72
  %96 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %97, %98
  %100 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %101 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %102, i64 %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @its_irq_gic_domain_alloc(%struct.irq_domain* %96, i32 %99, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %133

113:                                              ; preds = %95
  %114 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %15, align 4
  %117 = add i32 %115, %116
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.its_vm*, %struct.its_vm** %10, align 8
  %120 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %121, i64 %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %114, i32 %117, i32 %118, i32* @its_vpe_irq_chip, %struct.TYPE_3__* %125)
  %127 = load i32, i32* %15, align 4
  %128 = load i64*, i64** %11, align 8
  %129 = call i32 @set_bit(i32 %127, i64* %128)
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %68

133:                                              ; preds = %112, %94, %68
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 %142, 1
  %144 = call i32 @its_vpe_irq_domain_free(%struct.irq_domain* %140, i32 %141, i32 %143)
  br label %145

145:                                              ; preds = %139, %136
  %146 = load i64*, i64** %11, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @its_lpi_free(i64* %146, i32 %147, i32 %148)
  %150 = load %struct.page*, %struct.page** %12, align 8
  %151 = call i32 @its_free_prop_table(%struct.page* %150)
  br label %152

152:                                              ; preds = %145, %133
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %48, %36, %29
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64* @its_lpi_alloc(i32, i32*, i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @its_lpi_free(i64*, i32, i32) #1

declare dso_local %struct.page* @its_allocate_prop_table(i32) #1

declare dso_local i32 @its_vpe_init(%struct.TYPE_3__*) #1

declare dso_local i32 @its_irq_gic_domain_alloc(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @its_vpe_irq_domain_free(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @its_free_prop_table(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
