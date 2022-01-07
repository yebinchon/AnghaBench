; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_gpu_state_copy_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_gpu_state_copy_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gpu_state_copy_to_buffer(%struct.i915_gpu_state* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_gpu_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %6, align 8
  %17 = icmp ne %struct.i915_gpu_state* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %4
  store i32 0, i32* %5, align 4
  br label %158

22:                                               ; preds = %18
  %23 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %6, align 8
  %24 = call i32 @err_print_to_sgl(%struct.i915_gpu_state* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %158

29:                                               ; preds = %22
  %30 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %6, align 8
  %31 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.scatterlist* @READ_ONCE(i32 %32)
  store %struct.scatterlist* %33, %struct.scatterlist** %10, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %35 = icmp ne %struct.scatterlist* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %29
  %43 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %6, align 8
  %44 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %43, i32 0, i32 1
  %45 = load %struct.scatterlist*, %struct.scatterlist** %44, align 8
  store %struct.scatterlist* %45, %struct.scatterlist** %10, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %48 = icmp ne %struct.scatterlist* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %158

50:                                               ; preds = %46
  %51 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %148, %50
  %55 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %56 = call i32 @sg_is_chain(%struct.scatterlist* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %60 = call %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist* %59)
  store %struct.scatterlist* %60, %struct.scatterlist** %10, align 8
  %61 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %62 = call i32 @sg_is_chain(%struct.scatterlist* %61)
  %63 = call i32 @GEM_BUG_ON(i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %8, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %12, align 8
  br label %148

77:                                               ; preds = %64
  %78 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %77
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %12, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %14, align 8
  %89 = icmp ugt i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @GEM_BUG_ON(i32 %90)
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %12, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* %14, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %15, align 8
  %102 = load i64, i64* %8, align 8
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %84, %77
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @min(i64 %104, i64 %105)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %112 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ugt i64 %110, %113
  br label %115

115:                                              ; preds = %109, %103
  %116 = phi i1 [ true, %103 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @GEM_BUG_ON(i32 %117)
  %119 = load i8*, i8** %7, align 8
  %120 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %121 = call i32 @sg_page(%struct.scatterlist* %120)
  %122 = call i64 @page_address(i32 %121)
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %122, %123
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @memcpy(i8* %119, i64 %124, i64 %125)
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %12, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8* %135, i8** %7, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %9, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %115
  %142 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %6, align 8
  %143 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %146 = call i32 @WRITE_ONCE(i32 %144, %struct.scatterlist* %145)
  br label %155

147:                                              ; preds = %115
  br label %148

148:                                              ; preds = %147, %73
  %149 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %150 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %149, i32 1
  store %struct.scatterlist* %150, %struct.scatterlist** %10, align 8
  %151 = ptrtoint %struct.scatterlist* %149 to i32
  %152 = call i32 @sg_is_last(i32 %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  br i1 %154, label %54, label %155

155:                                              ; preds = %148, %141
  %156 = load i64, i64* %11, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %155, %49, %27, %21
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @err_print_to_sgl(%struct.i915_gpu_state*) #1

declare dso_local %struct.scatterlist* @READ_ONCE(i32) #1

declare dso_local i32 @sg_is_chain(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.scatterlist*) #1

declare dso_local i32 @sg_is_last(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
