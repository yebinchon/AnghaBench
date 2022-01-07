; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_set_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_set_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @raid_set_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_set_free(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %4 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %5 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @md_rdev_clear(i32* %12)
  %14 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %18 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dm_put_device(i32 %16, i64 %20)
  br label %22

22:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %84, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %26 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %23
  %30 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %31 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  %40 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %41 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %44 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dm_put_device(i32 %42, i64 %50)
  br label %52

52:                                               ; preds = %39, %29
  %53 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %54 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @md_rdev_clear(i32* %59)
  %61 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %62 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %52
  %71 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %72 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %75 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @dm_put_device(i32 %73, i64 %81)
  br label %83

83:                                               ; preds = %70, %52
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %23

87:                                               ; preds = %23
  %88 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %89 = call i32 @kfree(%struct.raid_set* %88)
  ret void
}

declare dso_local i32 @md_rdev_clear(i32*) #1

declare dso_local i32 @dm_put_device(i32, i64) #1

declare dso_local i32 @kfree(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
