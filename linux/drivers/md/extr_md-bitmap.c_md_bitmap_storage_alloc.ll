; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_storage_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_storage_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_storage = type { i32, i64, i32, %struct.TYPE_2__**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_storage*, i64, i32, i32)* @md_bitmap_storage_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_bitmap_storage_alloc(%struct.bitmap_storage* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_storage*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bitmap_storage* %0, %struct.bitmap_storage** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @DIV_ROUND_UP(i64 %14, i32 8)
  store i64 %15, i64* %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* %13, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i64, i64* %13, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i64 @DIV_ROUND_UP(i64 %22, i32 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %12, align 8
  %28 = mul i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.TYPE_2__** @kmalloc_array(i64 %30, i32 8, i32 %31)
  %33 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %34 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %33, i32 0, i32 3
  store %struct.TYPE_2__** %32, %struct.TYPE_2__*** %34, align 8
  %35 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %36 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = icmp ne %struct.TYPE_2__** %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %21
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %154

42:                                               ; preds = %21
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %47 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* @__GFP_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = call i8* @alloc_page(i32 %53)
  %55 = bitcast i8* %54 to %struct.TYPE_2__*
  %56 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %57 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %56, i32 0, i32 4
  store %struct.TYPE_2__* %55, %struct.TYPE_2__** %57, align 8
  %58 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %59 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp eq %struct.TYPE_2__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %154

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %45, %42
  store i32 0, i32* %10, align 4
  %67 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %68 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %73 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %76 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 0
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %78, align 8
  store i32 1, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %81 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %66
  br label %85

85:                                               ; preds = %128, %84
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %12, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %85
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = load i32, i32* @__GFP_ZERO, align 4
  %93 = or i32 %91, %92
  %94 = call i8* @alloc_page(i32 %93)
  %95 = bitcast i8* %94 to %struct.TYPE_2__*
  %96 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %97 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %98, i64 %100
  store %struct.TYPE_2__* %95, %struct.TYPE_2__** %101, align 8
  %102 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %103 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %104, i64 %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = icmp ne %struct.TYPE_2__* %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %90
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %113 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %154

116:                                              ; preds = %90
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %121 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %122, i64 %124
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 %119, i32* %127, align 4
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %85

131:                                              ; preds = %85
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %134 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* %12, align 8
  %136 = mul i64 %135, 4
  %137 = call i64 @DIV_ROUND_UP(i64 %136, i32 8)
  %138 = call i32 @roundup(i64 %137, i32 8)
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i32 @kzalloc(i32 %138, i32 %139)
  %141 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %142 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %144 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %131
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  br label %154

150:                                              ; preds = %131
  %151 = load i64, i64* %13, align 8
  %152 = load %struct.bitmap_storage*, %struct.bitmap_storage** %6, align 8
  %153 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %147, %110, %62, %39
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.TYPE_2__** @kmalloc_array(i64, i32, i32) #1

declare dso_local i8* @alloc_page(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
