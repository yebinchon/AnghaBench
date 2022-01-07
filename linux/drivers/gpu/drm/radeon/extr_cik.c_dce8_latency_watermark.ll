; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_dce8_latency_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_dce8_latency_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce8_wm_params = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce8_wm_params*)* @dce8_latency_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce8_latency_watermark(%struct.dce8_wm_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dce8_wm_params*, align 8
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  store %struct.dce8_wm_params* %0, %struct.dce8_wm_params** %3, align 8
  store i32 2000, i32* %4, align 4
  %19 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %20 = call i32 @dce8_available_bandwidth(%struct.dce8_wm_params* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 4096000, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 512000, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %26 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 40000000, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %30 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %36 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %10, align 4
  store i32 12288, i32* %15, align 4
  %46 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %47 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %190

51:                                               ; preds = %1
  %52 = call i8* @dfixed_const(i32 2)
  %53 = ptrtoint i8* %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = call i8* @dfixed_const(i32 1)
  %56 = ptrtoint i8* %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %59 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %96, label %65

65:                                               ; preds = %51
  %66 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %67 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %75 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 3
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %65
  %79 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %80 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 5
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %85 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %93 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %78, %73, %51
  store i32 4, i32* %11, align 4
  br label %98

97:                                               ; preds = %91, %83
  store i32 2, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32, i32* %5, align 4
  %100 = call i8* @dfixed_const(i32 %99)
  %101 = ptrtoint i8* %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %104 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @dfixed_const(i32 %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @dfixed_div(i64 %110, i64 %112)
  %114 = ptrtoint i8* %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %118 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %116, %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 512
  %123 = call i32 @div_u64(i32 %120, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @dfixed_trunc(i64 %125)
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @min(i32 %126, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %131 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %134 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %132, %135
  %137 = sdiv i32 %136, 1000
  %138 = call i32 @min(i32 %129, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %141 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  %144 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %145 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %143, %146
  %148 = call i8* @dfixed_const(i32 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %149, i64* %150, align 8
  %151 = call i8* @dfixed_const(i32 1000)
  %152 = ptrtoint i8* %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i64 %152, i64* %153, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i8* @dfixed_const(i32 %154)
  %156 = ptrtoint i8* %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 %156, i64* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @dfixed_div(i64 %159, i64 %161)
  %163 = ptrtoint i8* %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @dfixed_div(i64 %166, i64 %168)
  %170 = ptrtoint i8* %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %170, i64* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @dfixed_trunc(i64 %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %177 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %98
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %2, align 4
  br label %190

182:                                              ; preds = %98
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.dce8_wm_params*, %struct.dce8_wm_params** %3, align 8
  %186 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %184, %187
  %189 = add nsw i32 %183, %188
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %182, %180, %50
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @dce8_available_bandwidth(%struct.dce8_wm_params*) #1

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dfixed_trunc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
