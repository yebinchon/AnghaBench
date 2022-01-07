; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_load_imem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_load_imem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_falcon*, i8*, i32, i32, i32, i32, i32)* @nvkm_falcon_v1_load_imem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_falcon_v1_load_imem(%struct.nvkm_falcon* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nvkm_falcon*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = srem i32 %19, 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @BIT(i32 24)
  %26 = or i32 %24, %25
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = call i32 @BIT(i32 28)
  br label %32

31:                                               ; preds = %7
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %26, %33
  store i32 %34, i32* %16, align 4
  %35 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 %36, 16
  %38 = add nsw i32 384, %37
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %35, i32 %38, i32 %39)
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %70, %32
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sdiv i32 %43, 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load i32, i32* %17, align 4
  %48 = and i32 %47, 63
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 %52, 16
  %54 = add nsw i32 392, %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %51, i32 %54, i32 %55)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %60, 16
  %62 = add nsw i32 388, %61
  %63 = load i8*, i8** %9, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %59, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %41

73:                                               ; preds = %41
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %17, align 4
  %84 = and i32 %83, 63
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, 16
  %90 = add nsw i32 392, %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %87, i32 %90, i32 %91)
  br label %94

94:                                               ; preds = %86, %76
  %95 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %96, 16
  %98 = add nsw i32 388, %97
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 %100, 8
  %102 = call i32 @BIT(i32 %101)
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %99, %103
  %105 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %95, i32 %98, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %94, %73
  br label %109

109:                                              ; preds = %119, %108
  %110 = load i32, i32* %17, align 4
  %111 = and i32 %110, 63
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %115 = load i32, i32* %13, align 4
  %116 = mul nsw i32 %115, 16
  %117 = add nsw i32 388, %116
  %118 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %114, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %109

122:                                              ; preds = %109
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
