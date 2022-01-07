; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_populate_sde_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_populate_sde_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_rht_map_elem = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_rht_map_elem*)* @sdma_populate_sde_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_populate_sde_map(%struct.sdma_rht_map_elem* %0) #0 {
  %2 = alloca %struct.sdma_rht_map_elem*, align 8
  %3 = alloca i32, align 4
  store %struct.sdma_rht_map_elem* %0, %struct.sdma_rht_map_elem** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %38, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %2, align 8
  %7 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i32 [ %8, %10 ], [ 1, %11 ]
  %14 = call i32 @roundup_pow_of_two(i32 %13)
  %15 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %2, align 8
  %16 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  %19 = icmp slt i32 %5, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %2, align 8
  %22 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %2, align 8
  %29 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %2, align 8
  %32 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  store i32 %27, i32* %37, align 4
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %4

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
