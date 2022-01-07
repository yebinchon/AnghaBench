; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_op_div32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_op_div32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@.str = private unnamed_addr constant [10 x i8] c"   src1: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"   src2: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @atom_op_div32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_op_div32(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = call i32 @U8(i32 %12)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @SDEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @atom_get_dst(%struct.TYPE_7__* %16, i32 %17, i32 %18, i32* %19, i32* null, i32 1)
  store i64 %20, i64* %9, align 8
  %21 = call i32 @SDEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @atom_get_src(%struct.TYPE_7__* %22, i32 %23, i32* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 32
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @do_div(i32 %42, i64 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @lower_32_bits(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 %46, i64* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @upper_32_bits(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 %54, i64* %60, align 8
  br label %74

61:                                               ; preds = %3
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %61, %28
  ret void
}

declare dso_local i32 @U8(i32) #1

declare dso_local i32 @SDEBUG(i8*) #1

declare dso_local i64 @atom_get_dst(%struct.TYPE_7__*, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @atom_get_src(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
