; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_aes_dev = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.aead_alg* }
%struct.aead_alg = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_aes_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_aes_dev*, align 8
  %5 = alloca %struct.aead_alg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.omap_aes_dev* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.omap_aes_dev* %9, %struct.omap_aes_dev** %4, align 8
  %10 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %11 = icmp ne %struct.omap_aes_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %109

15:                                               ; preds = %1
  %16 = call i32 @spin_lock(i32* @list_lock)
  %17 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %18 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %17, i32 0, i32 4
  %19 = call i32 @list_del(i32* %18)
  %20 = call i32 @spin_unlock(i32* @list_lock)
  %21 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %22 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %64, %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  %31 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %32 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %60, %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %47 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @crypto_unregister_alg(i32* %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  br label %42

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  br label %27

67:                                               ; preds = %27
  %68 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %69 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %92, %67
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %81 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.aead_alg*, %struct.aead_alg** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %86, i64 %88
  store %struct.aead_alg* %89, %struct.aead_alg** %5, align 8
  %90 = load %struct.aead_alg*, %struct.aead_alg** %5, align 8
  %91 = call i32 @crypto_unregister_aead(%struct.aead_alg* %90)
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %6, align 4
  br label %76

95:                                               ; preds = %76
  %96 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %97 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @crypto_engine_exit(i32 %98)
  %100 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %101 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %100, i32 0, i32 1
  %102 = call i32 @tasklet_kill(i32* %101)
  %103 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %104 = call i32 @omap_aes_dma_cleanup(%struct.omap_aes_dev* %103)
  %105 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %106 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pm_runtime_disable(i32 %107)
  store %struct.omap_aes_dev* null, %struct.omap_aes_dev** %4, align 8
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %95, %12
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.omap_aes_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @crypto_unregister_aead(%struct.aead_alg*) #1

declare dso_local i32 @crypto_engine_exit(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @omap_aes_dma_cleanup(%struct.omap_aes_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
