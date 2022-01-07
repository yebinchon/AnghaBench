; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32, i32)* @nv50_dma_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_dma_wait(%struct.nouveau_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @nv50_dma_push_wait(%struct.nouveau_channel* %12, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %114

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %102, %42, %21
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %113

29:                                               ; preds = %22
  %30 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %31 = call i32 @READ_GET(%struct.nouveau_channel* %30, i32* %8, i32* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %22

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %114

45:                                               ; preds = %29
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %48 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %46, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %45
  %53 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %54 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %56, %60
  %62 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %63 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %66 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  br label %113

72:                                               ; preds = %52
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %74 = call i32 @FIRE_RING(%struct.nouveau_channel* %73)
  br label %75

75:                                               ; preds = %92, %72
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %77 = call i32 @READ_GET(%struct.nouveau_channel* %76, i32* %8, i32* %10)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %4, align 4
  br label %114

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %88
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %75, label %95

95:                                               ; preds = %92
  %96 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %97 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %100 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %45
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %105 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %103, %107
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %111 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %22

113:                                              ; preds = %71, %22
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %89, %43, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @nv50_dma_push_wait(%struct.nouveau_channel*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @READ_GET(%struct.nouveau_channel*, i32*, i32*) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
