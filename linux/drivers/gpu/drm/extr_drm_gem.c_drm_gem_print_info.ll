; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_print_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_gem_object = type { i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)* }
%struct.TYPE_4__ = type { i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)* }

@.str = private unnamed_addr constant [9 x i8] c"name=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"refcount=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"start=%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"size=%zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"imported=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_print_info(%struct.drm_printer* %0, i32 %1, %struct.drm_gem_object* %2) #0 {
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_printer* %0, %struct.drm_printer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_gem_object* %2, %struct.drm_gem_object** %6, align 8
  %7 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @drm_printf_indent(%struct.drm_printer* %7, i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %15, i32 0, i32 6
  %17 = call i8* @kref_read(i32* %16)
  %18 = call i32 @drm_printf_indent(%struct.drm_printer* %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 5
  %23 = call i8* @drm_vma_node_start(i32* %22)
  %24 = call i32 @drm_printf_indent(%struct.drm_printer* %19, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %28 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @drm_printf_indent(%struct.drm_printer* %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %34 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %39 = call i32 @drm_printf_indent(%struct.drm_printer* %31, i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %3
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)*, i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)** %48, align 8
  %50 = icmp ne i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %53 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)*, i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)** %55, align 8
  %57 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %60 = call i32 %56(%struct.drm_printer* %57, i32 %58, %struct.drm_gem_object* %59)
  br label %83

61:                                               ; preds = %44, %3
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %63 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)*, i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)** %67, align 8
  %69 = icmp ne i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %72 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)*, i32 (%struct.drm_printer*, i32, %struct.drm_gem_object*)** %76, align 8
  %78 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %81 = call i32 %77(%struct.drm_printer* %78, i32 %79, %struct.drm_gem_object* %80)
  br label %82

82:                                               ; preds = %70, %61
  br label %83

83:                                               ; preds = %82, %51
  ret void
}

declare dso_local i32 @drm_printf_indent(%struct.drm_printer*, i32, i8*, i8*) #1

declare dso_local i8* @kref_read(i32*) #1

declare dso_local i8* @drm_vma_node_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
