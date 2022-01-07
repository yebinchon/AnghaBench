; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v4.c_its_alloc_vcpu_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v4.c_its_alloc_vcpu_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_vm = type { i32, i64, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, %struct.its_vm* }

@.str = private unnamed_addr constant [10 x i8] c"GICv4-vpe\00", align 1
@current = common dso_local global i32 0, align 4
@gic_domain = common dso_local global i32 0, align 4
@vpe_domain_ops = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @its_alloc_vcpu_irqs(%struct.its_vm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.its_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.its_vm* %0, %struct.its_vm** %3, align 8
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @task_pid_nr(i32 %6)
  %8 = call i64 @irq_domain_alloc_named_id_fwnode(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %10 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %12 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %98

16:                                               ; preds = %1
  %17 = load i32, i32* @gic_domain, align 4
  %18 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %19 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %22 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @vpe_domain_ops, align 4
  %25 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %26 = call i64 @irq_domain_create_hierarchy(i32 %17, i32 0, i32 %20, i64 %23, i32 %24, %struct.its_vm* %25)
  %27 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %28 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %30 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  br label %98

34:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %38 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %43 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %44 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store %struct.its_vm* %42, %struct.its_vm** %50, align 8
  %51 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %52 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %64 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %67 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NUMA_NO_NODE, align 4
  %70 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %71 = call i32 @__irq_domain_alloc_irqs(i64 %65, i32 -1, i32 %68, i32 %69, %struct.its_vm* %70, i32 0, i32* null)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %98

75:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %79 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %83, %84
  %86 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %87 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %85, i32* %93, align 4
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %76

97:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %121

98:                                               ; preds = %74, %33, %15
  %99 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %100 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %105 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @irq_domain_remove(i64 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %110 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %115 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @irq_domain_free_fwnode(i64 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %97
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @irq_domain_alloc_named_id_fwnode(i8*, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @irq_domain_create_hierarchy(i32, i32, i32, i64, i32, %struct.its_vm*) #1

declare dso_local i32 @__irq_domain_alloc_irqs(i64, i32, i32, i32, %struct.its_vm*, i32, i32*) #1

declare dso_local i32 @irq_domain_remove(i64) #1

declare dso_local i32 @irq_domain_free_fwnode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
