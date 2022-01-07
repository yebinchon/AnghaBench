; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_add_before.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_add_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_space = type { i32 }
%struct.ilist = type { i32 }
%struct.entry = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry_space*, %struct.ilist*, %struct.entry*, %struct.entry*)* @l_add_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_add_before(%struct.entry_space* %0, %struct.ilist* %1, %struct.entry* %2, %struct.entry* %3) #0 {
  %5 = alloca %struct.entry_space*, align 8
  %6 = alloca %struct.ilist*, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca %struct.entry*, align 8
  %9 = alloca %struct.entry*, align 8
  store %struct.entry_space* %0, %struct.entry_space** %5, align 8
  store %struct.ilist* %1, %struct.ilist** %6, align 8
  store %struct.entry* %2, %struct.entry** %7, align 8
  store %struct.entry* %3, %struct.entry** %8, align 8
  %10 = load %struct.entry_space*, %struct.entry_space** %5, align 8
  %11 = load %struct.entry*, %struct.entry** %7, align 8
  %12 = call %struct.entry* @l_prev(%struct.entry_space* %10, %struct.entry* %11)
  store %struct.entry* %12, %struct.entry** %9, align 8
  %13 = load %struct.entry*, %struct.entry** %9, align 8
  %14 = icmp ne %struct.entry* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.entry_space*, %struct.entry_space** %5, align 8
  %17 = load %struct.ilist*, %struct.ilist** %6, align 8
  %18 = load %struct.entry*, %struct.entry** %8, align 8
  %19 = call i32 @l_add_head(%struct.entry_space* %16, %struct.ilist* %17, %struct.entry* %18)
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.entry*, %struct.entry** %7, align 8
  %22 = getelementptr inbounds %struct.entry, %struct.entry* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.entry*, %struct.entry** %8, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.entry_space*, %struct.entry_space** %5, align 8
  %27 = load %struct.entry*, %struct.entry** %7, align 8
  %28 = call i8* @to_index(%struct.entry_space* %26, %struct.entry* %27)
  %29 = load %struct.entry*, %struct.entry** %8, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.entry_space*, %struct.entry_space** %5, align 8
  %32 = load %struct.entry*, %struct.entry** %8, align 8
  %33 = call i8* @to_index(%struct.entry_space* %31, %struct.entry* %32)
  %34 = load %struct.entry*, %struct.entry** %7, align 8
  %35 = getelementptr inbounds %struct.entry, %struct.entry* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.entry*, %struct.entry** %9, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 2
  store i8* %33, i8** %37, align 8
  %38 = load %struct.entry*, %struct.entry** %8, align 8
  %39 = getelementptr inbounds %struct.entry, %struct.entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %20
  %43 = load %struct.ilist*, %struct.ilist** %6, align 8
  %44 = getelementptr inbounds %struct.ilist, %struct.ilist* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %20
  br label %48

48:                                               ; preds = %47, %15
  ret void
}

declare dso_local %struct.entry* @l_prev(%struct.entry_space*, %struct.entry*) #1

declare dso_local i32 @l_add_head(%struct.entry_space*, %struct.ilist*, %struct.entry*) #1

declare dso_local i8* @to_index(%struct.entry_space*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
