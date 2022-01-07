; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s5p_aes_dev = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@algs = common dso_local global i32* null, align 8
@algs_sha1_md5_sha256 = common dso_local global i32* null, align 8
@s5p_dev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s5p_aes_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_aes_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s5p_aes_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.s5p_aes_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.s5p_aes_dev* %7, %struct.s5p_aes_dev** %4, align 8
  %8 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %9 = icmp ne %struct.s5p_aes_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** @algs, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32*, i32** @algs, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @crypto_unregister_alg(i32* %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %30 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %29, i32 0, i32 5
  %31 = call i32 @tasklet_kill(i32* %30)
  %32 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %33 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %28
  %37 = load i32*, i32** @algs_sha1_md5_sha256, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %49, %36
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32*, i32** @algs_sha1_md5_sha256, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @crypto_unregister_ahash(i32* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %54 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 768
  store i32 %58, i32* %56, align 4
  %59 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %60 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %59, i32 0, i32 3
  %61 = call i32 @tasklet_kill(i32* %60)
  %62 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %63 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %52, %28
  %65 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %66 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %71 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @clk_disable_unprepare(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %76 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @clk_disable_unprepare(i64 %77)
  store i32* null, i32** @s5p_dev, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.s5p_aes_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
