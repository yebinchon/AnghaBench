; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_insert_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_insert_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_vector_insert_at(%struct.vector* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vector*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.vector* %0, %struct.vector** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vector*, %struct.vector** %5, align 8
  %10 = getelementptr inbounds %struct.vector, %struct.vector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vector*, %struct.vector** %5, align 8
  %13 = getelementptr inbounds %struct.vector, %struct.vector* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.vector*, %struct.vector** %5, align 8
  %18 = load %struct.vector*, %struct.vector** %5, align 8
  %19 = getelementptr inbounds %struct.vector, %struct.vector* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @calc_increased_capacity(i32 %20)
  %22 = call i32 @dal_vector_reserve(%struct.vector* %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %76

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.vector*, %struct.vector** %5, align 8
  %28 = getelementptr inbounds %struct.vector, %struct.vector* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.vector*, %struct.vector** %5, align 8
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %29, i64 %35
  store i8* %36, i8** %8, align 8
  %37 = load %struct.vector*, %struct.vector** %5, align 8
  %38 = getelementptr inbounds %struct.vector, %struct.vector* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.vector*, %struct.vector** %5, align 8
  %44 = getelementptr inbounds %struct.vector, %struct.vector* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.vector*, %struct.vector** %5, align 8
  %50 = getelementptr inbounds %struct.vector, %struct.vector* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %48, i64 %52
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.vector*, %struct.vector** %5, align 8
  %56 = getelementptr inbounds %struct.vector, %struct.vector* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vector*, %struct.vector** %5, align 8
  %59 = getelementptr inbounds %struct.vector, %struct.vector* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %60, %61
  %63 = mul nsw i32 %57, %62
  %64 = call i32 @memmove(i8* %53, i8* %54, i32 %63)
  br label %65

65:                                               ; preds = %47, %41, %26
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.vector*, %struct.vector** %5, align 8
  %69 = getelementptr inbounds %struct.vector, %struct.vector* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memmove(i8* %66, i8* %67, i32 %70)
  %72 = load %struct.vector*, %struct.vector** %5, align 8
  %73 = getelementptr inbounds %struct.vector, %struct.vector* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @dal_vector_reserve(%struct.vector*, i32) #1

declare dso_local i32 @calc_increased_capacity(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
