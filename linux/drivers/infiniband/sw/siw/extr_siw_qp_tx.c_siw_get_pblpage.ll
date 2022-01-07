; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_get_pblpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_get_pblpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.siw_mem = type { i64, %struct.siw_pbl* }
%struct.siw_pbl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.siw_mem*, i64, i32*)* @siw_get_pblpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @siw_get_pblpage(%struct.siw_mem* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.siw_mem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.siw_pbl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.siw_mem* %0, %struct.siw_mem** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.siw_mem*, %struct.siw_mem** %5, align 8
  %12 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %11, i32 0, i32 1
  %13 = load %struct.siw_pbl*, %struct.siw_pbl** %12, align 8
  store %struct.siw_pbl* %13, %struct.siw_pbl** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.siw_mem*, %struct.siw_mem** %5, align 8
  %16 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %9, align 8
  %19 = load %struct.siw_pbl*, %struct.siw_pbl** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @siw_pbl_get_buffer(%struct.siw_pbl* %19, i64 %20, i32* null, i32* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = call %struct.page* @virt_to_page(i64 %26)
  store %struct.page* %27, %struct.page** %4, align 8
  br label %29

28:                                               ; preds = %3
  store %struct.page* null, %struct.page** %4, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %30
}

declare dso_local i64 @siw_pbl_get_buffer(%struct.siw_pbl*, i64, i32*, i32*) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
