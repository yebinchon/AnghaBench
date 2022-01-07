; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_ring_next_rptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_ring_next_rptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32 }
%struct.safexcel_desc_ring = type { i32, i8*, i8*, i8*, i8* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv* %0, %struct.safexcel_desc_ring* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca %struct.safexcel_desc_ring*, align 8
  %6 = alloca i8*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %4, align 8
  store %struct.safexcel_desc_ring* %1, %struct.safexcel_desc_ring** %5, align 8
  %7 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %8 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %11 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %14 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %3, align 8
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %23 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %26 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %31 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %34 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %37 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %40 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = sext i32 %38 to i64
  %43 = getelementptr i8, i8* %41, i64 %42
  store i8* %43, i8** %40, align 8
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %3, align 8
  br label %46

46:                                               ; preds = %44, %17
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
