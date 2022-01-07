; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_finish_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_finish_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.md_rdev = type { i32 }

@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @raid10_finish_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_finish_reshape(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %6 = load %struct.mddev*, %struct.mddev** %2, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 10
  %8 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  store %struct.r10conf* %8, %struct.r10conf** %3, align 8
  %9 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %10 = load %struct.mddev*, %struct.mddev** %2, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 9
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %123

15:                                               ; preds = %1
  %16 = load %struct.mddev*, %struct.mddev** %2, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.mddev*, %struct.mddev** %2, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mddev*, %struct.mddev** %2, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %35 = load %struct.mddev*, %struct.mddev** %2, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 9
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %28, %20
  %39 = load %struct.mddev*, %struct.mddev** %2, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mddev*, %struct.mddev** %2, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %103

44:                                               ; preds = %15
  %45 = call i32 (...) @rcu_read_lock()
  %46 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %47 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %98, %44
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %54 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.mddev*, %struct.mddev** %2, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = icmp slt i64 %52, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %50
  %64 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %65 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.md_rdev* @rcu_dereference(i32 %71)
  store %struct.md_rdev* %72, %struct.md_rdev** %5, align 8
  %73 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %74 = icmp ne %struct.md_rdev* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load i32, i32* @In_sync, align 4
  %77 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %78 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %77, i32 0, i32 0
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %75, %63
  %81 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %82 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.md_rdev* @rcu_dereference(i32 %88)
  store %struct.md_rdev* %89, %struct.md_rdev** %5, align 8
  %90 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %91 = icmp ne %struct.md_rdev* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load i32, i32* @In_sync, align 4
  %94 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %95 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %94, i32 0, i32 0
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %92, %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %50

101:                                              ; preds = %50
  %102 = call i32 (...) @rcu_read_unlock()
  br label %103

103:                                              ; preds = %101, %38
  %104 = load %struct.mddev*, %struct.mddev** %2, align 8
  %105 = getelementptr inbounds %struct.mddev, %struct.mddev* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mddev*, %struct.mddev** %2, align 8
  %108 = getelementptr inbounds %struct.mddev, %struct.mddev* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  %109 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %110 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 1, %112
  %114 = load %struct.mddev*, %struct.mddev** %2, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @MaxSector, align 4
  %117 = load %struct.mddev*, %struct.mddev** %2, align 8
  %118 = getelementptr inbounds %struct.mddev, %struct.mddev* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mddev*, %struct.mddev** %2, align 8
  %120 = getelementptr inbounds %struct.mddev, %struct.mddev* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.mddev*, %struct.mddev** %2, align 8
  %122 = getelementptr inbounds %struct.mddev, %struct.mddev* %121, i32 0, i32 5
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %103, %14
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
