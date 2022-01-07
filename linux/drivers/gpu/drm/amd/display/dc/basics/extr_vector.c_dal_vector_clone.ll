; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_clone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vector* @dal_vector_clone(%struct.vector* %0) #0 {
  %2 = alloca %struct.vector*, align 8
  %3 = alloca %struct.vector*, align 8
  %4 = alloca %struct.vector*, align 8
  %5 = alloca i64, align 8
  store %struct.vector* %0, %struct.vector** %3, align 8
  %6 = load %struct.vector*, %struct.vector** %3, align 8
  %7 = call i64 @dal_vector_get_count(%struct.vector* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.vector*, %struct.vector** %3, align 8
  %12 = getelementptr inbounds %struct.vector, %struct.vector* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vector*, %struct.vector** %3, align 8
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vector*, %struct.vector** %3, align 8
  %18 = getelementptr inbounds %struct.vector, %struct.vector* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vector* @dal_vector_create(i32 %13, i32 %16, i32 %19)
  store %struct.vector* %20, %struct.vector** %4, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.vector*, %struct.vector** %3, align 8
  %23 = getelementptr inbounds %struct.vector, %struct.vector* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.vector*, %struct.vector** %3, align 8
  %27 = getelementptr inbounds %struct.vector, %struct.vector* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.vector* @dal_vector_presized_create(i32 %24, i64 %25, i32* null, i32 %28)
  store %struct.vector* %29, %struct.vector** %4, align 8
  br label %30

30:                                               ; preds = %21, %10
  %31 = load %struct.vector*, %struct.vector** %4, align 8
  %32 = icmp eq %struct.vector* null, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.vector* null, %struct.vector** %2, align 8
  br label %51

35:                                               ; preds = %30
  %36 = load %struct.vector*, %struct.vector** %4, align 8
  %37 = getelementptr inbounds %struct.vector, %struct.vector* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vector*, %struct.vector** %3, align 8
  %40 = getelementptr inbounds %struct.vector, %struct.vector* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vector*, %struct.vector** %4, align 8
  %43 = getelementptr inbounds %struct.vector, %struct.vector* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vector*, %struct.vector** %4, align 8
  %46 = getelementptr inbounds %struct.vector, %struct.vector* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = call i32 @memmove(i32 %38, i32 %41, i32 %48)
  %50 = load %struct.vector*, %struct.vector** %4, align 8
  store %struct.vector* %50, %struct.vector** %2, align 8
  br label %51

51:                                               ; preds = %35, %33
  %52 = load %struct.vector*, %struct.vector** %2, align 8
  ret %struct.vector* %52
}

declare dso_local i64 @dal_vector_get_count(%struct.vector*) #1

declare dso_local %struct.vector* @dal_vector_create(i32, i32, i32) #1

declare dso_local %struct.vector* @dal_vector_presized_create(i32, i64, i32*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
