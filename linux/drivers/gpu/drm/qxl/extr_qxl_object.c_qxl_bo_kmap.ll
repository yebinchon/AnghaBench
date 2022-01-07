; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_bo = type { i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_bo_kmap(%struct.qxl_bo* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_bo*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qxl_bo* %0, %struct.qxl_bo** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %9 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %17 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %5, align 8
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %22 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  store i32 0, i32* %3, align 4
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %27 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %26, i32 0, i32 3
  %28 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %29 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %33 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %32, i32 0, i32 2
  %34 = call i32 @ttm_bo_kmap(%struct.TYPE_2__* %27, i32 0, i32 %31, i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %25
  %40 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %41 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %40, i32 0, i32 2
  %42 = call i8* @ttm_kmap_obj_virtual(i32* %41, i32* %6)
  %43 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %44 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %49 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %54 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %37, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i8* @ttm_kmap_obj_virtual(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
