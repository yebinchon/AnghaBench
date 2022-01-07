; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_h_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_h_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }
%struct.smq_hash_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.smq_hash_table*, i32)* @h_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @h_lookup(%struct.smq_hash_table* %0, i32 %1) #0 {
  %3 = alloca %struct.smq_hash_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.entry*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca i32, align 4
  store %struct.smq_hash_table* %0, %struct.smq_hash_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @from_oblock(i32 %8)
  %10 = load %struct.smq_hash_table*, %struct.smq_hash_table** %3, align 8
  %11 = getelementptr inbounds %struct.smq_hash_table, %struct.smq_hash_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hash_64(i32 %9, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.smq_hash_table*, %struct.smq_hash_table** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.entry* @__h_lookup(%struct.smq_hash_table* %14, i32 %15, i32 %16, %struct.entry** %6)
  store %struct.entry* %17, %struct.entry** %5, align 8
  %18 = load %struct.entry*, %struct.entry** %5, align 8
  %19 = icmp ne %struct.entry* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.entry*, %struct.entry** %6, align 8
  %22 = icmp ne %struct.entry* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.smq_hash_table*, %struct.smq_hash_table** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.entry*, %struct.entry** %5, align 8
  %27 = load %struct.entry*, %struct.entry** %6, align 8
  %28 = call i32 @__h_unlink(%struct.smq_hash_table* %24, i32 %25, %struct.entry* %26, %struct.entry* %27)
  %29 = load %struct.smq_hash_table*, %struct.smq_hash_table** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.entry*, %struct.entry** %5, align 8
  %32 = call i32 @__h_insert(%struct.smq_hash_table* %29, i32 %30, %struct.entry* %31)
  br label %33

33:                                               ; preds = %23, %20, %2
  %34 = load %struct.entry*, %struct.entry** %5, align 8
  ret %struct.entry* %34
}

declare dso_local i32 @hash_64(i32, i32) #1

declare dso_local i32 @from_oblock(i32) #1

declare dso_local %struct.entry* @__h_lookup(%struct.smq_hash_table*, i32, i32, %struct.entry**) #1

declare dso_local i32 @__h_unlink(%struct.smq_hash_table*, i32, %struct.entry*, %struct.entry*) #1

declare dso_local i32 @__h_insert(%struct.smq_hash_table*, i32, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
