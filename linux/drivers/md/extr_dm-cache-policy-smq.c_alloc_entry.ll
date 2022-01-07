; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }
%struct.entry_alloc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.entry_alloc*)* @alloc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @alloc_entry(%struct.entry_alloc* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca %struct.entry_alloc*, align 8
  %4 = alloca %struct.entry*, align 8
  store %struct.entry_alloc* %0, %struct.entry_alloc** %3, align 8
  %5 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %6 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %5, i32 0, i32 1
  %7 = call i64 @l_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %12 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %15 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %14, i32 0, i32 1
  %16 = call %struct.entry* @l_pop_head(i32 %13, i32* %15)
  store %struct.entry* %16, %struct.entry** %4, align 8
  %17 = load %struct.entry*, %struct.entry** %4, align 8
  %18 = call i32 @init_entry(%struct.entry* %17)
  %19 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %20 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.entry*, %struct.entry** %4, align 8
  store %struct.entry* %23, %struct.entry** %2, align 8
  br label %24

24:                                               ; preds = %10, %9
  %25 = load %struct.entry*, %struct.entry** %2, align 8
  ret %struct.entry* %25
}

declare dso_local i64 @l_empty(i32*) #1

declare dso_local %struct.entry* @l_pop_head(i32, i32*) #1

declare dso_local i32 @init_entry(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
