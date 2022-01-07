; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_get_padding_dist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_get_padding_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i64, i32*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%d:0 \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0:%lld%% \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%d:%lld%% \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i8*)* @pblk_sysfs_get_padding_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_sysfs_get_padding_dist(%struct.pblk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %12 = load %struct.pblk*, %struct.pblk** %4, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load %struct.pblk*, %struct.pblk** %4, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 3
  %18 = call i64 @atomic64_read(i32* %17)
  %19 = load %struct.pblk*, %struct.pblk** %4, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = load i32, i32* %10, align 4
  %41 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %35, i64 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %149

64:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load %struct.pblk*, %struct.pblk** %4, align 8
  %71 = getelementptr inbounds %struct.pblk, %struct.pblk* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i64 @atomic64_read(i32* %75)
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i64, i64* @PAGE_SIZE, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @bucket_percentage(i64 %93, i64 %94)
  %96 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %86, i64 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %131, %82
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %134

105:                                              ; preds = %101
  %106 = load %struct.pblk*, %struct.pblk** %4, align 8
  %107 = getelementptr inbounds %struct.pblk, %struct.pblk* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i64 @atomic64_read(i32* %111)
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @bucket_percentage(i64 %112, i64 %113)
  store i64 %114, i64* %11, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i64, i64* @PAGE_SIZE, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %119, %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i64, i64* %11, align 8
  %126 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %118, i64 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %124, i64 %125)
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %105
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %101

134:                                              ; preds = %101
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i64, i64* @PAGE_SIZE, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = sub nsw i64 %139, %141
  %143 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %138, i64 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %134, %49
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @bucket_percentage(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
