; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_destroy_fr_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_destroy_fr_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_fr_pool = type { i32, %struct.srp_fr_desc* }
%struct.srp_fr_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_fr_pool*)* @srp_destroy_fr_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_destroy_fr_pool(%struct.srp_fr_pool* %0) #0 {
  %2 = alloca %struct.srp_fr_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.srp_fr_desc*, align 8
  store %struct.srp_fr_pool* %0, %struct.srp_fr_pool** %2, align 8
  %5 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %2, align 8
  %6 = icmp ne %struct.srp_fr_pool* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %9 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %2, align 8
  %10 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %9, i32 0, i32 1
  %11 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %10, align 8
  %12 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %11, i64 0
  store %struct.srp_fr_desc* %12, %struct.srp_fr_desc** %4, align 8
  br label %13

13:                                               ; preds = %30, %8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %2, align 8
  %16 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %4, align 8
  %21 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %4, align 8
  %26 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ib_dereg_mr(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %4, align 8
  %34 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %33, i32 1
  store %struct.srp_fr_desc* %34, %struct.srp_fr_desc** %4, align 8
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %2, align 8
  %37 = call i32 @kfree(%struct.srp_fr_pool* %36)
  br label %38

38:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @ib_dereg_mr(i64) #1

declare dso_local i32 @kfree(%struct.srp_fr_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
