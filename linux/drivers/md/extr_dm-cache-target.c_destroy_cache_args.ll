; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_destroy_cache_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_destroy_cache_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_args = type { i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_args*)* @destroy_cache_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_cache_args(%struct.cache_args* %0) #0 {
  %2 = alloca %struct.cache_args*, align 8
  store %struct.cache_args* %0, %struct.cache_args** %2, align 8
  %3 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %4 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %9 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %12 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dm_put_device(i32 %10, i64 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %17 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %22 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %25 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dm_put_device(i32 %23, i64 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %30 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %35 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %38 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dm_put_device(i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.cache_args*, %struct.cache_args** %2, align 8
  %43 = call i32 @kfree(%struct.cache_args* %42)
  ret void
}

declare dso_local i32 @dm_put_device(i32, i64) #1

declare dso_local i32 @kfree(%struct.cache_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
