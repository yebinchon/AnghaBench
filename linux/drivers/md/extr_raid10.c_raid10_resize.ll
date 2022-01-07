; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i64, i32, i64, i64, %struct.r10conf* }
%struct.r10conf = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MaxSector = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i64)* @raid10_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_resize(%struct.mddev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mddev*, %struct.mddev** %4, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 8
  %12 = load %struct.r10conf*, %struct.r10conf** %11, align 8
  store %struct.r10conf* %12, %struct.r10conf** %6, align 8
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MaxSector, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %106

21:                                               ; preds = %2
  %22 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %106

36:                                               ; preds = %27, %21
  %37 = load %struct.mddev*, %struct.mddev** %4, align 8
  %38 = call i64 @raid10_size(%struct.mddev* %37, i64 0, i32 0)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.mddev*, %struct.mddev** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @raid10_size(%struct.mddev* %39, i64 %40, i32 0)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.mddev*, %struct.mddev** %4, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.mddev*, %struct.mddev** %4, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %46, %36
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.mddev*, %struct.mddev** %4, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @md_bitmap_resize(i64 %63, i64 %64, i32 0, i32 0)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %106

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.mddev*, %struct.mddev** %4, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @md_set_array_sectors(%struct.mddev* %72, i64 %73)
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %71
  %81 = load %struct.mddev*, %struct.mddev** %4, align 8
  %82 = getelementptr inbounds %struct.mddev, %struct.mddev* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.mddev*, %struct.mddev** %4, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %91 = load %struct.mddev*, %struct.mddev** %4, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 5
  %93 = call i32 @set_bit(i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %86, %80, %71
  %95 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @calc_sectors(%struct.r10conf* %95, i64 %96)
  %98 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %99 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mddev*, %struct.mddev** %4, align 8
  %102 = getelementptr inbounds %struct.mddev, %struct.mddev* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.mddev*, %struct.mddev** %4, align 8
  %105 = getelementptr inbounds %struct.mddev, %struct.mddev* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %94, %68, %52, %33, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @raid10_size(%struct.mddev*, i64, i32) #1

declare dso_local i32 @md_bitmap_resize(i64, i64, i32, i32) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @calc_sectors(%struct.r10conf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
