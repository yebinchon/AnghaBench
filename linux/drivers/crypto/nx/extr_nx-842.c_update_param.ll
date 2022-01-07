; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_update_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_update_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_crypto_param = type { i32, i32, i32, i32, i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx842_crypto_param*, i32, i32)* @update_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_param(%struct.nx842_crypto_param* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nx842_crypto_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nx842_crypto_param* %0, %struct.nx842_crypto_param** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %5, align 8
  %9 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EOVERFLOW, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %5, align 8
  %18 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %5, align 8
  %28 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %5, align 8
  %33 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %5, align 8
  %38 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %5, align 8
  %43 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %5, align 8
  %48 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, %46
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %25, %22, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
