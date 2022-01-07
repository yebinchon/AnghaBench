; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_iio_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_iio_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"Unknown IIO opcode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_context*, i32, i32, i32)* @atom_iio_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_iio_execute(%struct.atom_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atom_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -842150451, i32* %10, align 4
  br label %11

11:                                               ; preds = %4, %179
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @CU8(i32 %12)
  switch i32 %13, label %177 [
    i32 131, label %14
    i32 130, label %17
    i32 128, label %32
    i32 136, label %48
    i32 129, label %63
    i32 132, label %77
    i32 133, label %109
    i32 134, label %141
    i32 135, label %175
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %179

17:                                               ; preds = %11
  %18 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %19 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %21, align 8
  %23 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %24 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @CU16(i32 %27)
  %29 = call i32 %22(%struct.TYPE_3__* %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 3
  store i32 %31, i32* %7, align 4
  br label %179

32:                                               ; preds = %11
  %33 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %34 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_3__*, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32)** %36, align 8
  %38 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %39 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @CU16(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 %37(%struct.TYPE_3__* %40, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 3
  store i32 %47, i32* %7, align 4
  br label %179

48:                                               ; preds = %11
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @CU8(i32 %50)
  %52 = sub nsw i32 32, %51
  %53 = lshr i32 -1, %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 2
  %56 = call i32 @CU8(i32 %55)
  %57 = shl i32 %53, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 3
  store i32 %62, i32* %7, align 4
  br label %179

63:                                               ; preds = %11
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @CU8(i32 %65)
  %67 = sub nsw i32 32, %66
  %68 = lshr i32 -1, %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 2
  %71 = call i32 @CU8(i32 %70)
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 3
  store i32 %76, i32* %7, align 4
  br label %179

77:                                               ; preds = %11
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @CU8(i32 %79)
  %81 = sub nsw i32 32, %80
  %82 = lshr i32 -1, %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 3
  %85 = call i32 @CU8(i32 %84)
  %86 = shl i32 %82, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 2
  %93 = call i32 @CU8(i32 %92)
  %94 = ashr i32 %90, %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 @CU8(i32 %96)
  %98 = sub nsw i32 32, %97
  %99 = lshr i32 -1, %98
  %100 = and i32 %94, %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 3
  %103 = call i32 @CU8(i32 %102)
  %104 = shl i32 %100, %103
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %7, align 4
  br label %179

109:                                              ; preds = %11
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @CU8(i32 %111)
  %113 = sub nsw i32 32, %112
  %114 = lshr i32 -1, %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 3
  %117 = call i32 @CU8(i32 %116)
  %118 = shl i32 %114, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 2
  %125 = call i32 @CU8(i32 %124)
  %126 = ashr i32 %122, %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @CU8(i32 %128)
  %130 = sub nsw i32 32, %129
  %131 = lshr i32 -1, %130
  %132 = and i32 %126, %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 3
  %135 = call i32 @CU8(i32 %134)
  %136 = shl i32 %132, %135
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %7, align 4
  br label %179

141:                                              ; preds = %11
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i32 @CU8(i32 %143)
  %145 = sub nsw i32 32, %144
  %146 = lshr i32 -1, %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 3
  %149 = call i32 @CU8(i32 %148)
  %150 = shl i32 %146, %149
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %155 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 2
  %159 = call i32 @CU8(i32 %158)
  %160 = ashr i32 %156, %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  %163 = call i32 @CU8(i32 %162)
  %164 = sub nsw i32 32, %163
  %165 = lshr i32 -1, %164
  %166 = and i32 %160, %165
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 3
  %169 = call i32 @CU8(i32 %168)
  %170 = shl i32 %166, %169
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 4
  store i32 %174, i32* %7, align 4
  br label %179

175:                                              ; preds = %11
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %5, align 4
  br label %180

177:                                              ; preds = %11
  %178 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %180

179:                                              ; preds = %141, %109, %77, %63, %48, %32, %17, %14
  br label %11

180:                                              ; preds = %177, %175
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @CU8(i32) #1

declare dso_local i32 @CU16(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
