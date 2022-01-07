; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_map_one_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_map_one_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buf = type { i64, i64, i64 }
%struct.drm_buf_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, %struct.drm_buf*)* @map_one_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_one_buf(i8* %0, i32 %1, i64 %2, %struct.drm_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_buf*, align 8
  %10 = alloca %struct.drm_buf_map*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.drm_buf* %3, %struct.drm_buf** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_buf_map*
  store %struct.drm_buf_map* %13, %struct.drm_buf_map** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %16 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %11, align 8
  %19 = load %struct.drm_buf_map*, %struct.drm_buf_map** %10, align 8
  %20 = getelementptr inbounds %struct.drm_buf_map, %struct.drm_buf_map* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %27 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %26, i32 0, i32 1
  %28 = call i64 @copy_to_user(i32* %25, i64* %27, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %75

33:                                               ; preds = %4
  %34 = load %struct.drm_buf_map*, %struct.drm_buf_map** %10, align 8
  %35 = getelementptr inbounds %struct.drm_buf_map, %struct.drm_buf_map* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %42 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %41, i32 0, i32 2
  %43 = call i64 @copy_to_user(i32* %40, i64* %42, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %75

48:                                               ; preds = %33
  %49 = load %struct.drm_buf_map*, %struct.drm_buf_map** %10, align 8
  %50 = getelementptr inbounds %struct.drm_buf_map, %struct.drm_buf_map* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i64 @clear_user(i32* %55, i32 4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EFAULT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %75

61:                                               ; preds = %48
  %62 = load %struct.drm_buf_map*, %struct.drm_buf_map** %10, align 8
  %63 = getelementptr inbounds %struct.drm_buf_map, %struct.drm_buf_map* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i64 @copy_to_user(i32* %68, i64* %11, i32 8)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @EFAULT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %75

74:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %71, %58, %45, %30
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @copy_to_user(i32*, i64*, i32) #1

declare dso_local i64 @clear_user(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
