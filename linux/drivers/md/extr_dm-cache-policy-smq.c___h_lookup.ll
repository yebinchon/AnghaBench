; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___h_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___h_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64 }
%struct.smq_hash_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.smq_hash_table*, i32, i64, %struct.entry**)* @__h_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @__h_lookup(%struct.smq_hash_table* %0, i32 %1, i64 %2, %struct.entry** %3) #0 {
  %5 = alloca %struct.entry*, align 8
  %6 = alloca %struct.smq_hash_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.entry**, align 8
  %10 = alloca %struct.entry*, align 8
  store %struct.smq_hash_table* %0, %struct.smq_hash_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.entry** %3, %struct.entry*** %9, align 8
  %11 = load %struct.entry**, %struct.entry*** %9, align 8
  store %struct.entry* null, %struct.entry** %11, align 8
  %12 = load %struct.smq_hash_table*, %struct.smq_hash_table** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.entry* @h_head(%struct.smq_hash_table* %12, i32 %13)
  store %struct.entry* %14, %struct.entry** %10, align 8
  br label %15

15:                                               ; preds = %29, %4
  %16 = load %struct.entry*, %struct.entry** %10, align 8
  %17 = icmp ne %struct.entry* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.entry*, %struct.entry** %10, align 8
  %20 = getelementptr inbounds %struct.entry, %struct.entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.entry*, %struct.entry** %10, align 8
  store %struct.entry* %25, %struct.entry** %5, align 8
  br label %34

26:                                               ; preds = %18
  %27 = load %struct.entry*, %struct.entry** %10, align 8
  %28 = load %struct.entry**, %struct.entry*** %9, align 8
  store %struct.entry* %27, %struct.entry** %28, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.smq_hash_table*, %struct.smq_hash_table** %6, align 8
  %31 = load %struct.entry*, %struct.entry** %10, align 8
  %32 = call %struct.entry* @h_next(%struct.smq_hash_table* %30, %struct.entry* %31)
  store %struct.entry* %32, %struct.entry** %10, align 8
  br label %15

33:                                               ; preds = %15
  store %struct.entry* null, %struct.entry** %5, align 8
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.entry*, %struct.entry** %5, align 8
  ret %struct.entry* %35
}

declare dso_local %struct.entry* @h_head(%struct.smq_hash_table*, i32) #1

declare dso_local %struct.entry* @h_next(%struct.smq_hash_table*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
