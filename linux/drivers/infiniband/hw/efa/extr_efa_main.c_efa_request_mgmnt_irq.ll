; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_request_mgmnt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_request_mgmnt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.TYPE_2__*, %struct.efa_irq }
%struct.TYPE_2__ = type { i32 }
%struct.efa_irq = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to request admin irq (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Set affinity hint of mgmnt irq to %*pbl (irq vector: %d)\0A\00", align 1
@nr_cpumask_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*)* @efa_request_mgmnt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_request_mgmnt_irq(%struct.efa_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efa_dev*, align 8
  %4 = alloca %struct.efa_irq*, align 8
  %5 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %3, align 8
  %6 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %7 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %6, i32 0, i32 1
  store %struct.efa_irq* %7, %struct.efa_irq** %4, align 8
  %8 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %9 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %12 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %15 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %18 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @request_irq(i32 %10, i32 %13, i32 0, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %25 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %1
  %32 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %33 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @nr_cpumask_bits, align 4
  %37 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %38 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %37, i32 0, i32 0
  %39 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %40 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32* %38, i32 %41)
  %43 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %44 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.efa_irq*, %struct.efa_irq** %4, align 8
  %47 = getelementptr inbounds %struct.efa_irq, %struct.efa_irq* %46, i32 0, i32 0
  %48 = call i32 @irq_set_affinity_hint(i32 %45, i32* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %31, %23
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
