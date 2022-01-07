; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.bio = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @raid10_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %10 = load %struct.mddev*, %struct.mddev** %4, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 0
  %12 = load %struct.r10conf*, %struct.r10conf** %11, align 8
  store %struct.r10conf* %12, %struct.r10conf** %6, align 8
  %13 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %16, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = call i32 @bio_sectors(%struct.bio* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @REQ_PREFLUSH, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = load %struct.bio*, %struct.bio** %5, align 8
  %36 = call i32 @md_flush_request(%struct.mddev* %34, %struct.bio* %35)
  store i32 1, i32* %3, align 4
  br label %99

37:                                               ; preds = %2
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = call i32 @md_write_start(%struct.mddev* %38, %struct.bio* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %99

43:                                               ; preds = %37
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %43
  %55 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %56 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %60 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %54
  %65 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %66 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %70 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %68, %72
  br label %74

74:                                               ; preds = %64, %54
  %75 = phi i1 [ true, %54 ], [ %73, %64 ]
  br label %76

76:                                               ; preds = %74, %43
  %77 = phi i1 [ false, %43 ], [ %75, %74 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.bio*, %struct.bio** %5, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  %90 = sub nsw i32 %82, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %81, %76
  %92 = load %struct.mddev*, %struct.mddev** %4, align 8
  %93 = load %struct.bio*, %struct.bio** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @__make_request(%struct.mddev* %92, %struct.bio* %93, i32 %94)
  %96 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %97 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %96, i32 0, i32 0
  %98 = call i32 @wake_up(i32* %97)
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %91, %42, %33
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @md_write_start(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @__make_request(%struct.mddev*, %struct.bio*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
