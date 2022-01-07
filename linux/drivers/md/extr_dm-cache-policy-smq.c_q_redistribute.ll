; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_redistribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_redistribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32, i32*, i32, %struct.ilist* }
%struct.ilist = type { i32 }
%struct.entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue*)* @q_redistribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q_redistribute(%struct.queue* %0) #0 {
  %2 = alloca %struct.queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ilist*, align 8
  %6 = alloca %struct.ilist*, align 8
  %7 = alloca %struct.entry*, align 8
  store %struct.queue* %0, %struct.queue** %2, align 8
  %8 = load %struct.queue*, %struct.queue** %2, align 8
  %9 = call i32 @q_set_targets(%struct.queue* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %90, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.queue*, %struct.queue** %2, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub i32 %14, 1
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %93

17:                                               ; preds = %10
  %18 = load %struct.queue*, %struct.queue** %2, align 8
  %19 = getelementptr inbounds %struct.queue, %struct.queue* %18, i32 0, i32 3
  %20 = load %struct.ilist*, %struct.ilist** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ilist, %struct.ilist* %20, i64 %22
  store %struct.ilist* %23, %struct.ilist** %5, align 8
  %24 = load %struct.queue*, %struct.queue** %2, align 8
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %45, %17
  %32 = load %struct.ilist*, %struct.ilist** %5, align 8
  %33 = getelementptr inbounds %struct.ilist, %struct.ilist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.queue*, %struct.queue** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  %41 = call %struct.entry* @__redist_pop_from(%struct.queue* %38, i32 %40)
  store %struct.entry* %41, %struct.entry** %7, align 8
  %42 = load %struct.entry*, %struct.entry** %7, align 8
  %43 = icmp ne %struct.entry* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %55

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.entry*, %struct.entry** %7, align 8
  %48 = getelementptr inbounds %struct.entry, %struct.entry* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.queue*, %struct.queue** %2, align 8
  %50 = getelementptr inbounds %struct.queue, %struct.queue* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ilist*, %struct.ilist** %5, align 8
  %53 = load %struct.entry*, %struct.entry** %7, align 8
  %54 = call i32 @l_add_tail(i32 %51, %struct.ilist* %52, %struct.entry* %53)
  br label %31

55:                                               ; preds = %44, %31
  %56 = load %struct.queue*, %struct.queue** %2, align 8
  %57 = getelementptr inbounds %struct.queue, %struct.queue* %56, i32 0, i32 3
  %58 = load %struct.ilist*, %struct.ilist** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ilist, %struct.ilist* %58, i64 %60
  %62 = getelementptr inbounds %struct.ilist, %struct.ilist* %61, i64 1
  store %struct.ilist* %62, %struct.ilist** %6, align 8
  br label %63

63:                                               ; preds = %78, %55
  %64 = load %struct.ilist*, %struct.ilist** %5, align 8
  %65 = getelementptr inbounds %struct.ilist, %struct.ilist* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load %struct.queue*, %struct.queue** %2, align 8
  %71 = getelementptr inbounds %struct.queue, %struct.queue* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ilist*, %struct.ilist** %5, align 8
  %74 = call %struct.entry* @l_pop_tail(i32 %72, %struct.ilist* %73)
  store %struct.entry* %74, %struct.entry** %7, align 8
  %75 = load %struct.entry*, %struct.entry** %7, align 8
  %76 = icmp ne %struct.entry* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %89

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  %81 = load %struct.entry*, %struct.entry** %7, align 8
  %82 = getelementptr inbounds %struct.entry, %struct.entry* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.queue*, %struct.queue** %2, align 8
  %84 = getelementptr inbounds %struct.queue, %struct.queue* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ilist*, %struct.ilist** %6, align 8
  %87 = load %struct.entry*, %struct.entry** %7, align 8
  %88 = call i32 @l_add_tail(i32 %85, %struct.ilist* %86, %struct.entry* %87)
  br label %63

89:                                               ; preds = %77, %63
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %4, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %10

93:                                               ; preds = %10
  ret void
}

declare dso_local i32 @q_set_targets(%struct.queue*) #1

declare dso_local %struct.entry* @__redist_pop_from(%struct.queue*, i32) #1

declare dso_local i32 @l_add_tail(i32, %struct.ilist*, %struct.entry*) #1

declare dso_local %struct.entry* @l_pop_tail(i32, %struct.ilist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
