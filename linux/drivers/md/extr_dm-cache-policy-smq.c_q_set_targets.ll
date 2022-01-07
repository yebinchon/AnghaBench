; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_set_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_set_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue*)* @q_set_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q_set_targets(%struct.queue* %0) #0 {
  %2 = alloca %struct.queue*, align 8
  store %struct.queue* %0, %struct.queue** %2, align 8
  %3 = load %struct.queue*, %struct.queue** %2, align 8
  %4 = getelementptr inbounds %struct.queue, %struct.queue* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.queue*, %struct.queue** %2, align 8
  %7 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.queue*, %struct.queue** %2, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.queue*, %struct.queue** %2, align 8
  %16 = getelementptr inbounds %struct.queue, %struct.queue* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.queue*, %struct.queue** %2, align 8
  %18 = getelementptr inbounds %struct.queue, %struct.queue* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.queue*, %struct.queue** %2, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %11
  %25 = load %struct.queue*, %struct.queue** %2, align 8
  %26 = load %struct.queue*, %struct.queue** %2, align 8
  %27 = getelementptr inbounds %struct.queue, %struct.queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.queue*, %struct.queue** %2, align 8
  %30 = getelementptr inbounds %struct.queue, %struct.queue* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @q_set_targets_subrange_(%struct.queue* %25, i64 %28, i64 0, i64 %31)
  br label %84

33:                                               ; preds = %11
  %34 = load %struct.queue*, %struct.queue** %2, align 8
  %35 = load %struct.queue*, %struct.queue** %2, align 8
  %36 = getelementptr inbounds %struct.queue, %struct.queue* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.queue*, %struct.queue** %2, align 8
  %39 = getelementptr inbounds %struct.queue, %struct.queue* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.queue*, %struct.queue** %2, align 8
  %42 = getelementptr inbounds %struct.queue, %struct.queue* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.queue*, %struct.queue** %2, align 8
  %46 = getelementptr inbounds %struct.queue, %struct.queue* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @q_set_targets_subrange_(%struct.queue* %34, i64 %37, i64 %44, i64 %47)
  %49 = load %struct.queue*, %struct.queue** %2, align 8
  %50 = getelementptr inbounds %struct.queue, %struct.queue* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.queue*, %struct.queue** %2, align 8
  %53 = getelementptr inbounds %struct.queue, %struct.queue* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %33
  %57 = load %struct.queue*, %struct.queue** %2, align 8
  %58 = load %struct.queue*, %struct.queue** %2, align 8
  %59 = getelementptr inbounds %struct.queue, %struct.queue* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.queue*, %struct.queue** %2, align 8
  %62 = getelementptr inbounds %struct.queue, %struct.queue* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.queue*, %struct.queue** %2, align 8
  %66 = getelementptr inbounds %struct.queue, %struct.queue* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.queue*, %struct.queue** %2, align 8
  %69 = getelementptr inbounds %struct.queue, %struct.queue* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = call i32 @q_set_targets_subrange_(%struct.queue* %57, i64 %64, i64 0, i64 %71)
  br label %83

73:                                               ; preds = %33
  %74 = load %struct.queue*, %struct.queue** %2, align 8
  %75 = load %struct.queue*, %struct.queue** %2, align 8
  %76 = getelementptr inbounds %struct.queue, %struct.queue* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.queue*, %struct.queue** %2, align 8
  %79 = getelementptr inbounds %struct.queue, %struct.queue* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call i32 @q_set_targets_subrange_(%struct.queue* %74, i64 0, i64 0, i64 %81)
  br label %83

83:                                               ; preds = %73, %56
  br label %84

84:                                               ; preds = %10, %83, %24
  ret void
}

declare dso_local i32 @q_set_targets_subrange_(%struct.queue*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
