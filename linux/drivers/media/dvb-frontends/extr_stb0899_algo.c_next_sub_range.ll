; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_next_sub_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_next_sub_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_params, %struct.stb0899_internal }
%struct.stb0899_params = type { i64 }
%struct.stb0899_internal = type { i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @next_sub_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_sub_range(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_params*, align 8
  %5 = alloca i64, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %6 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %7 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %6, i32 0, i32 1
  store %struct.stb0899_internal* %7, %struct.stb0899_internal** %3, align 8
  %8 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %9 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %8, i32 0, i32 0
  store %struct.stb0899_params* %9, %struct.stb0899_params** %4, align 8
  %10 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %11 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %1
  %15 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %16 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %19 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %24 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %28 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sdiv i64 %29, 2
  %31 = add nsw i64 %26, %30
  %32 = sub nsw i64 %22, %31
  %33 = trunc i64 %32 to i32
  %34 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %35 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @min(i32 %33, i32 %37)
  %39 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %40 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %42 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %14
  %46 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %47 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %14
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %51 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = sdiv i64 %53, 2
  %55 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %56 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %61

61:                                               ; preds = %48, %1
  %62 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %63 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %66 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %69 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = sdiv i32 %71, 1000
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %64, %73
  %75 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %76 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %78 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 0, %79
  %81 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %82 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  ret void
}

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
