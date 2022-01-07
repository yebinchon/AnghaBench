; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_latency_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_latency_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evergreen_wm_params = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evergreen_wm_params*)* @evergreen_latency_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_latency_watermark(%struct.evergreen_wm_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evergreen_wm_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  store %struct.evergreen_wm_params* %0, %struct.evergreen_wm_params** %3, align 8
  store i32 2000, i32* %4, align 4
  %17 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %18 = call i32 @evergreen_available_bandwidth(%struct.evergreen_wm_params* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 4096000, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 512000, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %24 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 40000000, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %28 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %34 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %45 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %177

49:                                               ; preds = %1
  %50 = call i8* @dfixed_const(i32 2)
  %51 = ptrtoint i8* %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = call i8* @dfixed_const(i32 1)
  %54 = ptrtoint i8* %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %57 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %94, label %63

63:                                               ; preds = %49
  %64 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %65 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %73 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 3
  br i1 %75, label %94, label %76

76:                                               ; preds = %71, %63
  %77 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %78 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 5
  br i1 %80, label %94, label %81

81:                                               ; preds = %76
  %82 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %83 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %85, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %91 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %76, %71, %49
  store i32 4, i32* %11, align 4
  br label %96

95:                                               ; preds = %89, %81
  store i32 2, i32* %11, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* %5, align 4
  %98 = call i8* @dfixed_const(i32 %97)
  %99 = ptrtoint i8* %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %102 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @dfixed_const(i32 %103)
  %105 = ptrtoint i8* %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 %105, i64* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @dfixed_div(i64 %108, i64 %110)
  %112 = ptrtoint i8* %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @dfixed_trunc(i64 %115)
  %117 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %118 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %121 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = sdiv i32 %123, 1000
  %125 = call i32 @min(i32 %116, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %128 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %132 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = call i8* @dfixed_const(i32 %134)
  %136 = ptrtoint i8* %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %136, i64* %137, align 8
  %138 = call i8* @dfixed_const(i32 1000)
  %139 = ptrtoint i8* %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 %139, i64* %140, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i8* @dfixed_const(i32 %141)
  %143 = ptrtoint i8* %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @dfixed_div(i64 %146, i64 %148)
  %150 = ptrtoint i8* %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 %150, i64* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @dfixed_div(i64 %153, i64 %155)
  %157 = ptrtoint i8* %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %157, i64* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @dfixed_trunc(i64 %160)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %164 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %96
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %2, align 4
  br label %177

169:                                              ; preds = %96
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.evergreen_wm_params*, %struct.evergreen_wm_params** %3, align 8
  %173 = getelementptr inbounds %struct.evergreen_wm_params, %struct.evergreen_wm_params* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  %176 = add nsw i32 %170, %175
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %169, %167, %48
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @evergreen_available_bandwidth(%struct.evergreen_wm_params*) #1

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dfixed_trunc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
