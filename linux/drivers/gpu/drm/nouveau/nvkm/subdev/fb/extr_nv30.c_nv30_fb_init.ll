; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv30.c_nv30_fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv30.c_nv30_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv30_fb_init(%struct.nvkm_fb* %0) #0 {
  %2 = alloca %struct.nvkm_fb*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %2, align 8
  %8 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %3, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 48
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 49
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 53
  br i1 %25, label %26, label %84

26:                                               ; preds = %21, %16, %1
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %28 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 49
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 1049552)
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %80, %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 12, %45
  %47 = add nsw i32 1049468, %46
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 4, %48
  %50 = add nsw i32 %47, %49
  %51 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @calc_ref(%struct.nvkm_fb* %51, i32 %52, i32 0, i32 %53)
  %55 = call i32 @nvkm_wr32(%struct.nvkm_device* %44, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %40

59:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 8, %65
  %67 = add nsw i32 1049516, %66
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 4, %68
  %70 = add nsw i32 %67, %69
  %71 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @calc_ref(%struct.nvkm_fb* %71, i32 %72, i32 1, i32 %73)
  %75 = call i32 @nvkm_wr32(%struct.nvkm_device* %64, i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %60

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %35

83:                                               ; preds = %35
  br label %84

84:                                               ; preds = %83, %21
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @calc_ref(%struct.nvkm_fb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
