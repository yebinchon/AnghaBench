; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_cleanup_sde_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_cleanup_sde_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_rht_map_elem = type { i32, i32, %struct.sdma_engine** }
%struct.sdma_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_rht_map_elem*, %struct.sdma_engine*)* @sdma_cleanup_sde_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_cleanup_sde_map(%struct.sdma_rht_map_elem* %0, %struct.sdma_engine* %1) #0 {
  %3 = alloca %struct.sdma_rht_map_elem*, align 8
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdma_rht_map_elem* %0, %struct.sdma_rht_map_elem** %3, align 8
  store %struct.sdma_engine* %1, %struct.sdma_engine** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %67, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %10 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %7
  %14 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %15 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %14, i32 0, i32 2
  %16 = load %struct.sdma_engine**, %struct.sdma_engine*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sdma_engine*, %struct.sdma_engine** %16, i64 %18
  %20 = load %struct.sdma_engine*, %struct.sdma_engine** %19, align 8
  %21 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %22 = icmp eq %struct.sdma_engine* %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %13
  %24 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %25 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %24, i32 0, i32 2
  %26 = load %struct.sdma_engine**, %struct.sdma_engine*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sdma_engine*, %struct.sdma_engine** %26, i64 %28
  %30 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %31 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %30, i32 0, i32 2
  %32 = load %struct.sdma_engine**, %struct.sdma_engine*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sdma_engine*, %struct.sdma_engine** %32, i64 %35
  %37 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %38 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub i32 %39, %40
  %42 = sub i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memmove(%struct.sdma_engine** %29, %struct.sdma_engine** %36, i32 %45)
  %47 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %48 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add i32 %49, -1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %52 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %23
  br label %57

56:                                               ; preds = %23
  br label %57

57:                                               ; preds = %56, %55
  %58 = phi i32 [ %53, %55 ], [ 1, %56 ]
  %59 = call i32 @roundup_pow_of_two(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub i32 %60, 1
  %62 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %63 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %3, align 8
  %65 = call i32 @sdma_populate_sde_map(%struct.sdma_rht_map_elem* %64)
  br label %70

66:                                               ; preds = %13
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %7

70:                                               ; preds = %57, %7
  ret void
}

declare dso_local i32 @memmove(%struct.sdma_engine**, %struct.sdma_engine**, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @sdma_populate_sde_map(%struct.sdma_rht_map_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
