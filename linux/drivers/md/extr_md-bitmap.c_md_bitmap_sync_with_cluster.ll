; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_sync_with_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_sync_with_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.bitmap* }
%struct.bitmap = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"alignment is not correct for lo\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"alignment is not correct for hi\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_sync_with_cluster(%struct.mddev* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bitmap*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.mddev*, %struct.mddev** %6, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = load %struct.bitmap*, %struct.bitmap** %15, align 8
  store %struct.bitmap* %16, %struct.bitmap** %11, align 8
  store i64 0, i64* %13, align 8
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %22, %5
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @md_bitmap_end_sync(%struct.bitmap* %23, i64 %24, i64* %13, i32 0)
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %12, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %12, align 8
  br label %18

29:                                               ; preds = %18
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ false, %29 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %45, %36
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @md_bitmap_start_sync(%struct.bitmap* %46, i64 %47, i64* %13, i32 0)
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %12, align 8
  br label %41

52:                                               ; preds = %41
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @md_bitmap_end_sync(%struct.bitmap*, i64, i64*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @md_bitmap_start_sync(%struct.bitmap*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
