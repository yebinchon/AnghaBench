; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_ring_next_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_ring_next_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32 }
%struct.safexcel_desc_ring = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.safexcel_crypto_priv*, %struct.safexcel_desc_ring*)* @safexcel_ring_next_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @safexcel_ring_next_wptr(%struct.safexcel_crypto_priv* %0, %struct.safexcel_desc_ring* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca %struct.safexcel_desc_ring*, align 8
  %6 = alloca i8*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %4, align 8
  store %struct.safexcel_desc_ring* %1, %struct.safexcel_desc_ring** %5, align 8
  %7 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %8 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %13 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %16 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %19 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = icmp eq i32 %14, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %2
  %24 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %25 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %28 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %33 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %36 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31, %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i8* @ERR_PTR(i32 %41)
  store i8* %42, i8** %3, align 8
  br label %67

43:                                               ; preds = %31, %23
  %44 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %45 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %48 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %53 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %56 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %65

57:                                               ; preds = %43
  %58 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %59 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %5, align 8
  %62 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %65, %39
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
