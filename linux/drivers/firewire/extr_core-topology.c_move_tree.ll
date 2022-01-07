; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_move_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_move_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_node = type { i32, %struct.fw_node** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_node*, %struct.fw_node*, i32)* @move_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_tree(%struct.fw_node* %0, %struct.fw_node* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_node*, align 8
  %5 = alloca %struct.fw_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_node*, align 8
  %8 = alloca i32, align 4
  store %struct.fw_node* %0, %struct.fw_node** %4, align 8
  store %struct.fw_node* %1, %struct.fw_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %10 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %9, i32 0, i32 1
  %11 = load %struct.fw_node**, %struct.fw_node*** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %11, i64 %13
  %15 = load %struct.fw_node*, %struct.fw_node** %14, align 8
  store %struct.fw_node* %15, %struct.fw_node** %7, align 8
  %16 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %17 = load %struct.fw_node*, %struct.fw_node** %4, align 8
  %18 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %17, i32 0, i32 1
  %19 = load %struct.fw_node**, %struct.fw_node*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %19, i64 %21
  store %struct.fw_node* %16, %struct.fw_node** %22, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %48, %3
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %26 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %31 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %30, i32 0, i32 1
  %32 = load %struct.fw_node**, %struct.fw_node*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %32, i64 %34
  %36 = load %struct.fw_node*, %struct.fw_node** %35, align 8
  %37 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %38 = icmp eq %struct.fw_node* %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.fw_node*, %struct.fw_node** %4, align 8
  %41 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %42 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %41, i32 0, i32 1
  %43 = load %struct.fw_node**, %struct.fw_node*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %43, i64 %45
  store %struct.fw_node* %40, %struct.fw_node** %46, align 8
  br label %51

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %23

51:                                               ; preds = %39, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
