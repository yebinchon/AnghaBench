; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_parse_touchquery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_parse_touchquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001_touch_query = type { i32, i32, i32, i32, i32 }

@W8001_TOUCH_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.w8001_touch_query*)* @parse_touchquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_touchquery(i32* %0, %struct.w8001_touch_query* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.w8001_touch_query*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.w8001_touch_query* %1, %struct.w8001_touch_query** %4, align 8
  %5 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %6 = call i32 @memset(%struct.w8001_touch_query* %5, i32 0, i32 20)
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %11 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 7
  %16 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %17 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %22 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 9
  %27 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %28 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 2
  %33 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %34 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 5
  %41 = and i32 %40, 3
  %42 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %43 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 9
  %50 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %51 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 2
  %56 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %57 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 3
  %64 = and i32 %63, 3
  %65 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %66 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %70 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %2
  %74 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %75 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %73
  %79 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %80 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %79, i32 0, i32 3
  store i32 1024, i32* %80, align 4
  %81 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %82 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %81, i32 0, i32 4
  store i32 1024, i32* %82, align 4
  %83 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %84 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %78
  %88 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %89 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %93 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %95 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %94, i32 0, i32 3
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %78
  %97 = load i32, i32* @W8001_TOUCH_RESOLUTION, align 4
  %98 = load %struct.w8001_touch_query*, %struct.w8001_touch_query** %4, align 8
  %99 = getelementptr inbounds %struct.w8001_touch_query, %struct.w8001_touch_query* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %73, %2
  ret void
}

declare dso_local i32 @memset(%struct.w8001_touch_query*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
