; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_chunk_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_chunk_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.mddev*)* }

@EBUSY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @chunk_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_size_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @kstrtoul(i8* %10, i32 10, i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %97

16:                                               ; preds = %3
  %17 = load %struct.mddev*, %struct.mddev** %5, align 8
  %18 = call i32 @mddev_lock(%struct.mddev* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %97

23:                                               ; preds = %16
  %24 = load %struct.mddev*, %struct.mddev** %5, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %23
  %29 = load %struct.mddev*, %struct.mddev** %5, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %32, align 8
  %34 = icmp eq i32 (%struct.mddev*)* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %68

38:                                               ; preds = %28
  %39 = load %struct.mddev*, %struct.mddev** %5, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EROFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %67

46:                                               ; preds = %38
  %47 = load i64, i64* %8, align 8
  %48 = lshr i64 %47, 9
  %49 = load %struct.mddev*, %struct.mddev** %5, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.mddev*, %struct.mddev** %5, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %54, align 8
  %56 = load %struct.mddev*, %struct.mddev** %5, align 8
  %57 = call i32 %55(%struct.mddev* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load %struct.mddev*, %struct.mddev** %5, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mddev*, %struct.mddev** %5, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %46
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %35
  br label %85

69:                                               ; preds = %23
  %70 = load i64, i64* %8, align 8
  %71 = lshr i64 %70, 9
  %72 = load %struct.mddev*, %struct.mddev** %5, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.mddev*, %struct.mddev** %5, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MaxSector, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load i64, i64* %8, align 8
  %81 = lshr i64 %80, 9
  %82 = load %struct.mddev*, %struct.mddev** %5, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %79, %69
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.mddev*, %struct.mddev** %5, align 8
  %87 = call i32 @mddev_unlock(%struct.mddev* %86)
  %88 = load i32, i32* %9, align 4
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

97:                                               ; preds = %94, %21, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
