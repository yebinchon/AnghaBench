; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_remove_at_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_remove_at_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_vector_remove_at_index(%struct.vector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vector*, align 8
  %5 = alloca i32, align 4
  store %struct.vector* %0, %struct.vector** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.vector*, %struct.vector** %4, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.vector*, %struct.vector** %4, align 8
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = icmp ne i32 %13, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = load %struct.vector*, %struct.vector** %4, align 8
  %21 = getelementptr inbounds %struct.vector, %struct.vector* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.vector*, %struct.vector** %4, align 8
  %25 = getelementptr inbounds %struct.vector, %struct.vector* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %22, %28
  %30 = load %struct.vector*, %struct.vector** %4, align 8
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.vector*, %struct.vector** %4, align 8
  %36 = getelementptr inbounds %struct.vector, %struct.vector* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %32, %39
  %41 = load %struct.vector*, %struct.vector** %4, align 8
  %42 = getelementptr inbounds %struct.vector, %struct.vector* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.vector*, %struct.vector** %4, align 8
  %48 = getelementptr inbounds %struct.vector, %struct.vector* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = call i32 @memmove(i64 %29, i64 %40, i32 %50)
  br label %52

52:                                               ; preds = %19, %12
  %53 = load %struct.vector*, %struct.vector** %4, align 8
  %54 = getelementptr inbounds %struct.vector, %struct.vector* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
