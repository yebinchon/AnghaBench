; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___batch_hydration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___batch_hydration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batch_info = type { i32, %struct.dm_clone_region_hydration* }
%struct.dm_clone_region_hydration = type { i64, i32, %struct.clone* }
%struct.clone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batch_info*, %struct.dm_clone_region_hydration*)* @__batch_hydration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__batch_hydration(%struct.batch_info* %0, %struct.dm_clone_region_hydration* %1) #0 {
  %3 = alloca %struct.batch_info*, align 8
  %4 = alloca %struct.dm_clone_region_hydration*, align 8
  %5 = alloca %struct.clone*, align 8
  %6 = alloca i32, align 4
  store %struct.batch_info* %0, %struct.batch_info** %3, align 8
  store %struct.dm_clone_region_hydration* %1, %struct.dm_clone_region_hydration** %4, align 8
  %7 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %8 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %7, i32 0, i32 2
  %9 = load %struct.clone*, %struct.clone** %8, align 8
  store %struct.clone* %9, %struct.clone** %5, align 8
  %10 = load %struct.clone*, %struct.clone** %5, align 8
  %11 = getelementptr inbounds %struct.clone, %struct.clone* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %15 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %14, i32 0, i32 1
  %16 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %15, align 8
  %17 = icmp ne %struct.dm_clone_region_hydration* %16, null
  br i1 %17, label %18, label %73

18:                                               ; preds = %2
  %19 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %20 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %26 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %25, i32 0, i32 1
  %27 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %26, align 8
  %28 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %31 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %36 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %24
  %40 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %41 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %40, i32 0, i32 1
  %42 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %43 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %42, i32 0, i32 1
  %44 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %43, align 8
  %45 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %41, i32* %45)
  %47 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %48 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, i32* %48, align 8
  store %struct.dm_clone_region_hydration* null, %struct.dm_clone_region_hydration** %4, align 8
  br label %51

51:                                               ; preds = %39, %24, %18
  %52 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %53 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %59 = icmp ne %struct.dm_clone_region_hydration* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %57, %51
  %61 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %62 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %61, i32 0, i32 1
  %63 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %62, align 8
  %64 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %65 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @hydration_copy(%struct.dm_clone_region_hydration* %63, i32 %66)
  %68 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %69 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %68, i32 0, i32 1
  store %struct.dm_clone_region_hydration* null, %struct.dm_clone_region_hydration** %69, align 8
  %70 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %71 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %60, %57
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %75 = icmp ne %struct.dm_clone_region_hydration* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %96

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = icmp ule i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %82 = call i32 @hydration_copy(%struct.dm_clone_region_hydration* %81, i32 1)
  br label %96

83:                                               ; preds = %77
  %84 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %85 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %84, i32 0, i32 1
  %86 = call i32 @list_empty(i32* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %92 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %93 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %92, i32 0, i32 1
  store %struct.dm_clone_region_hydration* %91, %struct.dm_clone_region_hydration** %93, align 8
  %94 = load %struct.batch_info*, %struct.batch_info** %3, align 8
  %95 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %83, %80, %76
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hydration_copy(%struct.dm_clone_region_hydration*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
