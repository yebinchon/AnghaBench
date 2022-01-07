; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.hns_roce_mr = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i32)* @hns_roce_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_set_page(%struct.ib_mr* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_mr*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %7 = call %struct.hns_roce_mr* @to_hr_mr(%struct.ib_mr* %6)
  store %struct.hns_roce_mr* %7, %struct.hns_roce_mr** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %10 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %13 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  store i32 %8, i32* %17, align 4
  ret i32 0
}

declare dso_local %struct.hns_roce_mr* @to_hr_mr(%struct.ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
