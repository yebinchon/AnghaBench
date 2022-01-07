; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_add_rdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_add_rdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_result_desc = type { i32, i32, i32, i32, i32 }
%struct.safexcel_crypto_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.safexcel_result_desc* @safexcel_add_rdesc(%struct.safexcel_crypto_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.safexcel_result_desc*, align 8
  %8 = alloca %struct.safexcel_crypto_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.safexcel_result_desc*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %16 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %17 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call %struct.safexcel_result_desc* @safexcel_ring_next_wptr(%struct.safexcel_crypto_priv* %15, i32* %22)
  store %struct.safexcel_result_desc* %23, %struct.safexcel_result_desc** %14, align 8
  %24 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  %25 = call i64 @IS_ERR(%struct.safexcel_result_desc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  store %struct.safexcel_result_desc* %28, %struct.safexcel_result_desc** %7, align 8
  br label %50

29:                                               ; preds = %6
  %30 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  %31 = call i32 @memset(%struct.safexcel_result_desc* %30, i32 0, i32 20)
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  %34 = getelementptr inbounds %struct.safexcel_result_desc, %struct.safexcel_result_desc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  %37 = getelementptr inbounds %struct.safexcel_result_desc, %struct.safexcel_result_desc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  %40 = getelementptr inbounds %struct.safexcel_result_desc, %struct.safexcel_result_desc* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @lower_32_bits(i32 %41)
  %43 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  %44 = getelementptr inbounds %struct.safexcel_result_desc, %struct.safexcel_result_desc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  %48 = getelementptr inbounds %struct.safexcel_result_desc, %struct.safexcel_result_desc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %14, align 8
  store %struct.safexcel_result_desc* %49, %struct.safexcel_result_desc** %7, align 8
  br label %50

50:                                               ; preds = %29, %27
  %51 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %7, align 8
  ret %struct.safexcel_result_desc* %51
}

declare dso_local %struct.safexcel_result_desc* @safexcel_ring_next_wptr(%struct.safexcel_crypto_priv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @memset(%struct.safexcel_result_desc*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
