; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_output_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_output_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i64*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, i32, i64*, i32)* @dcn10_program_output_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_program_output_csc(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %61

19:                                               ; preds = %5
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_11__*, i64*)*, i32 (%struct.TYPE_11__*, i64*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_11__*, i64*)* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %19
  %30 = load i64*, i64** %9, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 3
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @dcn10_is_rear_mpo_fix_required(%struct.pipe_ctx* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = call i32 @dcn10_set_csc_adjustment_rgb_mpo_fix(%struct.pipe_ctx* %41, i64* %42)
  br label %59

44:                                               ; preds = %35, %29
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_11__*, i64*)*, i32 (%struct.TYPE_11__*, i64*)** %51, align 8
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = call i32 %52(%struct.TYPE_11__* %56, i64* %57)
  br label %59

59:                                               ; preds = %44, %40
  br label %60

60:                                               ; preds = %59, %19
  br label %87

61:                                               ; preds = %5
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.TYPE_11__*, i32)* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %78, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 %79(%struct.TYPE_11__* %83, i32 %84)
  br label %86

86:                                               ; preds = %71, %61
  br label %87

87:                                               ; preds = %86, %60
  ret void
}

declare dso_local i64 @dcn10_is_rear_mpo_fix_required(%struct.pipe_ctx*, i32) #1

declare dso_local i32 @dcn10_set_csc_adjustment_rgb_mpo_fix(%struct.pipe_ctx*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
