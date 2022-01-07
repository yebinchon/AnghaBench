; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_atomic.c_msm_atomic_async_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_atomic.c_msm_atomic_async_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_kms*, i32)* @msm_atomic_async_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_atomic_async_commit(%struct.msm_kms* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_kms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msm_kms* %0, %struct.msm_kms** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @BIT(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @trace_msm_atomic_async_commit_start(i32 %8)
  %10 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %11 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %14 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %21 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %20, i32 0, i32 2
  %22 = call i32 @mutex_unlock(i32* %21)
  br label %83

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %27 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %31 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %33, align 8
  %35 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %36 = call i32 %34(%struct.msm_kms* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @trace_msm_atomic_flush_commit(i32 %37)
  %39 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %40 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)** %42, align 8
  %44 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 %43(%struct.msm_kms* %44, i32 %45)
  %47 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %48 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @trace_msm_atomic_wait_flush_start(i32 %50)
  %52 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %53 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)** %55, align 8
  %57 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 %56(%struct.msm_kms* %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @trace_msm_atomic_wait_flush_finish(i32 %60)
  %62 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %63 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %62, i32 0, i32 2
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %66 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)** %68, align 8
  %70 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 %69(%struct.msm_kms* %70, i32 %71)
  %73 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %74 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %77 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %79, align 8
  %81 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %82 = call i32 %80(%struct.msm_kms* %81)
  br label %83

83:                                               ; preds = %23, %19
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @trace_msm_atomic_async_commit_finish(i32 %84)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @trace_msm_atomic_async_commit_start(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_msm_atomic_flush_commit(i32) #1

declare dso_local i32 @trace_msm_atomic_wait_flush_start(i32) #1

declare dso_local i32 @trace_msm_atomic_wait_flush_finish(i32) #1

declare dso_local i32 @trace_msm_atomic_async_commit_finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
