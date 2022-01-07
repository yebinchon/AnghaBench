; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_group_thread_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_group_thread_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32, %struct.r5worker_group* }
%struct.r5worker_group = type { %struct.r5worker_group* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@raid5_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @raid5_store_group_thread_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_store_group_thread_cnt(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.r5worker_group*, align 8
  %12 = alloca %struct.r5worker_group*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %116

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @kstrtouint(i8* %22, i32 10, i32* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %116

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %29, 8192
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %116

34:                                               ; preds = %28
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = call i32 @mddev_lock(%struct.mddev* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %116

41:                                               ; preds = %34
  %42 = load %struct.mddev*, %struct.mddev** %5, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 0
  %44 = load %struct.r5conf*, %struct.r5conf** %43, align 8
  store %struct.r5conf* %44, %struct.r5conf** %8, align 8
  %45 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %46 = icmp ne %struct.r5conf* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %104

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %53 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %50
  %57 = load %struct.mddev*, %struct.mddev** %5, align 8
  %58 = call i32 @mddev_suspend(%struct.mddev* %57)
  %59 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %60 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %59, i32 0, i32 3
  %61 = load %struct.r5worker_group*, %struct.r5worker_group** %60, align 8
  store %struct.r5worker_group* %61, %struct.r5worker_group** %12, align 8
  %62 = load %struct.r5worker_group*, %struct.r5worker_group** %12, align 8
  %63 = icmp ne %struct.r5worker_group* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @raid5_wq, align 4
  %66 = call i32 @flush_workqueue(i32 %65)
  br label %67

67:                                               ; preds = %64, %56
  %68 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @alloc_thread_groups(%struct.r5conf* %68, i32 %69, i32* %13, i32* %14, %struct.r5worker_group** %11)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %67
  %74 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %75 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %74, i32 0, i32 2
  %76 = call i32 @spin_lock_irq(i32* %75)
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %79 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %82 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.r5worker_group*, %struct.r5worker_group** %11, align 8
  %84 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %85 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %84, i32 0, i32 3
  store %struct.r5worker_group* %83, %struct.r5worker_group** %85, align 8
  %86 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %87 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load %struct.r5worker_group*, %struct.r5worker_group** %12, align 8
  %90 = icmp ne %struct.r5worker_group* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %73
  %92 = load %struct.r5worker_group*, %struct.r5worker_group** %12, align 8
  %93 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %92, i64 0
  %94 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %93, i32 0, i32 0
  %95 = load %struct.r5worker_group*, %struct.r5worker_group** %94, align 8
  %96 = call i32 @kfree(%struct.r5worker_group* %95)
  br label %97

97:                                               ; preds = %91, %73
  %98 = load %struct.r5worker_group*, %struct.r5worker_group** %12, align 8
  %99 = call i32 @kfree(%struct.r5worker_group* %98)
  br label %100

100:                                              ; preds = %97, %67
  %101 = load %struct.mddev*, %struct.mddev** %5, align 8
  %102 = call i32 @mddev_resume(%struct.mddev* %101)
  br label %103

103:                                              ; preds = %100, %50
  br label %104

104:                                              ; preds = %103, %47
  %105 = load %struct.mddev*, %struct.mddev** %5, align 8
  %106 = call i32 @mddev_unlock(%struct.mddev* %105)
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = sext i32 %107 to i64
  br label %113

111:                                              ; preds = %104
  %112 = load i64, i64* %7, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i64 [ %110, %109 ], [ %112, %111 ]
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %39, %31, %25, %18
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @alloc_thread_groups(%struct.r5conf*, i32, i32*, i32*, %struct.r5worker_group**) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.r5worker_group*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
