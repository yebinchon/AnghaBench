; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_op_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_op_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"   switch: \00", align 1
@ATOM_CASE_END = common dso_local global i64 0, align 8
@ATOM_CASE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"   case: \00", align 1
@ATOM_ARG_IMM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"   target: %04X\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Bad case\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @atom_op_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_op_switch(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = call i64 @U8(i32 %12)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @atom_get_src(%struct.TYPE_4__* %17, i32 %18, i32* %19)
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %67, %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @U16(i32 %23)
  %25 = load i64, i64* @ATOM_CASE_END, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @U8(i32 %29)
  %31 = load i64, i64* @ATOM_CASE_MAGIC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 56
  %41 = load i32, i32* @ATOM_ARG_IMM, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @atom_get_src(%struct.TYPE_4__* %38, i32 %42, i32* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @U16(i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %33
  %52 = load i64, i64* %10, align 8
  %53 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %72

61:                                               ; preds = %33
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %62, align 4
  br label %67

65:                                               ; preds = %27
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %72

67:                                               ; preds = %61
  br label %21

68:                                               ; preds = %21
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %68, %65, %51
  ret void
}

declare dso_local i64 @U8(i32) #1

declare dso_local i32 @SDEBUG(i8*, ...) #1

declare dso_local i64 @atom_get_src(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @U16(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
