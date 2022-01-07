; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.mddev = type { i32, i64, %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.md_rdev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c" %dK chunks\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" %d near-copies\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" %d offset-copies\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" %d far-copies\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" %d devices per set\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" [%d/%d] [\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@In_sync = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.mddev*)* @raid10_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_status(%struct.seq_file* %0, %struct.mddev* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.mddev* %1, %struct.mddev** %4, align 8
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 2
  %10 = load %struct.r10conf*, %struct.r10conf** %9, align 8
  store %struct.r10conf* %10, %struct.r10conf** %5, align 8
  %11 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %12 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.mddev*, %struct.mddev** %4, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 2
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %36 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %42 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %84

46:                                               ; preds = %40
  %47 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %48 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %55 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %66

59:                                               ; preds = %46
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %62 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %68 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %72 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %79 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76, %66
  br label %84

84:                                               ; preds = %83, %40
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %87 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %91 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.mddev*, %struct.mddev** %4, align 8
  %96 = getelementptr inbounds %struct.mddev, %struct.mddev* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %89, i64 %98)
  %100 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %132, %84
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %104 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %110 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.md_rdev* @rcu_dereference(i32 %116)
  store %struct.md_rdev* %117, %struct.md_rdev** %7, align 8
  %118 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %119 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %120 = icmp ne %struct.md_rdev* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %108
  %122 = load i32, i32* @In_sync, align 4
  %123 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %124 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %123, i32 0, i32 0
  %125 = call i64 @test_bit(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %121, %108
  %128 = phi i1 [ false, %108 ], [ %126, %121 ]
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %131 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %101

135:                                              ; preds = %101
  %136 = call i32 (...) @rcu_read_unlock()
  %137 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %138 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
