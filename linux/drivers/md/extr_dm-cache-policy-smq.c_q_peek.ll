; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_peek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64 }
%struct.queue = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.queue*, i32, i32)* @q_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @q_peek(%struct.queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.entry*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.entry*, align 8
  store %struct.queue* %0, %struct.queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.queue*, %struct.queue** %5, align 8
  %12 = getelementptr inbounds %struct.queue, %struct.queue* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @min(i32 %10, i32 %13)
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %52, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load %struct.queue*, %struct.queue** %5, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.queue*, %struct.queue** %5, align 8
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call %struct.entry* @l_head(i32 %22, i64 %28)
  store %struct.entry* %29, %struct.entry** %9, align 8
  br label %30

30:                                               ; preds = %45, %19
  %31 = load %struct.entry*, %struct.entry** %9, align 8
  %32 = icmp ne %struct.entry* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.entry*, %struct.entry** %9, align 8
  %35 = getelementptr inbounds %struct.entry, %struct.entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %45

42:                                               ; preds = %38
  br label %51

43:                                               ; preds = %33
  %44 = load %struct.entry*, %struct.entry** %9, align 8
  store %struct.entry* %44, %struct.entry** %4, align 8
  br label %56

45:                                               ; preds = %41
  %46 = load %struct.queue*, %struct.queue** %5, align 8
  %47 = getelementptr inbounds %struct.queue, %struct.queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.entry*, %struct.entry** %9, align 8
  %50 = call %struct.entry* @l_next(i32 %48, %struct.entry* %49)
  store %struct.entry* %50, %struct.entry** %9, align 8
  br label %30

51:                                               ; preds = %42, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %15

55:                                               ; preds = %15
  store %struct.entry* null, %struct.entry** %4, align 8
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.entry*, %struct.entry** %4, align 8
  ret %struct.entry* %57
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.entry* @l_head(i32, i64) #1

declare dso_local %struct.entry* @l_next(i32, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
