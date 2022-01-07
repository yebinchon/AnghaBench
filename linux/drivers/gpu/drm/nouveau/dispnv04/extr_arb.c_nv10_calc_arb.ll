; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_arb.c_nv10_calc_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_arb.c_nv10_calc_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv_fifo_info = type { i32, i32 }
%struct.nv_sim_state = type { i32, i32, i32, i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv_fifo_info*, %struct.nv_sim_state*)* @nv10_calc_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_calc_arb(%struct.nv_fifo_info* %0, %struct.nv_sim_state* %1) #0 {
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
  store %struct.nv_fifo_info* %0, %struct.nv_fifo_info** %3, align 8
  store %struct.nv_sim_state* %1, %struct.nv_sim_state** %4, align 8
  store i32 80, i32* %21, align 4
  %22 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %23 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %26 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %29 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %33 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %39 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %6, align 4
  %43 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %44 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1536, i32 1024
  store i32 %48, i32* %18, align 4
  store i32 4, i32* %7, align 4
  store i32 9, i32* %8, align 4
  store i32 18, i32* %9, align 4
  %49 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %50 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 1
  %55 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %56 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = sdiv i32 %58, 32
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = mul nsw i32 %63, 1000
  %65 = load i32, i32* %13, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, 1000
  %69 = mul nsw i32 %68, 1000
  %70 = load i32, i32* %12, align 4
  %71 = sdiv i32 %69, %70
  %72 = add nsw i32 %66, %71
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 1000
  %75 = mul nsw i32 %74, 1000
  %76 = load i32, i32* %11, align 4
  %77 = sdiv i32 %75, %76
  %78 = add nsw i32 %72, %77
  store i32 %78, i32* %14, align 4
  %79 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %80 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 2, %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %86 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 %84, %88
  %90 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %91 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 32
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 8, i32 4
  %96 = add nsw i32 %89, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = mul nsw i32 %98, 1000
  %100 = load i32, i32* %13, align 4
  %101 = sdiv i32 %99, %100
  store i32 %101, i32* %15, align 4
  %102 = load %struct.nv_sim_state*, %struct.nv_sim_state** %4, align 8
  %103 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %2
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %107, %108
  %110 = add nsw i32 %109, 80
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %106, %2
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 1, %114
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sdiv i32 %118, 1000000
  %120 = sub nsw i32 %115, %119
  %121 = load i32, i32* %5, align 4
  %122 = sdiv i32 %121, 1000
  %123 = mul nsw i32 %120, %122
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sdiv i32 %126, 1000
  %128 = sdiv i32 %123, %127
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i8* @min(i32 %129, i32 1024)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %133 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %5, align 4
  %135 = mul nsw i32 80, %134
  %136 = sdiv i32 %135, 1000000
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %139 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @min(i32 %137, i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %144 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %146 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @rounddown_pow_of_two(i32 %147)
  %149 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %150 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %6, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sdiv i32 %155, 1000000
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %160 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %158, %161
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %6, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sdiv i32 %165, 1000000
  %167 = add nsw i32 %162, %166
  %168 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %169 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %6, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %5, align 4
  %174 = sdiv i32 %172, %173
  %175 = add nsw i32 %167, %174
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %19, align 4
  %179 = sub nsw i32 %177, %178
  %180 = mul nsw i32 10, %179
  %181 = sdiv i32 %180, 100
  %182 = add nsw i32 %176, %181
  %183 = load %struct.nv_fifo_info*, %struct.nv_fifo_info** %3, align 8
  %184 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  ret void
}

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
