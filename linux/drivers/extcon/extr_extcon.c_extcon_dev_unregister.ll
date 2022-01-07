; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_8__*, i64*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }

@extcon_dev_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to unregister extcon_dev (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extcon_dev_unregister(%struct.extcon_dev* %0) #0 {
  %2 = alloca %struct.extcon_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.extcon_dev* %0, %struct.extcon_dev** %2, align 8
  %4 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %5 = icmp ne %struct.extcon_dev* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %111

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @extcon_dev_list_lock)
  %9 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %10 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %9, i32 0, i32 7
  %11 = call i32 @list_del(i32* %10)
  %12 = call i32 @mutex_unlock(i32* @extcon_dev_list_lock)
  %13 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %14 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %13, i32 0, i32 1
  %15 = call i32 @get_device(i32* %14)
  %16 = call i64 @IS_ERR_OR_NULL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %20 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %19, i32 0, i32 1
  %21 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %22 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %21, i32 0, i32 1
  %23 = call i32 @dev_name(i32* %22)
  %24 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %111

25:                                               ; preds = %7
  %26 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %27 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %26, i32 0, i32 1
  %28 = call i32 @device_unregister(i32* %27)
  %29 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %30 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %29, i32 0, i32 6
  %31 = load i64*, i64** %30, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %71

33:                                               ; preds = %25
  %34 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %35 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %41 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %40, i32 0, i32 6
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %50 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %49, i32 0, i32 5
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 @kfree(%struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %64 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %63, i32 0, i32 5
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @kfree(%struct.TYPE_8__* %65)
  %67 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %68 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 @kfree(%struct.TYPE_8__* %69)
  br label %71

71:                                               ; preds = %62, %33, %25
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %75 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %80 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @kfree(%struct.TYPE_8__* %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %72

92:                                               ; preds = %72
  %93 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %94 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %99 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = call i32 @kfree(%struct.TYPE_8__* %101)
  %103 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %104 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call i32 @kfree(%struct.TYPE_8__* %105)
  br label %107

107:                                              ; preds = %97, %92
  %108 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %109 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %108, i32 0, i32 1
  %110 = call i32 @put_device(i32* %109)
  br label %111

111:                                              ; preds = %107, %18, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
