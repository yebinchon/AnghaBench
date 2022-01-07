; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_exynos-rng.c_exynos_rng_reseed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_exynos-rng.c_exynos_rng_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_rng_dev = type { i64, i64, i32 }

@EXYNOS_RNG_RESEED_TIME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EXYNOS_RNG_SEED_SIZE = common dso_local global i32 0, align 4
@EXYNOS_RNG_RESEED_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_rng_dev*)* @exynos_rng_reseed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_rng_reseed(%struct.exynos_rng_dev* %0) #0 {
  %2 = alloca %struct.exynos_rng_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.exynos_rng_dev* %0, %struct.exynos_rng_dev** %2, align 8
  %9 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %2, align 8
  %10 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @EXYNOS_RNG_RESEED_TIME, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @EXYNOS_RNG_SEED_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @time_before(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %2, align 8
  %26 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EXYNOS_RNG_RESEED_BYTES, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %48

31:                                               ; preds = %24, %1
  %32 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %2, align 8
  %33 = mul nuw i64 4, %17
  %34 = trunc i64 %33 to i32
  %35 = call i64 @exynos_rng_get_random(%struct.exynos_rng_dev* %32, i32* %19, i32 %34, i32* %5)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @exynos_rng_set_seed(%struct.exynos_rng_dev* %39, i32* %19, i32 %40)
  %42 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %2, align 8
  %43 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %2, align 8
  %46 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %38, %37, %30
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %48, %48
  ret void

52:                                               ; preds = %48
  unreachable
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @exynos_rng_get_random(%struct.exynos_rng_dev*, i32*, i32, i32*) #1

declare dso_local i32 @exynos_rng_set_seed(%struct.exynos_rng_dev*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
