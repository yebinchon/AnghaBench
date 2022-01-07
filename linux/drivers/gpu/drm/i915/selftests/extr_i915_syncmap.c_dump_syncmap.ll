; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_dump_syncmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_dump_syncmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_syncmap*, i32)* @dump_syncmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_syncmap(%struct.i915_syncmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_syncmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.i915_syncmap* %0, %struct.i915_syncmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @check_syncmap_free(%struct.i915_syncmap** %4)
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %30

18:                                               ; preds = %11
  %19 = load %struct.i915_syncmap*, %struct.i915_syncmap** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i64 @i915_syncmap_print_to_buf(%struct.i915_syncmap* %19, i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @kfree(i8* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = call i32 @i915_syncmap_free(%struct.i915_syncmap** %4)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @check_syncmap_free(%struct.i915_syncmap**) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @i915_syncmap_print_to_buf(%struct.i915_syncmap*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @i915_syncmap_free(%struct.i915_syncmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
