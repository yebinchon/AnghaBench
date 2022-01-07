; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_enum.c_nvkm_snprintbf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_enum.c_nvkm_snprintbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bitfield = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_snprintbf(i8* %0, i32 %1, %struct.nvkm_bitfield* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bitfield*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_bitfield* %2, %struct.nvkm_bitfield** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %46, %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.nvkm_bitfield*, %struct.nvkm_bitfield** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_bitfield, %struct.nvkm_bitfield* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %49

21:                                               ; preds = %19
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.nvkm_bitfield*, %struct.nvkm_bitfield** %7, align 8
  %24 = getelementptr inbounds %struct.nvkm_bitfield, %struct.nvkm_bitfield* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load %struct.nvkm_bitfield*, %struct.nvkm_bitfield** %7, align 8
  %36 = getelementptr inbounds %struct.nvkm_bitfield, %struct.nvkm_bitfield* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %5, align 8
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %28, %21
  %47 = load %struct.nvkm_bitfield*, %struct.nvkm_bitfield** %7, align 8
  %48 = getelementptr inbounds %struct.nvkm_bitfield, %struct.nvkm_bitfield* %47, i32 1
  store %struct.nvkm_bitfield* %48, %struct.nvkm_bitfield** %7, align 8
  br label %11

49:                                               ; preds = %19
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %51, align 1
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
