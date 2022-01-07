; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c___gen8_ppgtt_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c___gen8_ppgtt_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32 }
%struct.i915_page_directory = type { i8** }

@GEN8_PDES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*, %struct.i915_page_directory*, i32, i32)* @__gen8_ppgtt_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gen8_ppgtt_cleanup(%struct.i915_address_space* %0, %struct.i915_page_directory* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i915_address_space*, align 8
  %6 = alloca %struct.i915_page_directory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %5, align 8
  store %struct.i915_page_directory* %1, %struct.i915_page_directory** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %4
  %13 = load %struct.i915_page_directory*, %struct.i915_page_directory** %6, align 8
  %14 = getelementptr inbounds %struct.i915_page_directory, %struct.i915_page_directory* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %9, align 8
  br label %16

16:                                               ; preds = %29, %12
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %29

21:                                               ; preds = %16
  %22 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.i915_page_directory*
  %26 = load i32, i32* @GEN8_PDES, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 1
  call void @__gen8_ppgtt_cleanup(%struct.i915_address_space* %22, %struct.i915_page_directory* %25, i32 %26, i32 %28)
  br label %29

29:                                               ; preds = %21, %20
  %30 = load i8**, i8*** %9, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %16, label %35

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %38 = load %struct.i915_page_directory*, %struct.i915_page_directory** %6, align 8
  %39 = call i32 @free_px(%struct.i915_address_space* %37, %struct.i915_page_directory* %38)
  ret void
}

declare dso_local i32 @free_px(%struct.i915_address_space*, %struct.i915_page_directory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
