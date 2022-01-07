; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_l_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_space = type { i32 }
%struct.ilist = type { i32, i32, i32 }
%struct.entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry_space*, %struct.ilist*, %struct.entry*)* @l_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_del(%struct.entry_space* %0, %struct.ilist* %1, %struct.entry* %2) #0 {
  %4 = alloca %struct.entry_space*, align 8
  %5 = alloca %struct.ilist*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca %struct.entry*, align 8
  store %struct.entry_space* %0, %struct.entry_space** %4, align 8
  store %struct.ilist* %1, %struct.ilist** %5, align 8
  store %struct.entry* %2, %struct.entry** %6, align 8
  %9 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %10 = load %struct.entry*, %struct.entry** %6, align 8
  %11 = call %struct.entry* @l_prev(%struct.entry_space* %9, %struct.entry* %10)
  store %struct.entry* %11, %struct.entry** %7, align 8
  %12 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %13 = load %struct.entry*, %struct.entry** %6, align 8
  %14 = call %struct.entry* @l_next(%struct.entry_space* %12, %struct.entry* %13)
  store %struct.entry* %14, %struct.entry** %8, align 8
  %15 = load %struct.entry*, %struct.entry** %7, align 8
  %16 = icmp ne %struct.entry* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.entry*, %struct.entry** %6, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.entry*, %struct.entry** %7, align 8
  %22 = getelementptr inbounds %struct.entry, %struct.entry* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.entry*, %struct.entry** %6, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ilist*, %struct.ilist** %5, align 8
  %28 = getelementptr inbounds %struct.ilist, %struct.ilist* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.entry*, %struct.entry** %8, align 8
  %31 = icmp ne %struct.entry* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.entry*, %struct.entry** %6, align 8
  %34 = getelementptr inbounds %struct.entry, %struct.entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.entry*, %struct.entry** %8, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %44

38:                                               ; preds = %29
  %39 = load %struct.entry*, %struct.entry** %6, align 8
  %40 = getelementptr inbounds %struct.entry, %struct.entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ilist*, %struct.ilist** %5, align 8
  %43 = getelementptr inbounds %struct.ilist, %struct.ilist* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.entry*, %struct.entry** %6, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.ilist*, %struct.ilist** %5, align 8
  %51 = getelementptr inbounds %struct.ilist, %struct.ilist* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %44
  ret void
}

declare dso_local %struct.entry* @l_prev(%struct.entry_space*, %struct.entry*) #1

declare dso_local %struct.entry* @l_next(%struct.entry_space*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
