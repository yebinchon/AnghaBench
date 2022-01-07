; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_dereg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_dereg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_wr_wait = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, i32, i32, i32, %struct.sk_buff*, %struct.c4iw_wr_wait*)* @dereg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dereg_mem(%struct.c4iw_rdev* %0, i32 %1, i32 %2, i32 %3, %struct.sk_buff* %4, %struct.c4iw_wr_wait* %5) #0 {
  %7 = alloca %struct.c4iw_rdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.c4iw_wr_wait*, align 8
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  store %struct.c4iw_wr_wait* %5, %struct.c4iw_wr_wait** %12, align 8
  %13 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %17 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %12, align 8
  %18 = call i32 @write_tpt_entry(%struct.c4iw_rdev* %13, i32 1, i32* %8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 %14, i32 %15, %struct.sk_buff* %16, %struct.c4iw_wr_wait* %17)
  ret i32 %18
}

declare dso_local i32 @write_tpt_entry(%struct.c4iw_rdev*, i32, i32*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.sk_buff*, %struct.c4iw_wr_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
