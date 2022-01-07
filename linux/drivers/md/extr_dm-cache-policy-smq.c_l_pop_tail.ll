; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_pop_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_pop_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }
%struct.entry_space = type { i32 }
%struct.ilist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.entry_space*, %struct.ilist*)* @l_pop_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @l_pop_tail(%struct.entry_space* %0, %struct.ilist* %1) #0 {
  %3 = alloca %struct.entry*, align 8
  %4 = alloca %struct.entry_space*, align 8
  %5 = alloca %struct.ilist*, align 8
  %6 = alloca %struct.entry*, align 8
  store %struct.entry_space* %0, %struct.entry_space** %4, align 8
  store %struct.ilist* %1, %struct.ilist** %5, align 8
  %7 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %8 = load %struct.ilist*, %struct.ilist** %5, align 8
  %9 = call %struct.entry* @l_tail(%struct.entry_space* %7, %struct.ilist* %8)
  store %struct.entry* %9, %struct.entry** %6, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.entry*, %struct.entry** %6, align 8
  %12 = icmp ne %struct.entry* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.entry*, %struct.entry** %6, align 8
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %20 = load %struct.ilist*, %struct.ilist** %5, align 8
  %21 = load %struct.entry*, %struct.entry** %6, align 8
  %22 = call i32 @l_del(%struct.entry_space* %19, %struct.ilist* %20, %struct.entry* %21)
  %23 = load %struct.entry*, %struct.entry** %6, align 8
  store %struct.entry* %23, %struct.entry** %3, align 8
  br label %30

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %27 = load %struct.entry*, %struct.entry** %6, align 8
  %28 = call %struct.entry* @l_prev(%struct.entry_space* %26, %struct.entry* %27)
  store %struct.entry* %28, %struct.entry** %6, align 8
  br label %10

29:                                               ; preds = %10
  store %struct.entry* null, %struct.entry** %3, align 8
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.entry*, %struct.entry** %3, align 8
  ret %struct.entry* %31
}

declare dso_local %struct.entry* @l_tail(%struct.entry_space*, %struct.ilist*) #1

declare dso_local i32 @l_del(%struct.entry_space*, %struct.ilist*, %struct.entry*) #1

declare dso_local %struct.entry* @l_prev(%struct.entry_space*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
