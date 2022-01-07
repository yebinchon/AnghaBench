; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_write_gts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_write_gts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i64, i32, i64, i32 }

@SGE_UDB_GTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_cq*, i32)* @write_gts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_gts(%struct.t4_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.t4_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.t4_cq* %0, %struct.t4_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %6 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %12 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @INGRESSQID_V(i32 %13)
  %15 = or i32 %10, %14
  %16 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %17 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SGE_UDB_GTS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %25 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @INGRESSQID_V(i32 %26)
  %28 = or i32 %23, %27
  %29 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %30 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @writel(i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %22, %9
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @INGRESSQID_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
