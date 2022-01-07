; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_add_client_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_add_client_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, i64 }
%struct.client_resource = type { i32 }

@ECANCELED = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %struct.client_resource*, i32)* @add_client_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_client_resource(%struct.client* %0, %struct.client_resource* %1, i32 %2) #0 {
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.client_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %4, align 8
  store %struct.client_resource* %1, %struct.client_resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @gfpflags_allow_blocking(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @idr_preload(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.client*, %struct.client** %4, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.client*, %struct.client** %4, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @ECANCELED, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %35

29:                                               ; preds = %17
  %30 = load %struct.client*, %struct.client** %4, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 1
  %32 = load %struct.client_resource*, %struct.client_resource** %5, align 8
  %33 = load i32, i32* @GFP_NOWAIT, align 4
  %34 = call i32 @idr_alloc(i32* %31, %struct.client_resource* %32, i32 0, i32 0, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.client_resource*, %struct.client_resource** %5, align 8
  %41 = getelementptr inbounds %struct.client_resource, %struct.client_resource* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.client*, %struct.client** %4, align 8
  %43 = call i32 @client_get(%struct.client* %42)
  %44 = load %struct.client_resource*, %struct.client_resource** %5, align 8
  %45 = call i32 @schedule_if_iso_resource(%struct.client_resource* %44)
  br label %46

46:                                               ; preds = %38, %35
  %47 = load %struct.client*, %struct.client** %4, align 8
  %48 = getelementptr inbounds %struct.client, %struct.client* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @idr_preload_end()
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  br label %61

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  ret i32 %62
}

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc(i32*, %struct.client_resource*, i32, i32, i32) #1

declare dso_local i32 @client_get(%struct.client*) #1

declare dso_local i32 @schedule_if_iso_resource(%struct.client_resource*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
