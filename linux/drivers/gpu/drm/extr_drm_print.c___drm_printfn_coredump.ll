; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_print.c___drm_printfn_coredump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_print.c___drm_printfn_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { %struct.drm_print_iterator* }
%struct.drm_print_iterator = type { i64, i64, i64, i64 }
%struct.va_format = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%pV\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__drm_printfn_coredump(%struct.drm_printer* %0, %struct.va_format* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.va_format*, align 8
  %5 = alloca %struct.drm_print_iterator*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.va_format* %1, %struct.va_format** %4, align 8
  %9 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %10 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %9, i32 0, i32 0
  %11 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %10, align 8
  store %struct.drm_print_iterator* %11, %struct.drm_print_iterator** %5, align 8
  %12 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %13 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %103

17:                                               ; preds = %2
  %18 = load %struct.va_format*, %struct.va_format** %4, align 8
  %19 = call i64 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.va_format* %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %21 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %26 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ule i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %32 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %103

35:                                               ; preds = %17
  %36 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %37 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %40 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %46 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %43
  %50 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %51 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %54 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %59 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %66 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.va_format*, %struct.va_format** %4, align 8
  %69 = call i64 @snprintf(i8* %64, i64 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.va_format* %68)
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %72 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.drm_print_iterator*, %struct.drm_print_iterator** %5, align 8
  %77 = getelementptr inbounds %struct.drm_print_iterator, %struct.drm_print_iterator* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %103

80:                                               ; preds = %43, %35
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = load i32, i32* @__GFP_NOWARN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @__GFP_NORETRY, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @kmalloc(i64 %82, i32 %87)
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  br label %103

92:                                               ; preds = %80
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 1
  %96 = load %struct.va_format*, %struct.va_format** %4, align 8
  %97 = call i64 @snprintf(i8* %93, i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.va_format* %96)
  %98 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @__drm_puts_coredump(%struct.drm_printer* %98, i8* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @kfree(i8* %101)
  br label %103

103:                                              ; preds = %92, %91, %49, %29, %16
  ret void
}

declare dso_local i64 @snprintf(i8*, i64, i8*, %struct.va_format*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @__drm_puts_coredump(%struct.drm_printer*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
