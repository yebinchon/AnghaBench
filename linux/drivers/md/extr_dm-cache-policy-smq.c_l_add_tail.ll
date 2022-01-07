; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_add_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_space = type { i32 }
%struct.ilist = type { i32, i8*, i8* }
%struct.entry = type { i32, i8*, i8* }

@INDEXER_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry_space*, %struct.ilist*, %struct.entry*)* @l_add_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_add_tail(%struct.entry_space* %0, %struct.ilist* %1, %struct.entry* %2) #0 {
  %4 = alloca %struct.entry_space*, align 8
  %5 = alloca %struct.ilist*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.entry*, align 8
  store %struct.entry_space* %0, %struct.entry_space** %4, align 8
  store %struct.ilist* %1, %struct.ilist** %5, align 8
  store %struct.entry* %2, %struct.entry** %6, align 8
  %8 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %9 = load %struct.ilist*, %struct.ilist** %5, align 8
  %10 = call %struct.entry* @l_tail(%struct.entry_space* %8, %struct.ilist* %9)
  store %struct.entry* %10, %struct.entry** %7, align 8
  %11 = load i8*, i8** @INDEXER_NULL, align 8
  %12 = load %struct.entry*, %struct.entry** %6, align 8
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.ilist*, %struct.ilist** %5, align 8
  %15 = getelementptr inbounds %struct.ilist, %struct.ilist* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.entry*, %struct.entry** %6, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.entry*, %struct.entry** %7, align 8
  %20 = icmp ne %struct.entry* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %23 = load %struct.entry*, %struct.entry** %6, align 8
  %24 = call i8* @to_index(%struct.entry_space* %22, %struct.entry* %23)
  %25 = load %struct.ilist*, %struct.ilist** %5, align 8
  %26 = getelementptr inbounds %struct.ilist, %struct.ilist* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.entry*, %struct.entry** %7, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  br label %37

29:                                               ; preds = %3
  %30 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %31 = load %struct.entry*, %struct.entry** %6, align 8
  %32 = call i8* @to_index(%struct.entry_space* %30, %struct.entry* %31)
  %33 = load %struct.ilist*, %struct.ilist** %5, align 8
  %34 = getelementptr inbounds %struct.ilist, %struct.ilist* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ilist*, %struct.ilist** %5, align 8
  %36 = getelementptr inbounds %struct.ilist, %struct.ilist* %35, i32 0, i32 2
  store i8* %32, i8** %36, align 8
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.entry*, %struct.entry** %6, align 8
  %39 = getelementptr inbounds %struct.entry, %struct.entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.ilist*, %struct.ilist** %5, align 8
  %44 = getelementptr inbounds %struct.ilist, %struct.ilist* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  ret void
}

declare dso_local %struct.entry* @l_tail(%struct.entry_space*, %struct.ilist*) #1

declare dso_local i8* @to_index(%struct.entry_space*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
