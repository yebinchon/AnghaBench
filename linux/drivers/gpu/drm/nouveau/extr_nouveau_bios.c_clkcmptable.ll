; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_clkcmptable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_clkcmptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios*, i32, i32)* @clkcmptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clkcmptable(%struct.nvbios* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvbios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvbios* %0, %struct.nvbios** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %13 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %18

17:                                               ; preds = %3
  store i32 4, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %85, %18
  %20 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %21 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ROM16(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 10
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %19
  %37 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %38 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %43 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 2
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %44, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %55 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %58 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %56, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ROM16(i32 %65)
  store i32 %66, i32* %10, align 4
  br label %81

67:                                               ; preds = %36
  %68 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %69 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 2
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %70, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ROM16(i32 %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %67, %41
  br label %88

82:                                               ; preds = %19
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %19, label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i32 @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
