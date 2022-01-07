; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hem_list_assign_bt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hem_list_assign_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.roce_hem_item = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.roce_hem_item*, i8*, i64)* @hem_list_assign_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hem_list_assign_bt(%struct.hns_roce_dev* %0, %struct.roce_hem_item* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.roce_hem_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.roce_hem_item* %1, %struct.roce_hem_item** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.roce_hem_item*, %struct.roce_hem_item** %6, align 8
  %11 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.roce_hem_item*, %struct.roce_hem_item** %6, align 8
  %14 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
