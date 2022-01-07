; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_load_emem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_load_emem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_falcon*, i8*, i32, i32, i32)* @nvkm_falcon_v1_load_emem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_falcon_v1_load_emem(%struct.nvkm_falcon* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nvkm_falcon*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = srem i32 %14, 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 2752, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, 16777216
  %25 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %19, i32 %22, i32 %24)
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %43, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sdiv i32 %28, 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 8
  %35 = add nsw i32 2756, %34
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %32, i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i8*, i8** %7, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %57, 8
  %59 = add nsw i32 2756, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 8
  %63 = call i32 @BIT(i32 %62)
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %60, %64
  %66 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %56, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
