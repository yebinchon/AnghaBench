; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }
%struct.entry_space = type { i32 }
%struct.ilist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.entry_space*, %struct.ilist*)* @l_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @l_head(%struct.entry_space* %0, %struct.ilist* %1) #0 {
  %3 = alloca %struct.entry_space*, align 8
  %4 = alloca %struct.ilist*, align 8
  store %struct.entry_space* %0, %struct.entry_space** %3, align 8
  store %struct.ilist* %1, %struct.ilist** %4, align 8
  %5 = load %struct.entry_space*, %struct.entry_space** %3, align 8
  %6 = load %struct.ilist*, %struct.ilist** %4, align 8
  %7 = getelementptr inbounds %struct.ilist, %struct.ilist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.entry* @to_entry(%struct.entry_space* %5, i32 %8)
  ret %struct.entry* %9
}

declare dso_local %struct.entry* @to_entry(%struct.entry_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
