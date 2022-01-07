; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i32, i64, i64, i32, %struct.r5conf* }
%struct.r5conf = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i64)* @raid5_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_resize(%struct.mddev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r5conf*, align 8
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 8
  %11 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  store %struct.r5conf* %11, %struct.r5conf** %7, align 8
  %12 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %13 = call i64 @raid5_has_log(%struct.r5conf* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %17 = call i64 @raid5_has_ppl(%struct.r5conf* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %15
  %23 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %24 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load %struct.mddev*, %struct.mddev** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.mddev*, %struct.mddev** %4, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @raid5_size(%struct.mddev* %30, i64 %31, i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %22
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %99

49:                                               ; preds = %40, %22
  %50 = load %struct.mddev*, %struct.mddev** %4, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.mddev*, %struct.mddev** %4, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @md_bitmap_resize(i64 %57, i64 %58, i32 0, i32 0)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %99

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.mddev*, %struct.mddev** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @md_set_array_sectors(%struct.mddev* %66, i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.mddev*, %struct.mddev** %4, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %65
  %75 = load %struct.mddev*, %struct.mddev** %4, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mddev*, %struct.mddev** %4, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.mddev*, %struct.mddev** %4, align 8
  %84 = getelementptr inbounds %struct.mddev, %struct.mddev* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mddev*, %struct.mddev** %4, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %89 = load %struct.mddev*, %struct.mddev** %4, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 4
  %91 = call i32 @set_bit(i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %82, %74, %65
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.mddev*, %struct.mddev** %4, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.mddev*, %struct.mddev** %4, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %62, %46, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @raid5_has_log(%struct.r5conf*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i64 @raid5_size(%struct.mddev*, i64, i32) #1

declare dso_local i32 @md_bitmap_resize(i64, i64, i32, i32) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
