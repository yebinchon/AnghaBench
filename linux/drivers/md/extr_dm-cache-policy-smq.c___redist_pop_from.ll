; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___redist_pop_from.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___redist_pop_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32 }
%struct.queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.queue*, i32)* @__redist_pop_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @__redist_pop_from(%struct.queue* %0, i32 %1) #0 {
  %3 = alloca %struct.entry*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.entry*, align 8
  store %struct.queue* %0, %struct.queue** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %53, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.queue*, %struct.queue** %4, align 8
  %10 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %7
  %14 = load %struct.queue*, %struct.queue** %4, align 8
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.queue*, %struct.queue** %4, align 8
  %18 = getelementptr inbounds %struct.queue, %struct.queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %19, %20
  %22 = call %struct.entry* @l_head(i32 %16, i32 %21)
  store %struct.entry* %22, %struct.entry** %6, align 8
  br label %23

23:                                               ; preds = %46, %13
  %24 = load %struct.entry*, %struct.entry** %6, align 8
  %25 = icmp ne %struct.entry* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load %struct.entry*, %struct.entry** %6, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load %struct.queue*, %struct.queue** %4, align 8
  %33 = getelementptr inbounds %struct.queue, %struct.queue* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.queue*, %struct.queue** %4, align 8
  %36 = getelementptr inbounds %struct.queue, %struct.queue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.entry*, %struct.entry** %6, align 8
  %39 = getelementptr inbounds %struct.entry, %struct.entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %37, %40
  %42 = load %struct.entry*, %struct.entry** %6, align 8
  %43 = call i32 @l_del(i32 %34, i32 %41, %struct.entry* %42)
  %44 = load %struct.entry*, %struct.entry** %6, align 8
  store %struct.entry* %44, %struct.entry** %3, align 8
  br label %57

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.queue*, %struct.queue** %4, align 8
  %48 = getelementptr inbounds %struct.queue, %struct.queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.entry*, %struct.entry** %6, align 8
  %51 = call %struct.entry* @l_next(i32 %49, %struct.entry* %50)
  store %struct.entry* %51, %struct.entry** %6, align 8
  br label %23

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %7

56:                                               ; preds = %7
  store %struct.entry* null, %struct.entry** %3, align 8
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.entry*, %struct.entry** %3, align 8
  ret %struct.entry* %58
}

declare dso_local %struct.entry* @l_head(i32, i32) #1

declare dso_local i32 @l_del(i32, i32, %struct.entry*) #1

declare dso_local %struct.entry* @l_next(i32, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
