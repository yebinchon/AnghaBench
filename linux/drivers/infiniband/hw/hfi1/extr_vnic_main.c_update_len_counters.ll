; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_update_len_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_update_len_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_grp_stats = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_grp_stats*, i32)* @update_len_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_len_counters(%struct.opa_vnic_grp_stats* %0, i32 %1) #0 {
  %3 = alloca %struct.opa_vnic_grp_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.opa_vnic_grp_stats* %0, %struct.opa_vnic_grp_stats** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 1515
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %3, align 8
  %9 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 1020
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %3, align 8
  %17 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %61

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 508
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %3, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %60

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 252
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %3, align 8
  %33 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %59

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 124
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %3, align 8
  %41 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %58

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 61
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %3, align 8
  %49 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %57

52:                                               ; preds = %44
  %53 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %3, align 8
  %54 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59, %23
  br label %61

61:                                               ; preds = %60, %15
  br label %62

62:                                               ; preds = %61, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
