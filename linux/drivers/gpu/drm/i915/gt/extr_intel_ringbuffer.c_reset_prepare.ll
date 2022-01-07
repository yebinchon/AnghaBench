; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_reset_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_reset_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: timed out on STOP_RING\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: ring head [%x] not parked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @reset_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_prepare(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 2
  %7 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  store %struct.intel_uncore* %7, %struct.intel_uncore** %3, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, i32, ...) @GEM_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %16 = call i64 @intel_engine_stop_cs(%struct.intel_engine_cs* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %20 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i32, ...) @GEM_TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @RING_HEAD(i32 %25)
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @RING_TAIL(i32 %28)
  %30 = call i64 @intel_uncore_read_fw(%struct.intel_uncore* %27, i32 %29)
  %31 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %24, i32 %26, i64 %30)
  %32 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @RING_HEAD(i32 %33)
  %35 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %32, i32 %34)
  %36 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @RING_HEAD(i32 %37)
  %39 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %36, i32 %38, i64 0)
  %40 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @RING_TAIL(i32 %41)
  %43 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %40, i32 %42, i64 0)
  %44 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @RING_TAIL(i32 %45)
  %47 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %44, i32 %46)
  %48 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @RING_CTL(i32 %49)
  %51 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %48, i32 %50, i64 0)
  %52 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @RING_HEAD(i32 %53)
  %55 = call i64 @intel_uncore_read_fw(%struct.intel_uncore* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %23
  %58 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %59 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @RING_HEAD(i32 %62)
  %64 = call i64 @intel_uncore_read_fw(%struct.intel_uncore* %61, i32 %63)
  %65 = call i32 (i8*, i32, ...) @GEM_TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %60, i64 %64)
  br label %66

66:                                               ; preds = %57, %23
  ret void
}

declare dso_local i32 @GEM_TRACE(i8*, i32, ...) #1

declare dso_local i64 @intel_engine_stop_cs(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i64) #1

declare dso_local i32 @RING_HEAD(i32) #1

declare dso_local i64 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @RING_TAIL(i32) #1

declare dso_local i32 @intel_uncore_posting_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @RING_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
