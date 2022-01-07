; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_output_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_program_output_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mpc* }
%struct.mpc = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.mpc*, i32, i32, i32)*, i32 (%struct.mpc*, i32, i32*, i32)*, i32 (%struct.mpc*, i32, i32)* }
%struct.pipe_ctx = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@MPC_OUTPUT_CSC_COEF_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_program_output_csc(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mpc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dc*, %struct.dc** %6, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.mpc*, %struct.mpc** %17, align 8
  store %struct.mpc* %18, %struct.mpc** %11, align 8
  %19 = load i32, i32* @MPC_OUTPUT_CSC_COEF_A, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.mpc*, %struct.mpc** %11, align 8
  %27 = getelementptr inbounds %struct.mpc, %struct.mpc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i32 (%struct.mpc*, i32, i32)*, i32 (%struct.mpc*, i32, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.mpc*, i32, i32)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %5
  %33 = load %struct.mpc*, %struct.mpc** %11, align 8
  %34 = getelementptr inbounds %struct.mpc, %struct.mpc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32 (%struct.mpc*, i32, i32)*, i32 (%struct.mpc*, i32, i32)** %36, align 8
  %38 = load %struct.mpc*, %struct.mpc** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 %37(%struct.mpc* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %32, %5
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.mpc*, %struct.mpc** %11, align 8
  %51 = getelementptr inbounds %struct.mpc, %struct.mpc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32 (%struct.mpc*, i32, i32*, i32)*, i32 (%struct.mpc*, i32, i32*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.mpc*, i32, i32*, i32)* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.mpc*, %struct.mpc** %11, align 8
  %58 = getelementptr inbounds %struct.mpc, %struct.mpc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32 (%struct.mpc*, i32, i32*, i32)*, i32 (%struct.mpc*, i32, i32*, i32)** %60, align 8
  %62 = load %struct.mpc*, %struct.mpc** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 %61(%struct.mpc* %62, i32 %63, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %49
  br label %87

68:                                               ; preds = %41
  %69 = load %struct.mpc*, %struct.mpc** %11, align 8
  %70 = getelementptr inbounds %struct.mpc, %struct.mpc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32 (%struct.mpc*, i32, i32, i32)*, i32 (%struct.mpc*, i32, i32, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.mpc*, i32, i32, i32)* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load %struct.mpc*, %struct.mpc** %11, align 8
  %77 = getelementptr inbounds %struct.mpc, %struct.mpc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32 (%struct.mpc*, i32, i32, i32)*, i32 (%struct.mpc*, i32, i32, i32)** %79, align 8
  %81 = load %struct.mpc*, %struct.mpc** %11, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 %80(%struct.mpc* %81, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %75, %68
  br label %87

87:                                               ; preds = %86, %67
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
