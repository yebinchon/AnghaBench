; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_emit_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_emit_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.cache_features }
%struct.cache_features = type { i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"metadata2 \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"writethrough \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"passthrough \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"writeback \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"unknown \00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: internal error: unknown io mode: %d\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"no_discard_passdown \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i8*, i32, i32*)* @emit_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_flags(%struct.cache* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_features*, align 8
  %11 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.cache*, %struct.cache** %5, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  store %struct.cache_features* %15, %struct.cache_features** %10, align 8
  %16 = load %struct.cache_features*, %struct.cache_features** %10, align 8
  %17 = getelementptr inbounds %struct.cache_features, %struct.cache_features* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  %20 = zext i1 %19 to i32
  %21 = load %struct.cache_features*, %struct.cache_features** %10, align 8
  %22 = getelementptr inbounds %struct.cache_features, %struct.cache_features* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = add nsw i32 %20, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.cache_features*, %struct.cache_features** %10, align 8
  %32 = getelementptr inbounds %struct.cache_features, %struct.cache_features* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %4
  %38 = load %struct.cache*, %struct.cache** %5, align 8
  %39 = call i64 @writethrough_mode(%struct.cache* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %66

43:                                               ; preds = %37
  %44 = load %struct.cache*, %struct.cache** %5, align 8
  %45 = call i64 @passthrough_mode(%struct.cache* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %65

49:                                               ; preds = %43
  %50 = load %struct.cache*, %struct.cache** %5, align 8
  %51 = call i64 @writeback_mode(%struct.cache* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %64

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.cache*, %struct.cache** %5, align 8
  %58 = call i32 @cache_device_name(%struct.cache* %57)
  %59 = load %struct.cache_features*, %struct.cache_features** %10, align 8
  %60 = getelementptr inbounds %struct.cache_features, %struct.cache_features* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @DMERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %55, %53
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.cache_features*, %struct.cache_features** %10, align 8
  %68 = getelementptr inbounds %struct.cache_features, %struct.cache_features* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  ret void
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i64 @writethrough_mode(%struct.cache*) #1

declare dso_local i64 @passthrough_mode(%struct.cache*) #1

declare dso_local i64 @writeback_mode(%struct.cache*) #1

declare dso_local i32 @DMERR(i8*, i32, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
