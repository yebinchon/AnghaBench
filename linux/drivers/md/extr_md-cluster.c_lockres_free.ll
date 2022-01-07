; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_lockres_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_lockres_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { %struct.TYPE_2__, %struct.dlm_lock_resource*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.dlm_lock_resource*, i32 }

@DLM_LKF_FORCEUNLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to unlock %s return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock_resource*)* @lockres_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockres_free(%struct.dlm_lock_resource* %0) #0 {
  %2 = alloca %struct.dlm_lock_resource*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %5 = icmp ne %struct.dlm_lock_resource* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %51

7:                                                ; preds = %1
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %9 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DLM_LKF_FORCEUNLOCK, align 4
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %17 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %16, i32 0, i32 0
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %19 = call i32 @dlm_unlock(i32 %10, i32 %14, i32 %15, %struct.TYPE_2__* %17, %struct.dlm_lock_resource* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %7
  %26 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %27 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %26, i32 0, i32 1
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.dlm_lock_resource* %28, i32 %29)
  br label %39

31:                                               ; preds = %7
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wait_event(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %25
  %40 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %41 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %40, i32 0, i32 1
  %42 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %41, align 8
  %43 = call i32 @kfree(%struct.dlm_lock_resource* %42)
  %44 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %45 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %46, align 8
  %48 = call i32 @kfree(%struct.dlm_lock_resource* %47)
  %49 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %50 = call i32 @kfree(%struct.dlm_lock_resource* %49)
  br label %51

51:                                               ; preds = %39, %6
  ret void
}

declare dso_local i32 @dlm_unlock(i32, i32, i32, %struct.TYPE_2__*, %struct.dlm_lock_resource*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @kfree(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
