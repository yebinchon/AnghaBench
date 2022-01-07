; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_presized_costruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_presized_costruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32, i32, i32* }
%struct.dc_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_vector_presized_costruct(%struct.vector* %0, %struct.dc_context* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vector*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vector* %0, %struct.vector** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.vector*, %struct.vector** %7, align 8
  %14 = getelementptr inbounds %struct.vector, %struct.vector* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %5
  %21 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %6, align 4
  br label %68

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kcalloc(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.vector*, %struct.vector** %7, align 8
  %28 = getelementptr inbounds %struct.vector, %struct.vector* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.vector*, %struct.vector** %7, align 8
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %68

34:                                               ; preds = %22
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* null, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.vector*, %struct.vector** %7, align 8
  %44 = getelementptr inbounds %struct.vector, %struct.vector* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @memmove(i32* %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.vector*, %struct.vector** %7, align 8
  %61 = getelementptr inbounds %struct.vector, %struct.vector* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.vector*, %struct.vector** %7, align 8
  %64 = getelementptr inbounds %struct.vector, %struct.vector* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.vector*, %struct.vector** %7, align 8
  %67 = getelementptr inbounds %struct.vector, %struct.vector* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %58, %33, %20
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memmove(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
