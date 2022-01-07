; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_des_dev = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_des_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_des_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_des_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.omap_des_dev* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.omap_des_dev* %8, %struct.omap_des_dev** %4, align 8
  %9 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %10 = icmp ne %struct.omap_des_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %76

14:                                               ; preds = %1
  %15 = call i32 @spin_lock(i32* @list_lock)
  %16 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %17 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %16, i32 0, i32 3
  %18 = call i32 @list_del(i32* %17)
  %19 = call i32 @spin_unlock(i32* @list_lock)
  %20 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %21 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %63, %14
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %31 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %59, %29
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %46 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @crypto_unregister_alg(i32* %57)
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  br label %41

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %26

66:                                               ; preds = %26
  %67 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %68 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %67, i32 0, i32 1
  %69 = call i32 @tasklet_kill(i32* %68)
  %70 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %71 = call i32 @omap_des_dma_cleanup(%struct.omap_des_dev* %70)
  %72 = load %struct.omap_des_dev*, %struct.omap_des_dev** %4, align 8
  %73 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pm_runtime_disable(i32 %74)
  store %struct.omap_des_dev* null, %struct.omap_des_dev** %4, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %11
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.omap_des_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @omap_des_dma_cleanup(%struct.omap_des_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
