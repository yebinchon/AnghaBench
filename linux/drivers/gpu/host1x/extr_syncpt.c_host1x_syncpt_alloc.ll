; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_syncpt = type { i8*, i32, i32*, %struct.host1x_client*, i32 }
%struct.host1x = type { i32, %struct.TYPE_2__*, %struct.host1x_syncpt* }
%struct.TYPE_2__ = type { i32 }
%struct.host1x_client = type { i32 }

@HOST1X_SYNCPT_HAS_BASE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%02u-%s\00", align 1
@HOST1X_SYNCPT_CLIENT_MANAGED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.host1x_syncpt* (%struct.host1x*, %struct.host1x_client*, i64)* @host1x_syncpt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.host1x_syncpt* @host1x_syncpt_alloc(%struct.host1x* %0, %struct.host1x_client* %1, i64 %2) #0 {
  %4 = alloca %struct.host1x_syncpt*, align 8
  %5 = alloca %struct.host1x*, align 8
  %6 = alloca %struct.host1x_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.host1x_syncpt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.host1x* %0, %struct.host1x** %5, align 8
  store %struct.host1x_client* %1, %struct.host1x_client** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.host1x*, %struct.host1x** %5, align 8
  %12 = getelementptr inbounds %struct.host1x, %struct.host1x* %11, i32 0, i32 2
  %13 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %12, align 8
  store %struct.host1x_syncpt* %13, %struct.host1x_syncpt** %8, align 8
  %14 = load %struct.host1x*, %struct.host1x** %5, align 8
  %15 = getelementptr inbounds %struct.host1x, %struct.host1x* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %33, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.host1x*, %struct.host1x** %5, align 8
  %20 = getelementptr inbounds %struct.host1x, %struct.host1x* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %27 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br label %30

30:                                               ; preds = %25, %17
  %31 = phi i1 [ false, %17 ], [ %29, %25 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %37 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %36, i32 1
  store %struct.host1x_syncpt* %37, %struct.host1x_syncpt** %8, align 8
  br label %17

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.host1x*, %struct.host1x** %5, align 8
  %41 = getelementptr inbounds %struct.host1x, %struct.host1x* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp uge i32 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %111

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @HOST1X_SYNCPT_HAS_BASE, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.host1x*, %struct.host1x** %5, align 8
  %54 = call i32* @host1x_syncpt_base_request(%struct.host1x* %53)
  %55 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %56 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %58 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %111

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %66 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.host1x_client*, %struct.host1x_client** %6, align 8
  %69 = icmp ne %struct.host1x_client* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.host1x_client*, %struct.host1x_client** %6, align 8
  %72 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @dev_name(i32 %73)
  br label %76

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i32* [ %74, %70 ], [ null, %75 ]
  %78 = call i8* @kasprintf(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %67, i32* %77)
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %104

82:                                               ; preds = %76
  %83 = load %struct.host1x_client*, %struct.host1x_client** %6, align 8
  %84 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %85 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %84, i32 0, i32 3
  store %struct.host1x_client* %83, %struct.host1x_client** %85, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %88 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @HOST1X_SYNCPT_CLIENT_MANAGED, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %95 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  br label %99

96:                                               ; preds = %82
  %97 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %98 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %97, i32 0, i32 1
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.host1x*, %struct.host1x** %5, align 8
  %101 = getelementptr inbounds %struct.host1x, %struct.host1x* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  store %struct.host1x_syncpt* %103, %struct.host1x_syncpt** %4, align 8
  br label %115

104:                                              ; preds = %81
  %105 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %106 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @host1x_syncpt_base_free(i32* %107)
  %109 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %8, align 8
  %110 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %61, %46
  %112 = load %struct.host1x*, %struct.host1x** %5, align 8
  %113 = getelementptr inbounds %struct.host1x, %struct.host1x* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  store %struct.host1x_syncpt* null, %struct.host1x_syncpt** %4, align 8
  br label %115

115:                                              ; preds = %111, %99
  %116 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %4, align 8
  ret %struct.host1x_syncpt* %116
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @host1x_syncpt_base_request(%struct.host1x*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32*) #1

declare dso_local i32* @dev_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @host1x_syncpt_base_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
