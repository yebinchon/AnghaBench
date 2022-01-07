; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_ctr_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_ctr_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_dev = type { i32 }
%struct.dmz_metadata = type { i32 }
%struct.dmz_reclaim = type { i32*, i32, i32, i32, i32, %struct.dmz_metadata*, %struct.dmz_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@dmz_reclaim_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dmz_rwq_%s\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_ctr_reclaim(%struct.dmz_dev* %0, %struct.dmz_metadata* %1, %struct.dmz_reclaim** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_dev*, align 8
  %6 = alloca %struct.dmz_metadata*, align 8
  %7 = alloca %struct.dmz_reclaim**, align 8
  %8 = alloca %struct.dmz_reclaim*, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_dev* %0, %struct.dmz_dev** %5, align 8
  store %struct.dmz_metadata* %1, %struct.dmz_metadata** %6, align 8
  store %struct.dmz_reclaim** %2, %struct.dmz_reclaim*** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dmz_reclaim* @kzalloc(i32 40, i32 %10)
  store %struct.dmz_reclaim* %11, %struct.dmz_reclaim** %8, align 8
  %12 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %13 = icmp ne %struct.dmz_reclaim* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %86

17:                                               ; preds = %3
  %18 = load %struct.dmz_dev*, %struct.dmz_dev** %5, align 8
  %19 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %20 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %19, i32 0, i32 6
  store %struct.dmz_dev* %18, %struct.dmz_dev** %20, align 8
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %22 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %23 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %22, i32 0, i32 5
  store %struct.dmz_metadata* %21, %struct.dmz_metadata** %23, align 8
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %26 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %28 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %27, i32 0, i32 3
  %29 = call i32* @dm_kcopyd_client_create(i32* %28)
  %30 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %31 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %33 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %17
  %38 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %39 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %43 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %72

44:                                               ; preds = %17
  %45 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %46 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %45, i32 0, i32 1
  %47 = load i32, i32* @dmz_reclaim_work, align 4
  %48 = call i32 @INIT_DELAYED_WORK(i32* %46, i32 %47)
  %49 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %50 = load %struct.dmz_dev*, %struct.dmz_dev** %5, align 8
  %51 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %55 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %57 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %44
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %72

63:                                               ; preds = %44
  %64 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %65 = load %struct.dmz_reclaim**, %struct.dmz_reclaim*** %7, align 8
  store %struct.dmz_reclaim* %64, %struct.dmz_reclaim** %65, align 8
  %66 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %67 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %70 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %69, i32 0, i32 1
  %71 = call i32 @queue_delayed_work(i32 %68, i32* %70, i32 0)
  store i32 0, i32* %4, align 4
  br label %86

72:                                               ; preds = %60, %37
  %73 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %74 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %79 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @dm_kcopyd_client_destroy(i32* %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %8, align 8
  %84 = call i32 @kfree(%struct.dmz_reclaim* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %63, %14
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.dmz_reclaim* @kzalloc(i32, i32) #1

declare dso_local i32* @dm_kcopyd_client_create(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @dm_kcopyd_client_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.dmz_reclaim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
