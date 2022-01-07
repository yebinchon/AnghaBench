; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_framebuffer_print_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_framebuffer_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_framebuffer = type { i32, i8*, i8**, i8**, i64*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_format_name_buf = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"allocated by = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"refcount=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"format=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"modifier=0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"size=%ux%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"layers:\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"size[%u]=%dx%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"pitch[%u]=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"offset[%u]=%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"obj[%u]:%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_framebuffer_print_info(%struct.drm_printer* %0, i32 %1, %struct.drm_framebuffer* %2) #0 {
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_format_name_buf, align 4
  %8 = alloca i32, align 4
  store %struct.drm_printer* %0, %struct.drm_printer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %6, align 8
  %9 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %12 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %9, i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %18 = call i32 @drm_framebuffer_read_refcount(%struct.drm_framebuffer* %17)
  %19 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @drm_get_format_name(i32 %26, %struct.drm_format_name_buf* %7)
  %28 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %29, i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %35, i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %39, i8* %42)
  %44 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %44, i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %133, %3
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %50 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %49, i32 0, i32 5
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ult i32 %48, %53
  br i1 %54, label %55, label %136

55:                                               ; preds = %47
  %56 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %61 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @drm_framebuffer_plane_width(i32 %62, %struct.drm_framebuffer* %63, i32 %64)
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %67 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @drm_framebuffer_plane_height(i8* %68, %struct.drm_framebuffer* %69, i32 %70)
  %72 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %56, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %59, i32 %65, i32 %71)
  %73 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %78 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %73, i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %76, i8* %83)
  %85 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %90 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %89, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %85, i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %88, i8* %95)
  %97 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, 1
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %102 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %111 = call i32 (%struct.drm_printer*, i32, i8*, ...) @drm_printf_indent(%struct.drm_printer* %97, i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %100, i8* %110)
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %113 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %55
  %121 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 2
  %124 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %125 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %124, i32 0, i32 4
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @drm_gem_print_info(%struct.drm_printer* %121, i32 %123, i64 %130)
  br label %132

132:                                              ; preds = %120, %55
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %47

136:                                              ; preds = %47
  ret void
}

declare dso_local i32 @drm_printf_indent(%struct.drm_printer*, i32, i8*, ...) #1

declare dso_local i32 @drm_framebuffer_read_refcount(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @drm_framebuffer_plane_width(i32, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @drm_framebuffer_plane_height(i8*, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @drm_gem_print_info(%struct.drm_printer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
