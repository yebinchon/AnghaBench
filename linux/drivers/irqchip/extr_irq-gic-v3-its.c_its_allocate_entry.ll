; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_allocate_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_allocate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_cmd_block = type { i64* }
%struct.its_node = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"ITS queue not draining\0A\00", align 1
@ITS_CMD_QUEUE_NR_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_cmd_block* (%struct.its_node*)* @its_allocate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_cmd_block* @its_allocate_entry(%struct.its_node* %0) #0 {
  %2 = alloca %struct.its_cmd_block*, align 8
  %3 = alloca %struct.its_node*, align 8
  %4 = alloca %struct.its_cmd_block*, align 8
  %5 = alloca i32, align 4
  store %struct.its_node* %0, %struct.its_node** %3, align 8
  store i32 1000000, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.its_node*, %struct.its_node** %3, align 8
  %8 = call i64 @its_queue_full(%struct.its_node* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.its_cmd_block* null, %struct.its_cmd_block** %2, align 8
  br label %59

17:                                               ; preds = %10
  %18 = call i32 (...) @cpu_relax()
  %19 = call i32 @udelay(i32 1)
  br label %6

20:                                               ; preds = %6
  %21 = load %struct.its_node*, %struct.its_node** %3, align 8
  %22 = getelementptr inbounds %struct.its_node, %struct.its_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = inttoptr i64 %23 to %struct.its_cmd_block*
  store %struct.its_cmd_block* %25, %struct.its_cmd_block** %4, align 8
  %26 = load %struct.its_node*, %struct.its_node** %3, align 8
  %27 = getelementptr inbounds %struct.its_node, %struct.its_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.its_node*, %struct.its_node** %3, align 8
  %30 = getelementptr inbounds %struct.its_node, %struct.its_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ITS_CMD_QUEUE_NR_ENTRIES, align 8
  %33 = add nsw i64 %31, %32
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load %struct.its_node*, %struct.its_node** %3, align 8
  %37 = getelementptr inbounds %struct.its_node, %struct.its_node* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.its_node*, %struct.its_node** %3, align 8
  %40 = getelementptr inbounds %struct.its_node, %struct.its_node* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %20
  %42 = load %struct.its_cmd_block*, %struct.its_cmd_block** %4, align 8
  %43 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.its_cmd_block*, %struct.its_cmd_block** %4, align 8
  %47 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.its_cmd_block*, %struct.its_cmd_block** %4, align 8
  %51 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.its_cmd_block*, %struct.its_cmd_block** %4, align 8
  %55 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.its_cmd_block*, %struct.its_cmd_block** %4, align 8
  store %struct.its_cmd_block* %58, %struct.its_cmd_block** %2, align 8
  br label %59

59:                                               ; preds = %41, %15
  %60 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  ret %struct.its_cmd_block* %60
}

declare dso_local i64 @its_queue_full(%struct.its_node*) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
