; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_release_ipu_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_release_ipu_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_chan = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_image_convert_chan*)* @release_ipu_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_ipu_resources(%struct.ipu_image_convert_chan* %0) #0 {
  %2 = alloca %struct.ipu_image_convert_chan*, align 8
  store %struct.ipu_image_convert_chan* %0, %struct.ipu_image_convert_chan** %2, align 8
  %3 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %4 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %9 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.ipu_image_convert_chan* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %15 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %20 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.ipu_image_convert_chan* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %26 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @IS_ERR_OR_NULL(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %32 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ipu_idmac_put(i32* %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %37 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @IS_ERR_OR_NULL(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %43 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ipu_idmac_put(i32* %44)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %48 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @IS_ERR_OR_NULL(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %54 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ipu_idmac_put(i32* %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %59 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @IS_ERR_OR_NULL(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %65 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ipu_idmac_put(i32* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %70 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @IS_ERR_OR_NULL(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %76 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @ipu_ic_put(i32* %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %81 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  %82 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %83 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %85 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %84, i32 0, i32 4
  store i32* null, i32** %85, align 8
  %86 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %87 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %86, i32 0, i32 5
  store i32* null, i32** %87, align 8
  %88 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %89 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %88, i32 0, i32 1
  store i32 -1, i32* %89, align 4
  %90 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %2, align 8
  %91 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.ipu_image_convert_chan*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @ipu_idmac_put(i32*) #1

declare dso_local i32 @ipu_ic_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
