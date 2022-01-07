; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_op_shift_right.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_op_shift_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atom_def_dst = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"   dst: \00", align 1
@ATOM_SRC_BYTE0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"   shift: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @atom_op_shift_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_op_shift_right(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = call i32 @U8(i32 %13)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 56
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** @atom_def_dst, align 8
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 6
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @atom_get_dst(i32* %30, i32 %31, i32 %32, i32* %33, i32* %9, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ATOM_SRC_BYTE0, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @atom_get_src_direct(i32* %35, i32 %36, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @atom_put_dst(i32* %45, i32 %46, i32 %47, i32* %11, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @U8(i32) #1

declare dso_local i32 @SDEBUG(i8*, ...) #1

declare dso_local i32 @atom_get_dst(i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @atom_get_src_direct(i32*, i32, i32*) #1

declare dso_local i32 @atom_put_dst(i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
