; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_read_emem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_read_emem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_falcon*, i32, i32, i32, i8*)* @nvkm_falcon_v1_read_emem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_falcon_v1_read_emem(%struct.nvkm_falcon* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.nvkm_falcon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = srem i32 %14, 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 2752, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 33554432
  %25 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %19, i32 %22, i32 %24)
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %42, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %28, 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 8
  %35 = add nsw i32 2756, %34
  %36 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %32, i32 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %45
  %49 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 8
  %52 = add nsw i32 2756, %51
  %53 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %49, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %71, %48
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, 255
  %64 = load i8*, i8** %10, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = ashr i32 %69, 8
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %55

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %45
  ret void
}

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

declare dso_local i32 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
