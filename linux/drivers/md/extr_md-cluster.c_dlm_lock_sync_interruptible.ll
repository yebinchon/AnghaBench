; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_dlm_lock_sync_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_dlm_lock_sync_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mddev = type { i32 }

@sync_ast = common dso_local global i32 0, align 4
@MD_CLOSING = common dso_local global i32 0, align 4
@DLM_LKF_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to cancel previous lock request %s return %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock_resource*, i32, %struct.mddev*)* @dlm_lock_sync_interruptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_lock_sync_interruptible(%struct.dlm_lock_resource* %0, i32 %1, %struct.mddev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mddev* %2, %struct.mddev** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %14 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %13, i32 0, i32 2
  %15 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strlen(i32 %23)
  %25 = load i32, i32* @sync_ast, align 4
  %26 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dlm_lock(i32 %11, i32 %12, %struct.TYPE_3__* %14, i32 %17, i32 %20, i32 %24, i32 0, i32 %25, %struct.dlm_lock_resource* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %108

35:                                               ; preds = %3
  %36 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %37 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %40 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = call i64 (...) @kthread_should_stop()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @MD_CLOSING, align 4
  %48 = load %struct.mddev*, %struct.mddev** %7, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %46, %43, %35
  %53 = phi i1 [ true, %43 ], [ true, %35 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @wait_event(i32 %38, i32 %54)
  %56 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %57 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %52
  %61 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %62 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %65 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 2
  %71 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %72 = call i32 @dlm_unlock(i32 %63, i32 %67, i32 %68, %struct.TYPE_3__* %70, %struct.dlm_lock_resource* %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %60
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %82 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %60
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %108

89:                                               ; preds = %52
  %90 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %91 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %94 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %101 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %92
  %103 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %104 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %86, %33
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @dlm_lock(i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dlm_unlock(i32, i32, i32, %struct.TYPE_3__*, %struct.dlm_lock_resource*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
