; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"[%04zx] %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, i8*, i64)* @hexdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hexdump(%struct.drm_printer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [128 x i8], align 16
  store %struct.drm_printer* %0, %struct.drm_printer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 32, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %53, %3
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr i8, i8* %21, i64 %22
  %24 = call i32 @memcmp(i8* %20, i8* %23, i64 32)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %31 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %53

33:                                               ; preds = %19, %16
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %41 = call i32 @hex_dump_to_buffer(i8* %36, i64 %39, i64 32, i32 4, i8* %40, i32 128, i32 0)
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 128
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON_ONCE(i32 %44)
  %46 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %49 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %47, i8* %48)
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %33, %32
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 32
  store i64 %55, i64* %10, align 8
  br label %12

56:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, ...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @hex_dump_to_buffer(i8*, i64, i64, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
