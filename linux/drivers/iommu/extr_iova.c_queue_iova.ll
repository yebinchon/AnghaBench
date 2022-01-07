; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_queue_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_queue_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova_domain = type { i32, i32, i32, i32 }
%struct.iova_fq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@IOVA_FQ_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_iova(%struct.iova_domain* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.iova_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iova_fq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iova_domain* %0, %struct.iova_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %13 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.iova_fq* @raw_cpu_ptr(i32 %14)
  store %struct.iova_fq* %15, %struct.iova_fq** %9, align 8
  %16 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %17 = getelementptr inbounds %struct.iova_fq, %struct.iova_fq* %16, i32 0, i32 0
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %21 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %22 = call i32 @fq_ring_free(%struct.iova_domain* %20, %struct.iova_fq* %21)
  %23 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %24 = call i64 @fq_full(%struct.iova_fq* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %28 = call i32 @iova_domain_flush(%struct.iova_domain* %27)
  %29 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %30 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %31 = call i32 @fq_ring_free(%struct.iova_domain* %29, %struct.iova_fq* %30)
  br label %32

32:                                               ; preds = %26, %4
  %33 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %34 = call i32 @fq_ring_add(%struct.iova_fq* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %37 = getelementptr inbounds %struct.iova_fq, %struct.iova_fq* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %35, i64* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %45 = getelementptr inbounds %struct.iova_fq, %struct.iova_fq* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %43, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %53 = getelementptr inbounds %struct.iova_fq, %struct.iova_fq* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 %51, i64* %58, align 8
  %59 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %60 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %59, i32 0, i32 2
  %61 = call i32 @atomic64_read(i32* %60)
  %62 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %63 = getelementptr inbounds %struct.iova_fq, %struct.iova_fq* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %61, i32* %68, align 8
  %69 = load %struct.iova_fq*, %struct.iova_fq** %9, align 8
  %70 = getelementptr inbounds %struct.iova_fq, %struct.iova_fq* %69, i32 0, i32 0
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %74 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %73, i32 0, i32 1
  %75 = call i32 @atomic_read(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %32
  %78 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %79 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %78, i32 0, i32 1
  %80 = call i32 @atomic_cmpxchg(i32* %79, i32 0, i32 1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %84 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %83, i32 0, i32 0
  %85 = load i64, i64* @jiffies, align 8
  %86 = load i32, i32* @IOVA_FQ_TIMEOUT, align 4
  %87 = call i64 @msecs_to_jiffies(i32 %86)
  %88 = add nsw i64 %85, %87
  %89 = call i32 @mod_timer(i32* %84, i64 %88)
  br label %90

90:                                               ; preds = %82, %77, %32
  ret void
}

declare dso_local %struct.iova_fq* @raw_cpu_ptr(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fq_ring_free(%struct.iova_domain*, %struct.iova_fq*) #1

declare dso_local i64 @fq_full(%struct.iova_fq*) #1

declare dso_local i32 @iova_domain_flush(%struct.iova_domain*) #1

declare dso_local i32 @fq_ring_add(%struct.iova_fq*) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
