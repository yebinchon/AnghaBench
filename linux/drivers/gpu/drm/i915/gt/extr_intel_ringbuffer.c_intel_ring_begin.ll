; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, %struct.intel_ring* }
%struct.intel_ring = type { i32, i32, i32, i32, i32* }

@POISON_INUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @intel_ring_begin(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 2
  %16 = load %struct.intel_ring*, %struct.intel_ring** %15, align 8
  store %struct.intel_ring* %16, %struct.intel_ring** %6, align 8
  %17 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %18 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %21 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 1
  %30 = call i32 @GEM_BUG_ON(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %33 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %38 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ugt i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @GEM_BUG_ON(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ugt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %2
  %50 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %51 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %54 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %52, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %72

66:                                               ; preds = %49
  %67 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %68 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %69, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %76 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ugt i32 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %73
  %83 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %84 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @GEM_BUG_ON(i32 %88)
  %90 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %91 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %92 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @wait_for_space(%struct.intel_ring* %90, i32 %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %82
  %100 = load i32, i32* %13, align 4
  %101 = call i32* @ERR_PTR(i32 %100)
  store i32* %101, i32** %3, align 8
  br label %200

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102, %73
  %104 = load i32, i32* %9, align 4
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, -2
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %112 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ugt i32 %110, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @GEM_BUG_ON(i32 %115)
  %117 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %118 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %119, %120
  %122 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %123 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ugt i32 %121, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @GEM_BUG_ON(i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @IS_ALIGNED(i32 %128, i32 4)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @GEM_BUG_ON(i32 %132)
  %134 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %135 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %138 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = udiv i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memset64(i32* %141, i32 0, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %149 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = sub i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %153 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %107, %103
  %155 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %156 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %159 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sub i32 %160, %161
  %163 = icmp ugt i32 %157, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @GEM_BUG_ON(i32 %164)
  %166 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %167 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ult i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @GEM_BUG_ON(i32 %171)
  %173 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %174 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %177 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  store i32* %180, i32** %11, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* @POISON_INUSE, align 4
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = udiv i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = call i32 @memset32(i32* %181, i32 %182, i32 %186)
  %188 = call i32 @GEM_DEBUG_EXEC(i32 %187)
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %191 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.intel_ring*, %struct.intel_ring** %6, align 8
  %196 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = sub i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32*, i32** %11, align 8
  store i32* %199, i32** %3, align 8
  br label %200

200:                                              ; preds = %154, %99
  %201 = load i32*, i32** %3, align 8
  ret i32* %201
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_for_space(%struct.intel_ring*, i32, i32) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @memset64(i32*, i32, i32) #1

declare dso_local i32 @GEM_DEBUG_EXEC(i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
