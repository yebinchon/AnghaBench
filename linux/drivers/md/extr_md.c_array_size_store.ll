; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_array_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_array_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.mddev*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @array_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_size_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.mddev*, %struct.mddev** %5, align 8
  %11 = call i32 @mddev_lock(%struct.mddev* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %115

16:                                               ; preds = %3
  %17 = load %struct.mddev*, %struct.mddev** %5, align 8
  %18 = call i64 @mddev_is_clustered(%struct.mddev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.mddev*, %struct.mddev** %5, align 8
  %22 = call i32 @mddev_unlock(%struct.mddev* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %115

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.mddev*, %struct.mddev** %5, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64 (%struct.mddev*, i32, i32)*, i64 (%struct.mddev*, i32, i32)** %38, align 8
  %40 = load %struct.mddev*, %struct.mddev** %5, align 8
  %41 = call i64 %39(%struct.mddev* %40, i32 0, i32 0)
  store i64 %41, i64* %8, align 8
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.mddev*, %struct.mddev** %5, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.mddev*, %struct.mddev** %5, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  br label %79

49:                                               ; preds = %25
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strict_blocks_to_sectors(i8* %50, i64* %8)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %78

56:                                               ; preds = %49
  %57 = load %struct.mddev*, %struct.mddev** %5, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.mddev*, %struct.mddev** %5, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64 (%struct.mddev*, i32, i32)*, i64 (%struct.mddev*, i32, i32)** %65, align 8
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = call i64 %66(%struct.mddev* %67, i32 0, i32 0)
  %69 = load i64, i64* %8, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @E2BIG, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %77

74:                                               ; preds = %61, %56
  %75 = load %struct.mddev*, %struct.mddev** %5, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.mddev*, %struct.mddev** %5, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.mddev*, %struct.mddev** %5, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = icmp ne %struct.TYPE_2__* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %82
  %91 = load %struct.mddev*, %struct.mddev** %5, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mddev*, %struct.mddev** %5, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @set_capacity(i32 %93, i64 %96)
  %98 = load %struct.mddev*, %struct.mddev** %5, align 8
  %99 = getelementptr inbounds %struct.mddev, %struct.mddev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @revalidate_disk(i32 %100)
  br label %102

102:                                              ; preds = %90, %82
  br label %103

103:                                              ; preds = %102, %79
  %104 = load %struct.mddev*, %struct.mddev** %5, align 8
  %105 = call i32 @mddev_unlock(%struct.mddev* %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = sext i32 %106 to i64
  br label %112

110:                                              ; preds = %103
  %111 = load i64, i64* %7, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i64 [ %109, %108 ], [ %111, %110 ]
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %20, %14
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strict_blocks_to_sectors(i8*, i64*) #1

declare dso_local i32 @set_capacity(i32, i64) #1

declare dso_local i32 @revalidate_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
