; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_vector.c_dal_vector_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_vector_reserve(%struct.vector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.vector* %0, %struct.vector** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vector*, %struct.vector** %4, align 8
  %9 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.vector*, %struct.vector** %4, align 8
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.vector*, %struct.vector** %4, align 8
  %19 = getelementptr inbounds %struct.vector, %struct.vector* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @krealloc(i8* %16, i32 %21, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.vector*, %struct.vector** %4, align 8
  %29 = getelementptr inbounds %struct.vector, %struct.vector* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.vector*, %struct.vector** %4, align 8
  %32 = getelementptr inbounds %struct.vector, %struct.vector* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %26, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i8* @krealloc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
