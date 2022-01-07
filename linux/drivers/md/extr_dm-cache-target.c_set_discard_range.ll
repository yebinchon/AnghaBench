; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_discard_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_discard_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discard_load_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.discard_load_info*)* @set_discard_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_discard_range(%struct.discard_load_info* %0) #0 {
  %2 = alloca %struct.discard_load_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.discard_load_info* %0, %struct.discard_load_info** %2, align 8
  %5 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %6 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %9 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %15 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %18 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %22 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %25 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %30 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dm_sector_div_up(i32 %28, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %37 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sector_div(i32 %35, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %44 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @from_dblock(i32 %47)
  %49 = icmp sgt i32 %42, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %13
  %51 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %52 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @from_dblock(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %13
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.discard_load_info*, %struct.discard_load_info** %2, align 8
  %64 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @to_dblock(i32 %66)
  %68 = call i32 @set_discard(%struct.TYPE_2__* %65, i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %58

72:                                               ; preds = %12, %58
  ret void
}

declare dso_local i32 @dm_sector_div_up(i32, i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @from_dblock(i32) #1

declare dso_local i32 @set_discard(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @to_dblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
