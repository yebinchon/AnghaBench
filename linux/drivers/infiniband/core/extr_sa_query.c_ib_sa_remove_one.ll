; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_device = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ib_wq = common dso_local global i32 0, align 4
@free_sm_ah = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @ib_sa_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_sa_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_sa_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ib_sa_device*
  store %struct.ib_sa_device* %8, %struct.ib_sa_device** %5, align 8
  %9 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %10 = icmp ne %struct.ib_sa_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %81

12:                                               ; preds = %2
  %13 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %14 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %13, i32 0, i32 3
  %15 = call i32 @ib_unregister_event_handler(i32* %14)
  %16 = load i32, i32* @ib_wq, align 4
  %17 = call i32 @flush_workqueue(i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %75, %12
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %21 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %24 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = icmp sle i32 %19, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %18
  %29 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %36 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call i32 @cancel_delayed_work_sync(i32* %41)
  %43 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ib_unregister_mad_agent(i32 %50)
  %52 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %53 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %34
  %62 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %63 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* @free_sm_ah, align 4
  %72 = call i32 @kref_put(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %34
  br label %74

74:                                               ; preds = %73, %28
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %18

78:                                               ; preds = %18
  %79 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %80 = call i32 @kfree(%struct.ib_sa_device* %79)
  br label %81

81:                                               ; preds = %78, %11
  ret void
}

declare dso_local i32 @ib_unregister_event_handler(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @rdma_cap_ib_sa(%struct.ib_device*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ib_sa_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
