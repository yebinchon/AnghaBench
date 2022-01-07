; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_dlm_lock_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_dlm_lock_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@sync_ast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock_resource*, i32)* @dlm_lock_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_lock_sync(%struct.dlm_lock_resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %11, i32 0, i32 2
  %13 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strlen(i32 %21)
  %23 = load i32, i32* @sync_ast, align 4
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dlm_lock(i32 %9, i32 %10, %struct.TYPE_2__* %12, i32 %15, i32 %18, i32 %22, i32 0, i32 %23, %struct.dlm_lock_resource* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %35 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %38 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wait_event(i32 %36, i32 %39)
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %44 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %51 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %33
  %53 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %31
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dlm_lock(i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
