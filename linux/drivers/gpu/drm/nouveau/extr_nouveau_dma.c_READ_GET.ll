; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_READ_GET.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_READ_GET.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32*, i32*)* @READ_GET to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @READ_GET(%struct.nouveau_channel* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %9, i32 0, i32 3
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @nvif_rd32(i32* %10, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %20, i32 0, i32 3
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %23 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @nvif_rd32(i32* %21, i64 %24)
  %26 = shl i32 %25, 32
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %19, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = call i32 @udelay(i32 1)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 100000
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %84

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %56 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %73, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %63 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %67 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = add nsw i32 %65, %70
  %72 = icmp sgt i32 %61, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %60, %53
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %84

76:                                               ; preds = %60
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %79 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %77, %81
  %83 = ashr i32 %82, 2
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %76, %73, %49
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @nvif_rd32(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
