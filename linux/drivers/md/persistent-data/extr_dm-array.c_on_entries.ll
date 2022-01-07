; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_on_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_on_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.array_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_array_info*, %struct.array_block*, void (i8*, i8*)*)* @on_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_entries(%struct.dm_array_info* %0, %struct.array_block* %1, void (i8*, i8*)* %2) #0 {
  %4 = alloca %struct.dm_array_info*, align 8
  %5 = alloca %struct.array_block*, align 8
  %6 = alloca void (i8*, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %4, align 8
  store %struct.array_block* %1, %struct.array_block** %5, align 8
  store void (i8*, i8*)* %2, void (i8*, i8*)** %6, align 8
  %9 = load %struct.array_block*, %struct.array_block** %5, align 8
  %10 = getelementptr inbounds %struct.array_block, %struct.array_block* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  %19 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %20 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %24 = load %struct.array_block*, %struct.array_block** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @element_at(%struct.dm_array_info* %23, %struct.array_block* %24, i32 %25)
  call void %18(i8* %22, i8* %26)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %13

30:                                               ; preds = %13
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @element_at(%struct.dm_array_info*, %struct.array_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
