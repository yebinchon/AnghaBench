; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32*, i32*, i32*, i8*, i8*, i8*, %struct.host1x_channel*, i32 }
%struct.host1x_channel = type { i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.host1x_job* @host1x_job_alloc(%struct.host1x_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.host1x_job*, align 8
  %5 = alloca %struct.host1x_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.host1x_job*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.host1x_channel* %0, %struct.host1x_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.host1x_job* null, %struct.host1x_job** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 64, %17
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %18, %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 %22, %25
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = add i64 %30, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ULONG_MAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store %struct.host1x_job* null, %struct.host1x_job** %4, align 8
  br label %123

40:                                               ; preds = %3
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.host1x_job* @kzalloc(i32 %41, i32 %42)
  store %struct.host1x_job* %43, %struct.host1x_job** %8, align 8
  %44 = bitcast %struct.host1x_job* %43 to i8*
  store i8* %44, i8** %11, align 8
  %45 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %46 = icmp ne %struct.host1x_job* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store %struct.host1x_job* null, %struct.host1x_job** %4, align 8
  br label %123

48:                                               ; preds = %40
  %49 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %50 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %49, i32 0, i32 7
  %51 = call i32 @kref_init(i32* %50)
  %52 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %53 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %54 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %53, i32 0, i32 6
  store %struct.host1x_channel* %52, %struct.host1x_channel** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr i8, i8* %55, i64 64
  store i8* %56, i8** %11, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i8*, i8** %11, align 8
  br label %62

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ null, %61 ]
  %64 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %65 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr i8, i8* %69, i64 %68
  store i8* %70, i8** %11, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i8*, i8** %11, align 8
  br label %76

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i8* [ %74, %73 ], [ null, %75 ]
  %78 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %79 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr i8, i8* %83, i64 %82
  store i8* %84, i8** %11, align 8
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i8*, i8** %11, align 8
  br label %90

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i8* [ %88, %87 ], [ null, %89 ]
  %92 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %93 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr i8, i8* %97, i64 %96
  store i8* %98, i8** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i8*, i8** %11, align 8
  br label %104

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i8* [ %102, %101 ], [ null, %103 ]
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %108 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  %109 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %110 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %113 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %115 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  %121 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %120, i32 0, i32 1
  store i32* %119, i32** %121, align 8
  %122 = load %struct.host1x_job*, %struct.host1x_job** %8, align 8
  store %struct.host1x_job* %122, %struct.host1x_job** %4, align 8
  br label %123

123:                                              ; preds = %104, %47, %39
  %124 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  ret %struct.host1x_job* %124
}

declare dso_local %struct.host1x_job* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
