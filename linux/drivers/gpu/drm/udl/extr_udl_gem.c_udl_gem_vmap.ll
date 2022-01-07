; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_udl_gem_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_udl_gem_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_gem_object = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_gem_vmap(%struct.udl_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udl_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.udl_gem_object* %0, %struct.udl_gem_object** %3, align 8
  %6 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %13 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dma_buf_vmap(i32 %23)
  %25 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %26 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %28 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %17
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %59

35:                                               ; preds = %1
  %36 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %37 = call i32 @udl_gem_get_pages(%struct.udl_gem_object* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %59

42:                                               ; preds = %35
  %43 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %44 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PAGE_KERNEL, align 4
  %48 = call i64 @vmap(i32 %45, i32 %46, i32 0, i32 %47)
  %49 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %50 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %52 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55, %40, %34, %31
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @dma_buf_vmap(i32) #1

declare dso_local i32 @udl_gem_get_pages(%struct.udl_gem_object*) #1

declare dso_local i64 @vmap(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
