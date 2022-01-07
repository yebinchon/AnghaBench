; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bnxt_en_dev*, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bnxt_en_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bnxt_re_dev = common dso_local global i32 0, align 4
@ibdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: bnxt_re_dev allocation failure!\00", align 1
@ROCE_DRV_MODULE_NAME = common dso_local global i32 0, align 4
@bnxt_re_dev_lock = common dso_local global i32 0, align 4
@bnxt_re_dev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnxt_re_dev* (%struct.net_device*, %struct.bnxt_en_dev*)* @bnxt_re_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnxt_re_dev* @bnxt_re_dev_add(%struct.net_device* %0, %struct.bnxt_en_dev* %1) #0 {
  %3 = alloca %struct.bnxt_re_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bnxt_en_dev*, align 8
  %6 = alloca %struct.bnxt_re_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.bnxt_en_dev* %1, %struct.bnxt_en_dev** %5, align 8
  %7 = load i32, i32* @bnxt_re_dev, align 4
  %8 = load i32, i32* @ibdev, align 4
  %9 = call %struct.bnxt_re_dev* @ib_alloc_device(i32 %7, i32 %8)
  store %struct.bnxt_re_dev* %9, %struct.bnxt_re_dev** %6, align 8
  %10 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %11 = icmp ne %struct.bnxt_re_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ROCE_DRV_MODULE_NAME, align 4
  %14 = call i32 @dev_err(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.bnxt_re_dev* null, %struct.bnxt_re_dev** %3, align 8
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %18 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %17, i32 0, i32 11
  store %struct.net_device* %16, %struct.net_device** %18, align 8
  %19 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %20 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %19, i32 0, i32 11
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = call i32 @dev_hold(%struct.net_device* %21)
  %23 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %24 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %25 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %24, i32 0, i32 9
  store %struct.bnxt_en_dev* %23, %struct.bnxt_en_dev** %25, align 8
  %26 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %27 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %26, i32 0, i32 9
  %28 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %27, align 8
  %29 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %34 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %36 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %35, i32 0, i32 8
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %39 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %38, i32 0, i32 7
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %42 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %41, i32 0, i32 6
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %45 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %44, i32 0, i32 5
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %48 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %47, i32 0, i32 4
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  %50 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %51 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %50, i32 0, i32 3
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %54 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %53, i32 0, i32 2
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  %56 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %57 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 65535, i32* %59, align 4
  %60 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %61 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 65535, i32* %63, align 4
  %64 = call i32 @mutex_lock(i32* @bnxt_re_dev_lock)
  %65 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %66 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %65, i32 0, i32 1
  %67 = call i32 @list_add_tail_rcu(i32* %66, i32* @bnxt_re_dev_list)
  %68 = call i32 @mutex_unlock(i32* @bnxt_re_dev_lock)
  %69 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  store %struct.bnxt_re_dev* %69, %struct.bnxt_re_dev** %3, align 8
  br label %70

70:                                               ; preds = %15, %12
  %71 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  ret %struct.bnxt_re_dev* %71
}

declare dso_local %struct.bnxt_re_dev* @ib_alloc_device(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
