; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ipu_irq_map = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@map_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"IPU: Source %u already mapped to IRQ %u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CONFIG_MX3_IPU_IRQS = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.TYPE_2__* null, align 8
@bank_lock = common dso_local global i32 0, align 4
@irq_bank = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"IPU: mapped source %u to IRQ %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"IPU: couldn't map source %u: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_irq_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_irq_map*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @might_sleep()
  %10 = call i32 @mutex_lock(i32* @map_lock)
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.ipu_irq_map* @src2map(i32 %11)
  store %struct.ipu_irq_map* %12, %struct.ipu_irq_map** %5, align 8
  %13 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %5, align 8
  %14 = icmp ne %struct.ipu_irq_map* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %5, align 8
  %18 = getelementptr inbounds %struct.ipu_irq_map, %struct.ipu_irq_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %67, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CONFIG_MX3_IPU_IRQS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @raw_spin_lock_irqsave(i32* @bank_lock, i64 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 8
  %45 = load i64, i64* @irq_bank, align 8
  %46 = load i32, i32* %2, align 4
  %47 = udiv i32 %46, 32
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i64 %49, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @raw_spin_unlock_irqrestore(i32* @bank_lock, i64 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  br label %70

66:                                               ; preds = %28
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %24

70:                                               ; preds = %36, %24
  br label %71

71:                                               ; preds = %70, %15
  %72 = call i32 @mutex_unlock(i32* @map_lock)
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ipu_irq_map* @src2map(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
