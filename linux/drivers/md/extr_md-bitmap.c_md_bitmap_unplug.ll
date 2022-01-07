; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_unplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_3__ = type { i64 }

@BITMAP_STALE = common dso_local global i32 0, align 4
@BITMAP_PAGE_DIRTY = common dso_local global i32 0, align 4
@BITMAP_PAGE_NEEDWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"md bitmap_unplug\00", align 1
@BITMAP_PAGE_PENDING = common dso_local global i32 0, align 4
@BITMAP_WRITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_unplug(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %8 = icmp ne %struct.bitmap* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* @BITMAP_STALE, align 4
  %17 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %18 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %9, %1
  br label %104

22:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %86, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %26 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %23
  %31 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %32 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %104

37:                                               ; preds = %30
  %38 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @BITMAP_PAGE_DIRTY, align 4
  %41 = call i32 @test_and_clear_page_attr(%struct.bitmap* %38, i64 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %45 = call i32 @test_and_clear_page_attr(%struct.bitmap* %42, i64 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %48, %37
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %51
  %55 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %56 = call i32 @md_bitmap_wait_writes(%struct.bitmap* %55)
  %57 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %65 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @blk_add_trace_msg(i64 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %63, %54
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %73 = load i64, i64* %3, align 8
  %74 = load i32, i32* @BITMAP_PAGE_PENDING, align 4
  %75 = call i32 @clear_page_attr(%struct.bitmap* %72, i64 %73, i32 %74)
  %76 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %77 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %78 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @write_page(%struct.bitmap* %76, i32 %83, i32 0)
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %71, %48
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %3, align 8
  br label %23

89:                                               ; preds = %23
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %94 = call i32 @md_bitmap_wait_writes(%struct.bitmap* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @BITMAP_WRITE_ERROR, align 4
  %97 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %98 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %97, i32 0, i32 0
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %103 = call i32 @md_bitmap_file_kick(%struct.bitmap* %102)
  br label %104

104:                                              ; preds = %21, %36, %101, %95
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @md_bitmap_wait_writes(%struct.bitmap*) #1

declare dso_local i32 @blk_add_trace_msg(i64, i8*) #1

declare dso_local i32 @clear_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @write_page(%struct.bitmap*, i32, i32) #1

declare dso_local i32 @md_bitmap_file_kick(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
