; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_fr_pool_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_fr_pool_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_fr_pool = type { i32, i32 }
%struct.srp_fr_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_fr_pool*, %struct.srp_fr_desc**, i32)* @srp_fr_pool_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_fr_pool_put(%struct.srp_fr_pool* %0, %struct.srp_fr_desc** %1, i32 %2) #0 {
  %4 = alloca %struct.srp_fr_pool*, align 8
  %5 = alloca %struct.srp_fr_desc**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.srp_fr_pool* %0, %struct.srp_fr_pool** %4, align 8
  store %struct.srp_fr_desc** %1, %struct.srp_fr_desc*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %4, align 8
  %10 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.srp_fr_desc**, %struct.srp_fr_desc*** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.srp_fr_desc*, %struct.srp_fr_desc** %18, i64 %20
  %22 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %21, align 8
  %23 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %22, i32 0, i32 0
  %24 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %4, align 8
  %25 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %24, i32 0, i32 1
  %26 = call i32 @list_add(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %4, align 8
  %32 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
