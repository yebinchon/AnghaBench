; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/sunxi-ss/extr_sun4i-ss-core.c_sun4i_ss_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/sunxi-ss/extr_sun4i-ss-core.c_sun4i_ss_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.sun4i_ss_ctx = type { i32, i32, i64, i64 }

@ss_algs = common dso_local global %struct.TYPE_5__* null, align 8
@SS_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_ss_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_ss_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_ss_ctx*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sun4i_ss_ctx* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sun4i_ss_ctx* %6, %struct.sun4i_ss_ctx** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ss_algs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ss_algs, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %43 [
    i32 128, label %19
    i32 130, label %27
    i32 129, label %35
  ]

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ss_algs, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = call i32 @crypto_unregister_skcipher(i32* %25)
  br label %43

27:                                               ; preds = %12
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ss_algs, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i32 @crypto_unregister_ahash(i32* %33)
  br label %43

35:                                               ; preds = %12
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ss_algs, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @crypto_unregister_rng(i32* %41)
  br label %43

43:                                               ; preds = %12, %35, %27, %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %7

47:                                               ; preds = %7
  %48 = load %struct.sun4i_ss_ctx*, %struct.sun4i_ss_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.sun4i_ss_ctx, %struct.sun4i_ss_ctx* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SS_CTL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 0, i64 %52)
  %54 = load %struct.sun4i_ss_ctx*, %struct.sun4i_ss_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.sun4i_ss_ctx, %struct.sun4i_ss_ctx* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.sun4i_ss_ctx*, %struct.sun4i_ss_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.sun4i_ss_ctx, %struct.sun4i_ss_ctx* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @reset_control_assert(i64 %61)
  br label %63

63:                                               ; preds = %58, %47
  %64 = load %struct.sun4i_ss_ctx*, %struct.sun4i_ss_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.sun4i_ss_ctx, %struct.sun4i_ss_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  %68 = load %struct.sun4i_ss_ctx*, %struct.sun4i_ss_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.sun4i_ss_ctx, %struct.sun4i_ss_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @clk_disable_unprepare(i32 %70)
  ret i32 0
}

declare dso_local %struct.sun4i_ss_ctx* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @crypto_unregister_skcipher(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_rng(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
