; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_core_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_core_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*)* @pblk_core_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_core_free(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %3 = load %struct.pblk*, %struct.pblk** %2, align 8
  %4 = getelementptr inbounds %struct.pblk, %struct.pblk* %3, i32 0, i32 9
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.pblk*, %struct.pblk** %2, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @destroy_workqueue(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.pblk*, %struct.pblk** %2, align 8
  %14 = getelementptr inbounds %struct.pblk, %struct.pblk* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.pblk*, %struct.pblk** %2, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @destroy_workqueue(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.pblk*, %struct.pblk** %2, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.pblk*, %struct.pblk** %2, align 8
  %29 = getelementptr inbounds %struct.pblk, %struct.pblk* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @destroy_workqueue(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.pblk*, %struct.pblk** %2, align 8
  %34 = getelementptr inbounds %struct.pblk, %struct.pblk* %33, i32 0, i32 6
  %35 = call i32 @mempool_exit(i32* %34)
  %36 = load %struct.pblk*, %struct.pblk** %2, align 8
  %37 = getelementptr inbounds %struct.pblk, %struct.pblk* %36, i32 0, i32 5
  %38 = call i32 @mempool_exit(i32* %37)
  %39 = load %struct.pblk*, %struct.pblk** %2, align 8
  %40 = getelementptr inbounds %struct.pblk, %struct.pblk* %39, i32 0, i32 4
  %41 = call i32 @mempool_exit(i32* %40)
  %42 = load %struct.pblk*, %struct.pblk** %2, align 8
  %43 = getelementptr inbounds %struct.pblk, %struct.pblk* %42, i32 0, i32 3
  %44 = call i32 @mempool_exit(i32* %43)
  %45 = load %struct.pblk*, %struct.pblk** %2, align 8
  %46 = getelementptr inbounds %struct.pblk, %struct.pblk* %45, i32 0, i32 2
  %47 = call i32 @mempool_exit(i32* %46)
  %48 = load %struct.pblk*, %struct.pblk** %2, align 8
  %49 = getelementptr inbounds %struct.pblk, %struct.pblk* %48, i32 0, i32 1
  %50 = call i32 @mempool_exit(i32* %49)
  %51 = call i32 (...) @pblk_put_global_caches()
  %52 = load %struct.pblk*, %struct.pblk** %2, align 8
  %53 = getelementptr inbounds %struct.pblk, %struct.pblk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kfree(i32 %54)
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @pblk_put_global_caches(...) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
