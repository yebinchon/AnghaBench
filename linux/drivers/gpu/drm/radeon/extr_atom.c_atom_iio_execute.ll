; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_iio_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_iio_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32, i32)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@CHIP_RV515 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown IIO opcode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_context*, i32, i32, i32)* @atom_iio_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_iio_execute(%struct.atom_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atom_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %13 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %10, align 8
  store i32 -842150451, i32* %11, align 4
  br label %19

19:                                               ; preds = %4, %206
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @CU8(i32 %20)
  switch i32 %21, label %204 [
    i32 131, label %22
    i32 130, label %25
    i32 128, label %40
    i32 136, label %75
    i32 129, label %90
    i32 132, label %104
    i32 133, label %136
    i32 134, label %168
    i32 135, label %202
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %206

25:                                               ; preds = %19
  %26 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %27 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %29, align 8
  %31 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %32 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @CU16(i32 %35)
  %37 = call i32 %30(%struct.TYPE_6__* %33, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 3
  store i32 %39, i32* %7, align 4
  br label %206

40:                                               ; preds = %19
  %41 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CHIP_RV515, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %48 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %50, align 8
  %52 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %53 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @CU16(i32 %56)
  %58 = call i32 %51(%struct.TYPE_6__* %54, i32 %57)
  br label %59

59:                                               ; preds = %46, %40
  %60 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %61 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %63, align 8
  %65 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %66 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @CU16(i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 %64(%struct.TYPE_6__* %67, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 3
  store i32 %74, i32* %7, align 4
  br label %206

75:                                               ; preds = %19
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @CU8(i32 %77)
  %79 = sub nsw i32 32, %78
  %80 = lshr i32 -1, %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 2
  %83 = call i32 @CU8(i32 %82)
  %84 = shl i32 %80, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 3
  store i32 %89, i32* %7, align 4
  br label %206

90:                                               ; preds = %19
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @CU8(i32 %92)
  %94 = sub nsw i32 32, %93
  %95 = lshr i32 -1, %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 2
  %98 = call i32 @CU8(i32 %97)
  %99 = shl i32 %95, %98
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 3
  store i32 %103, i32* %7, align 4
  br label %206

104:                                              ; preds = %19
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @CU8(i32 %106)
  %108 = sub nsw i32 32, %107
  %109 = lshr i32 -1, %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 3
  %112 = call i32 @CU8(i32 %111)
  %113 = shl i32 %109, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 2
  %120 = call i32 @CU8(i32 %119)
  %121 = ashr i32 %117, %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @CU8(i32 %123)
  %125 = sub nsw i32 32, %124
  %126 = lshr i32 -1, %125
  %127 = and i32 %121, %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 3
  %130 = call i32 @CU8(i32 %129)
  %131 = shl i32 %127, %130
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 4
  store i32 %135, i32* %7, align 4
  br label %206

136:                                              ; preds = %19
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i32 @CU8(i32 %138)
  %140 = sub nsw i32 32, %139
  %141 = lshr i32 -1, %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 3
  %144 = call i32 @CU8(i32 %143)
  %145 = shl i32 %141, %144
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 2
  %152 = call i32 @CU8(i32 %151)
  %153 = ashr i32 %149, %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  %156 = call i32 @CU8(i32 %155)
  %157 = sub nsw i32 32, %156
  %158 = lshr i32 -1, %157
  %159 = and i32 %153, %158
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 3
  %162 = call i32 @CU8(i32 %161)
  %163 = shl i32 %159, %162
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 4
  store i32 %167, i32* %7, align 4
  br label %206

168:                                              ; preds = %19
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  %171 = call i32 @CU8(i32 %170)
  %172 = sub nsw i32 32, %171
  %173 = lshr i32 -1, %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 3
  %176 = call i32 @CU8(i32 %175)
  %177 = shl i32 %173, %176
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %11, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %11, align 4
  %181 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %182 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 2
  %186 = call i32 @CU8(i32 %185)
  %187 = ashr i32 %183, %186
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  %190 = call i32 @CU8(i32 %189)
  %191 = sub nsw i32 32, %190
  %192 = lshr i32 -1, %191
  %193 = and i32 %187, %192
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 3
  %196 = call i32 @CU8(i32 %195)
  %197 = shl i32 %193, %196
  %198 = load i32, i32* %11, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 4
  store i32 %201, i32* %7, align 4
  br label %206

202:                                              ; preds = %19
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %5, align 4
  br label %207

204:                                              ; preds = %19
  %205 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %207

206:                                              ; preds = %168, %136, %104, %90, %75, %59, %25, %22
  br label %19

207:                                              ; preds = %204, %202
  %208 = load i32, i32* %5, align 4
  ret i32 %208
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
