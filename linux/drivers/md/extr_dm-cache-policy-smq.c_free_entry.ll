; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_free_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_alloc = type { i32, i32, i32 }
%struct.entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry_alloc*, %struct.entry*)* @free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_entry(%struct.entry_alloc* %0, %struct.entry* %1) #0 {
  %3 = alloca %struct.entry_alloc*, align 8
  %4 = alloca %struct.entry*, align 8
  store %struct.entry_alloc* %0, %struct.entry_alloc** %3, align 8
  store %struct.entry* %1, %struct.entry** %4, align 8
  %5 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %6 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.entry*, %struct.entry** %4, align 8
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %20 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.entry*, %struct.entry** %4, align 8
  %24 = getelementptr inbounds %struct.entry, %struct.entry* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %26 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.entry_alloc*, %struct.entry_alloc** %3, align 8
  %29 = getelementptr inbounds %struct.entry_alloc, %struct.entry_alloc* %28, i32 0, i32 0
  %30 = load %struct.entry*, %struct.entry** %4, align 8
  %31 = call i32 @l_add_tail(i32 %27, i32* %29, %struct.entry* %30)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @l_add_tail(i32, i32*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
