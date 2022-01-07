; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_set_master_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_set_master_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.dc_stream_state*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_stream_state**, i32)* @set_master_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_master_stream(%struct.dc_stream_state** %0, i32 %1) #0 {
  %3 = alloca %struct.dc_stream_state**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_stream_state** %0, %struct.dc_stream_state*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %66, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %9
  %14 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %14, i64 %16
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %17, align 8
  %19 = icmp ne %struct.dc_stream_state* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %13
  %21 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %21, i64 %23
  %25 = load %struct.dc_stream_state*, %struct.dc_stream_state** %24, align 8
  %26 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  %31 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %31, i64 %33
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %34, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 100
  %40 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %40, i64 %42
  %44 = load %struct.dc_stream_state*, %struct.dc_stream_state** %43, align 8
  %45 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %48, i64 %50
  %52 = load %struct.dc_stream_state*, %struct.dc_stream_state** %51, align 8
  %53 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %47, %55
  %57 = sdiv i32 %39, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %30
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %30
  br label %65

65:                                               ; preds = %64, %20, %13
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %9

69:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %95, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %75, i64 %77
  %79 = load %struct.dc_stream_state*, %struct.dc_stream_state** %78, align 8
  %80 = icmp ne %struct.dc_stream_state* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %82, i64 %84
  %86 = load %struct.dc_stream_state*, %struct.dc_stream_state** %85, align 8
  %87 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %87, i64 %89
  %91 = load %struct.dc_stream_state*, %struct.dc_stream_state** %90, align 8
  %92 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.dc_stream_state* %86, %struct.dc_stream_state** %93, align 8
  br label %94

94:                                               ; preds = %81, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %70

98:                                               ; preds = %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
