; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_done_task_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_done_task_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i64, i32, i32 (i32, i64)*, i64 (%struct.rk_crypto_info*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rk_crypto_done_task_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_crypto_done_task_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rk_crypto_info*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.rk_crypto_info*
  store %struct.rk_crypto_info* %5, %struct.rk_crypto_info** %3, align 8
  %6 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %7 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %12 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %11, i32 0, i32 2
  %13 = load i32 (i32, i64)*, i32 (i32, i64)** %12, align 8
  %14 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %15 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %18 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 %13(i32 %16, i64 %19)
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %23 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %22, i32 0, i32 3
  %24 = load i64 (%struct.rk_crypto_info*)*, i64 (%struct.rk_crypto_info*)** %23, align 8
  %25 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %26 = call i64 %24(%struct.rk_crypto_info* %25)
  %27 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %28 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %30 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %35 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %34, i32 0, i32 2
  %36 = load i32 (i32, i64)*, i32 (i32, i64)** %35, align 8
  %37 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %38 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %41 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 %36(i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %10, %33, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
