; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_update_hotspot_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_update_hotspot_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32 }
%struct.smq_policy = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.smq_policy*, i32)* @update_hotspot_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @update_hotspot_queue(%struct.smq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.smq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @to_hblock(%struct.smq_policy* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %12 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %11, i32 0, i32 1
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.entry* @h_lookup(i32* %12, i32 %13)
  store %struct.entry* %14, %struct.entry** %7, align 8
  %15 = load %struct.entry*, %struct.entry** %7, align 8
  %16 = icmp ne %struct.entry* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %19 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %18, i32 0, i32 5
  %20 = load %struct.entry*, %struct.entry** %7, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @stats_level_accessed(i32* %19, i32 %22)
  %24 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %25 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %24, i32 0, i32 4
  %26 = load %struct.entry*, %struct.entry** %7, align 8
  %27 = call i32 @get_index(i32* %25, %struct.entry* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %29 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %28, i32 0, i32 2
  %30 = load %struct.entry*, %struct.entry** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %33 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @test_and_set_bit(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  br label %42

38:                                               ; preds = %17
  %39 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %40 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ 0, %37 ], [ %41, %38 ]
  %44 = call i32 @q_requeue(i32* %29, %struct.entry* %30, i32 %43, i32* null, i32* null)
  br label %91

45:                                               ; preds = %2
  %46 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %46, i32 0, i32 5
  %48 = call i32 @stats_miss(i32* %47)
  %49 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %50 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %49, i32 0, i32 4
  %51 = call %struct.entry* @alloc_entry(i32* %50)
  store %struct.entry* %51, %struct.entry** %7, align 8
  %52 = load %struct.entry*, %struct.entry** %7, align 8
  %53 = icmp ne %struct.entry* %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %45
  %55 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %56 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %55, i32 0, i32 2
  %57 = call %struct.entry* @q_pop(i32* %56)
  store %struct.entry* %57, %struct.entry** %7, align 8
  %58 = load %struct.entry*, %struct.entry** %7, align 8
  %59 = icmp ne %struct.entry* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %62 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %61, i32 0, i32 1
  %63 = load %struct.entry*, %struct.entry** %7, align 8
  %64 = call i32 @h_remove(i32* %62, %struct.entry* %63)
  %65 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %66 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %65, i32 0, i32 4
  %67 = load %struct.entry*, %struct.entry** %7, align 8
  %68 = call i32 @get_index(i32* %66, %struct.entry* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %71 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @clear_bit(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %60, %54
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.entry*, %struct.entry** %7, align 8
  %77 = icmp ne %struct.entry* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.entry*, %struct.entry** %7, align 8
  %81 = getelementptr inbounds %struct.entry, %struct.entry* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %83 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %82, i32 0, i32 2
  %84 = load %struct.entry*, %struct.entry** %7, align 8
  %85 = call i32 @q_push(i32* %83, %struct.entry* %84)
  %86 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %87 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %86, i32 0, i32 1
  %88 = load %struct.entry*, %struct.entry** %7, align 8
  %89 = call i32 @h_insert(i32* %87, %struct.entry* %88)
  br label %90

90:                                               ; preds = %78, %75
  br label %91

91:                                               ; preds = %90, %42
  %92 = load %struct.entry*, %struct.entry** %7, align 8
  ret %struct.entry* %92
}

declare dso_local i32 @to_hblock(%struct.smq_policy*, i32) #1

declare dso_local %struct.entry* @h_lookup(i32*, i32) #1

declare dso_local i32 @stats_level_accessed(i32*, i32) #1

declare dso_local i32 @get_index(i32*, %struct.entry*) #1

declare dso_local i32 @q_requeue(i32*, %struct.entry*, i32, i32*, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @stats_miss(i32*) #1

declare dso_local %struct.entry* @alloc_entry(i32*) #1

declare dso_local %struct.entry* @q_pop(i32*) #1

declare dso_local i32 @h_remove(i32*, %struct.entry*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @q_push(i32*, %struct.entry*) #1

declare dso_local i32 @h_insert(i32*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
