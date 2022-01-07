; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_regular_request_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_regular_request_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }
%struct.r10conf = type { i64, i32, i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wait reshape\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r10conf*, %struct.bio*, i64)* @regular_request_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regular_request_wait(%struct.mddev* %0, %struct.r10conf* %1, %struct.bio* %2, i64 %3) #0 {
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store %struct.r10conf* %1, %struct.r10conf** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %10 = call i32 @wait_barrier(%struct.r10conf* %9)
  br label %11

11:                                               ; preds = %68, %4
  %12 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %13 = load %struct.mddev*, %struct.mddev** %5, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.bio*, %struct.bio** %7, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br label %37

37:                                               ; preds = %26, %17, %11
  %38 = phi i1 [ false, %17 ], [ false, %11 ], [ %36, %26 ]
  br i1 %38, label %39, label %74

39:                                               ; preds = %37
  %40 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %41 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @raid10_log(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %45 = call i32 @allow_barrier(%struct.r10conf* %44)
  %46 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %47 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %50 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bio*, %struct.bio** %7, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %51, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %39
  %58 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %59 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bio*, %struct.bio** %7, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %64, %65
  %67 = icmp sge i64 %60, %66
  br label %68

68:                                               ; preds = %57, %39
  %69 = phi i1 [ true, %39 ], [ %67, %57 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @wait_event(i32 %48, i32 %70)
  %72 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %73 = call i32 @wait_barrier(%struct.r10conf* %72)
  br label %11

74:                                               ; preds = %37
  ret void
}

declare dso_local i32 @wait_barrier(%struct.r10conf*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raid10_log(i32, i8*) #1

declare dso_local i32 @allow_barrier(%struct.r10conf*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
