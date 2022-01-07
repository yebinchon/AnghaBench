; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_guc_ct_buffer_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_guc_ct_buffer_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guc_ct_buffer_desc = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [44 x i8] c"CT: desc %p init addr=%#x size=%u owner=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.guc_ct_buffer_desc*, i8*, i8*, i8*)* @guc_ct_buffer_desc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_ct_buffer_desc_init(%struct.guc_ct_buffer_desc* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.guc_ct_buffer_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.guc_ct_buffer_desc* %0, %struct.guc_ct_buffer_desc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @CT_DEBUG_DRIVER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.guc_ct_buffer_desc* %9, i8* %10, i8* %11, i8* %12)
  %14 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %5, align 8
  %15 = call i32 @memset(%struct.guc_ct_buffer_desc* %14, i32 0, i32 24)
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %5, align 8
  %18 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %5, align 8
  %21 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %5, align 8
  %24 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  ret void
}

declare dso_local i32 @CT_DEBUG_DRIVER(i8*, %struct.guc_ct_buffer_desc*, i8*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.guc_ct_buffer_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
