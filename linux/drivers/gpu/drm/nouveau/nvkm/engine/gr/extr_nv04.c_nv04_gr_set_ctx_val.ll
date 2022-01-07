; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_set_ctx_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_set_ctx_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_device*, i32, i32, i32)* @nv04_gr_set_ctx_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_gr_set_ctx_val(%struct.nvkm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %11, align 4
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 7340032, %15
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %13, align 4
  %21 = ashr i32 %20, 15
  %22 = and i32 %21, 7
  store i32 %22, i32* %10, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 7340044, %24
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 7340044, %35
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 %36, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, 33554432
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 31
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 72
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 67108864
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %49, %46
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %75 [
    i32 0, label %56
    i32 3, label %56
    i32 1, label %57
    i32 2, label %63
    i32 4, label %69
    i32 5, label %69
  ]

56:                                               ; preds = %54, %54
  br label %75

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 402653184
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %75

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 536870912
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %63
  br label %75

69:                                               ; preds = %54, %54
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, 1073741824
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %54, %74, %68, %62, %56
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 24
  %80 = call i32 @nv04_gr_set_ctx1(%struct.nvkm_device* %76, i32 %77, i32 16777216, i32 %79)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv04_gr_set_ctx1(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
