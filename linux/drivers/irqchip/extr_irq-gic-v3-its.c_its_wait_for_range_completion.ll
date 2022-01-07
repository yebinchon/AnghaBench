; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_wait_for_range_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_wait_for_range_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_node = type { i64 }
%struct.its_cmd_block = type { i32 }

@ITS_CMD_QUEUE_SZ = common dso_local global i64 0, align 8
@GITS_CREADR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"ITS queue timeout (%llu %llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.its_node*, i64, %struct.its_cmd_block*)* @its_wait_for_range_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_wait_for_range_completion(%struct.its_node* %0, i64 %1, %struct.its_cmd_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.its_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.its_cmd_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.its_node* %0, %struct.its_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.its_cmd_block* %2, %struct.its_cmd_block** %7, align 8
  store i32 1000000, i32* %11, align 4
  %13 = load %struct.its_node*, %struct.its_node** %5, align 8
  %14 = load %struct.its_cmd_block*, %struct.its_cmd_block** %7, align 8
  %15 = call i64 @its_cmd_ptr_to_offset(%struct.its_node* %13, %struct.its_cmd_block* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @ITS_CMD_QUEUE_SZ, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %23, %59
  %26 = load %struct.its_node*, %struct.its_node** %5, align 8
  %27 = getelementptr inbounds %struct.its_node, %struct.its_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GITS_CREADR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @readl_relaxed(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load i64, i64* @ITS_CMD_QUEUE_SZ, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %38, %25
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %63

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57)
  store i32 -1, i32* %4, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %6, align 8
  %61 = call i32 (...) @cpu_relax()
  %62 = call i32 @udelay(i32 1)
  br label %25

63:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @its_cmd_ptr_to_offset(%struct.its_node*, %struct.its_cmd_block*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
