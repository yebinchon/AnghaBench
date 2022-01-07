; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_get_addr_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_get_addr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i40iw_cm_info = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.i40iw_cm_info*)* @i40iw_get_addr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_get_addr_info(%struct.i40iw_cm_node* %0, %struct.i40iw_cm_info* %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.i40iw_cm_info*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store %struct.i40iw_cm_info* %1, %struct.i40iw_cm_info** %4, align 8
  %5 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %6 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %4, align 8
  %14 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %4, align 8
  %16 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32 %17, i32 %20, i32 4)
  %22 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %4, align 8
  %23 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %24, i32 %27, i32 4)
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %30 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %4, align 8
  %33 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %35 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %4, align 8
  %38 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %40 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %4, align 8
  %43 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
