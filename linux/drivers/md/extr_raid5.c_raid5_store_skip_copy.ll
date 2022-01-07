; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_skip_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_skip_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_4__*, %struct.r5conf* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.r5conf = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @raid5_store_skip_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_store_skip_copy(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %97

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 10, i64* %9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %97

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load %struct.mddev*, %struct.mddev** %5, align 8
  %32 = call i32 @mddev_lock(%struct.mddev* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %97

37:                                               ; preds = %24
  %38 = load %struct.mddev*, %struct.mddev** %5, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 1
  %40 = load %struct.r5conf*, %struct.r5conf** %39, align 8
  store %struct.r5conf* %40, %struct.r5conf** %8, align 8
  %41 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %42 = icmp ne %struct.r5conf* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %85

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %49 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = call i32 @mddev_suspend(%struct.mddev* %53)
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %57 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %62 = load %struct.mddev*, %struct.mddev** %5, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %61
  store i32 %69, i32* %67, align 4
  br label %81

70:                                               ; preds = %52
  %71 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.mddev*, %struct.mddev** %5, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %72
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %70, %60
  %82 = load %struct.mddev*, %struct.mddev** %5, align 8
  %83 = call i32 @mddev_resume(%struct.mddev* %82)
  br label %84

84:                                               ; preds = %81, %46
  br label %85

85:                                               ; preds = %84, %43
  %86 = load %struct.mddev*, %struct.mddev** %5, align 8
  %87 = call i32 @mddev_unlock(%struct.mddev* %86)
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = sext i32 %88 to i64
  br label %94

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %35, %21, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
