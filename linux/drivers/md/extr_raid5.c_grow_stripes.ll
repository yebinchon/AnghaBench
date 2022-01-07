; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_grow_stripes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_grow_stripes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i8**, i32, i64, i32, %struct.kmem_cache*, %struct.TYPE_2__*, i32, i32 }
%struct.kmem_cache = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"raid%d-%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"raid%d-%p\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%.27s-alt\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, i32)* @grow_stripes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_stripes(%struct.r5conf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 8, i64* %7, align 8
  %9 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %10 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %13 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @max(i32 %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %17 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %24 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %30 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %33 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i8* @mdname(%struct.TYPE_2__* %34)
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %35)
  br label %51

37:                                               ; preds = %2
  %38 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %39 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %45 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %48 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46, %struct.TYPE_2__* %49)
  br label %51

51:                                               ; preds = %37, %22
  %52 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %53 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %59 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %56, i64 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %65 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %67 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %70 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call %struct.kmem_cache* @kmem_cache_create(i8* %73, i32 %79, i32 0, i32 0, i32* null)
  store %struct.kmem_cache* %80, %struct.kmem_cache** %6, align 8
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %82 = icmp ne %struct.kmem_cache* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %103

84:                                               ; preds = %51
  %85 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %86 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %87 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %86, i32 0, i32 4
  store %struct.kmem_cache* %85, %struct.kmem_cache** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %90 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %101, %84
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %5, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @grow_one_stripe(%struct.r5conf* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %103

101:                                              ; preds = %95
  br label %91

102:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %100, %83
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @mdname(%struct.TYPE_2__*) #1

declare dso_local %struct.kmem_cache* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @grow_one_stripe(%struct.r5conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
