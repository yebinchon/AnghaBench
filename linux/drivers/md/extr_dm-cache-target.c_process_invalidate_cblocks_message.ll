; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_process_invalidate_cblocks_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_process_invalidate_cblocks_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.cblock_range = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"%s: cache has to be in passthrough mode for invalidation\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i32, i8**)* @process_invalidate_cblocks_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_invalidate_cblocks_message(%struct.cache* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cblock_range, align 4
  store %struct.cache* %0, %struct.cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cache*, %struct.cache** %5, align 8
  %12 = call i32 @passthrough_mode(%struct.cache* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.cache*, %struct.cache** %5, align 8
  %16 = call i32 @cache_device_name(%struct.cache* %15)
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %54

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.cache*, %struct.cache** %5, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @parse_cblock_range(%struct.cache* %26, i8* %31, %struct.cblock_range* %10)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %52

36:                                               ; preds = %25
  %37 = load %struct.cache*, %struct.cache** %5, align 8
  %38 = call i32 @validate_cblock_range(%struct.cache* %37, %struct.cblock_range* %10)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  %43 = load %struct.cache*, %struct.cache** %5, align 8
  %44 = call i32 @request_invalidation(%struct.cache* %43, %struct.cblock_range* %10)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %52

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %21

52:                                               ; preds = %47, %41, %35, %21
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @passthrough_mode(%struct.cache*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @parse_cblock_range(%struct.cache*, i8*, %struct.cblock_range*) #1

declare dso_local i32 @validate_cblock_range(%struct.cache*, %struct.cblock_range*) #1

declare dso_local i32 @request_invalidation(%struct.cache*, %struct.cblock_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
