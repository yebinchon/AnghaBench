; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_arb.c_nv04_calc_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_arb.c_nv04_calc_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv_fifo_info = type { i32, i32 }
%struct.nv_sim_state = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv_fifo_info*, %struct.nv_sim_state*)* @nv04_calc_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_calc_arb(%struct.nv_fifo_info* %0, %struct.nv_sim_state* %1) #0 {
  %3 = alloca %struct.nv_fifo_info*, align 8
  %4 = alloca %struct.nv_sim_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.nv_fifo_info* %0, %struct.nv_fifo_info** %3, align 8
  store %struct.nv_sim_state* %1, %struct.nv_sim_state** %4, align 8
  %29 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %30 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %20, align 4
  %32 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %33 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %19, align 4
  %35 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %36 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %21, align 4
  %38 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %39 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %42 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %45 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 6
  store i32 %47, i32* %7, align 4
  %48 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %49 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  store i32 128, i32* %16, align 4
  store i32 2, i32* %11, align 4
  store i32 10, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 13, %51
  store i32 %52, i32* %10, align 4
  store i32 3, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %135, %2
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %142

57:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = mul nsw i32 %61, 1000
  %63 = mul nsw i32 %62, 1000
  %64 = load i32, i32* %19, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 1000
  %68 = mul nsw i32 %67, 1000
  %69 = load i32, i32* %21, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %23, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %71, 1000
  %73 = mul nsw i32 %72, 1000
  %74 = load i32, i32* %20, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sdiv i32 %78, 8
  store i32 %79, i32* %25, align 4
  store i32 2, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %82, %83
  %85 = mul nsw i32 %84, 1000
  %86 = mul nsw i32 %85, 1000
  %87 = load i32, i32* %19, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %26, align 4
  %89 = load i32, i32* %26, align 4
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %23, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %24, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %27, align 4
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %25, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 1000000
  store i32 %99, i32* %28, align 4
  %100 = load i32, i32* %28, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %28, align 4
  %102 = load i32, i32* %28, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 512
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %20, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %19, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %8, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sdiv i32 %113, 8
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %57
  %119 = load i32, i32* %17, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118, %57
  %122 = load i32, i32* %28, align 4
  %123 = icmp sgt i32 %122, 519
  br i1 %123, label %124, label %131

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %124, %121
  %132 = load i32, i32* %28, align 4
  %133 = icmp slt i32 %132, 384
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 384, i32* %28, align 4
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, i32* %28, align 4
  %137 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %138 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %141 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %53

142:                                              ; preds = %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
