; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_load_dmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_load_dmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i64 }

@EMEM_START_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_falcon*, i8*, i32, i32, i32)* @nvkm_falcon_v1_load_dmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_falcon_v1_load_dmem(%struct.nvkm_falcon* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @EMEM_START_ADDR, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %21 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EMEM_START_ADDR, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  call void @nvkm_falcon_v1_load_emem(%struct.nvkm_falcon* %25, i8* %26, i32 %29, i32 %30, i32 %31)
  br label %84

32:                                               ; preds = %19, %5
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 8
  %39 = add nsw i32 448, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, 16777216
  %42 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %36, i32 %39, i32 %41)
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %60, %32
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 8
  %52 = add nsw i32 452, %51
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %49, i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %74, 8
  %76 = add nsw i32 452, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %78, 8
  %80 = call i32 @BIT(i32 %79)
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %77, %81
  %83 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %73, i32 %76, i32 %82)
  br label %84

84:                                               ; preds = %24, %66, %63
  ret void
}

declare dso_local void @nvkm_falcon_v1_load_emem(%struct.nvkm_falcon*, i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
