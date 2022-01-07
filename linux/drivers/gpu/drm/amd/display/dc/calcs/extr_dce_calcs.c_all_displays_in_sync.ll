; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_all_displays_in_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_all_displays_in_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i32, i64 }

@MAX_PIPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, i32)* @all_displays_in_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @all_displays_in_sync(%struct.pipe_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MAX_PIPES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.pipe_ctx*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i64 %22
  %24 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %28, i64 %30
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %19
  br label %45

36:                                               ; preds = %27
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %14, i64 %43
  store %struct.pipe_ctx* %40, %struct.pipe_ctx** %44, align 8
  br label %45

45:                                               ; preds = %36, %35
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

52:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %14, i64 0
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %58, align 16
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %14, i64 %63
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %64, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @resource_are_streams_timing_synchronizable(i32 %61, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %53

75:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %70, %51
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @resource_are_streams_timing_synchronizable(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
