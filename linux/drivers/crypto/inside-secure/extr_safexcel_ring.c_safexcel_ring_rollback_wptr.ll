; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_ring_rollback_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_ring_rollback_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32 }
%struct.safexcel_desc_ring = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @safexcel_ring_rollback_wptr(%struct.safexcel_crypto_priv* %0, %struct.safexcel_desc_ring* %1) #0 {
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca %struct.safexcel_desc_ring*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  store %struct.safexcel_desc_ring* %1, %struct.safexcel_desc_ring** %4, align 8
  %5 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %6 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %9 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %15 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %18 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %23 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %26 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %35

27:                                               ; preds = %13
  %28 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %29 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %4, align 8
  %32 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %12, %27, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
