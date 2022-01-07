; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_vpe = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.its_vpe*)* @its_vpe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_vpe_init(%struct.its_vpe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.its_vpe*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.its_vpe* %0, %struct.its_vpe** %3, align 8
  %6 = call i32 (...) @its_vpe_id_alloc()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.page* @its_allocate_pending_table(i32 %12)
  store %struct.page* %13, %struct.page** %4, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @its_vpe_id_free(i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @its_alloc_vpe_table(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @its_vpe_id_free(i32 %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @its_free_pending_table(%struct.page* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.its_vpe*, %struct.its_vpe** %3, align 8
  %35 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = load %struct.its_vpe*, %struct.its_vpe** %3, align 8
  %38 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %37, i32 0, i32 2
  store %struct.page* %36, %struct.page** %38, align 8
  %39 = load %struct.its_vpe*, %struct.its_vpe** %3, align 8
  %40 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %32, %25, %16, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @its_vpe_id_alloc(...) #1

declare dso_local %struct.page* @its_allocate_pending_table(i32) #1

declare dso_local i32 @its_vpe_id_free(i32) #1

declare dso_local i32 @its_alloc_vpe_table(i32) #1

declare dso_local i32 @its_free_pending_table(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
