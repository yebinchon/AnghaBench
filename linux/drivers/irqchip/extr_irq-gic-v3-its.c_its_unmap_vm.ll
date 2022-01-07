; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_unmap_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_unmap_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_node = type { i64 }
%struct.its_vm = type { i32, i32*, i32* }

@its_list_map = common dso_local global i32 0, align 4
@vmovp_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_node*, %struct.its_vm*)* @its_unmap_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_unmap_vm(%struct.its_node* %0, %struct.its_vm* %1) #0 {
  %3 = alloca %struct.its_node*, align 8
  %4 = alloca %struct.its_vm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.its_node* %0, %struct.its_node** %3, align 8
  store %struct.its_vm* %1, %struct.its_vm** %4, align 8
  %7 = load i32, i32* @its_list_map, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %47

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* @vmovp_lock, i64 %11)
  %13 = load %struct.its_vm*, %struct.its_vm** %4, align 8
  %14 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.its_node*, %struct.its_node** %3, align 8
  %17 = getelementptr inbounds %struct.its_node, %struct.its_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.its_vm*, %struct.its_vm** %4, align 8
  %27 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.its_node*, %struct.its_node** %3, align 8
  %32 = load %struct.its_vm*, %struct.its_vm** %4, align 8
  %33 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @its_send_vmapp(%struct.its_node* %31, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %24

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @raw_spin_unlock_irqrestore(i32* @vmovp_lock, i64 %45)
  br label %47

47:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @its_send_vmapp(%struct.its_node*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
