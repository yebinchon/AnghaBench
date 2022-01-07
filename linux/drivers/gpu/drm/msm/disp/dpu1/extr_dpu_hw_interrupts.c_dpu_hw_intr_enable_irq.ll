; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_interrupts.c_dpu_hw_intr_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_irq_type = type { i32, i32 }
%struct.dpu_intr_reg = type { i32, i32 }
%struct.dpu_hw_intr = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@dpu_irq_map = common dso_local global %struct.dpu_irq_type* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid IRQ index: [%d]\0A\00", align 1
@dpu_intr_set = common dso_local global %struct.dpu_intr_reg* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"DPU IRQ already set:\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DPU IRQ enabled:\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s MASK:0x%.8x, CACHE-MASK:0x%.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_intr*, i32)* @dpu_hw_intr_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_intr_enable_irq(%struct.dpu_hw_intr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_intr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpu_intr_reg*, align 8
  %9 = alloca %struct.dpu_irq_type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dpu_hw_intr* %0, %struct.dpu_hw_intr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %10, align 8
  %12 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %13 = icmp ne %struct.dpu_hw_intr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dpu_irq_type*, %struct.dpu_irq_type** @dpu_irq_map, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.dpu_irq_type* %22)
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %20
  %31 = load %struct.dpu_irq_type*, %struct.dpu_irq_type** @dpu_irq_map, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dpu_irq_type, %struct.dpu_irq_type* %31, i64 %33
  store %struct.dpu_irq_type* %34, %struct.dpu_irq_type** %9, align 8
  %35 = load %struct.dpu_irq_type*, %struct.dpu_irq_type** %9, align 8
  %36 = getelementptr inbounds %struct.dpu_irq_type, %struct.dpu_irq_type* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.dpu_intr_reg*, %struct.dpu_intr_reg** @dpu_intr_set, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dpu_intr_reg, %struct.dpu_intr_reg* %38, i64 %40
  store %struct.dpu_intr_reg* %41, %struct.dpu_intr_reg** %8, align 8
  %42 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %43 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %42, i32 0, i32 1
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %47 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.dpu_irq_type*, %struct.dpu_irq_type** %9, align 8
  %55 = getelementptr inbounds %struct.dpu_irq_type, %struct.dpu_irq_type* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %30
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %90

60:                                               ; preds = %30
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %61 = load %struct.dpu_irq_type*, %struct.dpu_irq_type** %9, align 8
  %62 = getelementptr inbounds %struct.dpu_irq_type, %struct.dpu_irq_type* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %67 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %66, i32 0, i32 2
  %68 = load %struct.dpu_intr_reg*, %struct.dpu_intr_reg** %8, align 8
  %69 = getelementptr inbounds %struct.dpu_intr_reg, %struct.dpu_intr_reg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dpu_irq_type*, %struct.dpu_irq_type** %9, align 8
  %72 = getelementptr inbounds %struct.dpu_irq_type, %struct.dpu_irq_type* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DPU_REG_WRITE(i32* %67, i32 %70, i32 %73)
  %75 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %76 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %75, i32 0, i32 2
  %77 = load %struct.dpu_intr_reg*, %struct.dpu_intr_reg** %8, align 8
  %78 = getelementptr inbounds %struct.dpu_intr_reg, %struct.dpu_intr_reg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @DPU_REG_WRITE(i32* %76, i32 %79, i32 %80)
  %82 = call i32 (...) @wmb()
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %85 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %60, %59
  %91 = load %struct.dpu_hw_intr*, %struct.dpu_hw_intr** %4, align 8
  %92 = getelementptr inbounds %struct.dpu_hw_intr, %struct.dpu_hw_intr* %91, i32 0, i32 1
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.dpu_irq_type*, %struct.dpu_irq_type** %9, align 8
  %97 = getelementptr inbounds %struct.dpu_irq_type, %struct.dpu_irq_type* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %95, i32 %98, i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %90, %25, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @ARRAY_SIZE(%struct.dpu_irq_type*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DPU_REG_WRITE(i32*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
