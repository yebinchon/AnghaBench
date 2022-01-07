; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_generate_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_generate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev_client = type { i32*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev_client*, i32)* @mousedev_generate_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_generate_response(%struct.mousedev_client* %0, i32 %1) #0 {
  %3 = alloca %struct.mousedev_client*, align 8
  %4 = alloca i32, align 4
  store %struct.mousedev_client* %0, %struct.mousedev_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %6 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 250, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %75 [
    i32 235, label %10
    i32 242, label %21
    i32 233, label %43
    i32 255, label %58
  ]

10:                                               ; preds = %2
  %11 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %12 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %13 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = call i32 @mousedev_packet(%struct.mousedev_client* %11, i32* %15)
  %17 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %18 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %23 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %40 [
    i32 128, label %25
    i32 129, label %30
    i32 130, label %35
  ]

25:                                               ; preds = %21
  %26 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %27 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 0, i32* %29, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %32 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 3, i32* %34, align 4
  br label %40

35:                                               ; preds = %21
  %36 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %37 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 4, i32* %39, align 4
  br label %40

40:                                               ; preds = %21, %35, %30, %25
  %41 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %42 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %41, i32 0, i32 1
  store i32 2, i32* %42, align 8
  br label %78

43:                                               ; preds = %2
  %44 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %45 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 96, i32* %47, align 4
  %48 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %49 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 3, i32* %51, align 4
  %52 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %53 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 200, i32* %55, align 4
  %56 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %57 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %56, i32 0, i32 1
  store i32 4, i32* %57, align 8
  br label %78

58:                                               ; preds = %2
  %59 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %60 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %59, i32 0, i32 4
  store i32 0, i32* %60, align 4
  %61 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %62 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %61, i32 0, i32 5
  store i32 0, i32* %62, align 8
  %63 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %64 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %63, i32 0, i32 2
  store i32 128, i32* %64, align 4
  %65 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %66 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 170, i32* %68, align 4
  %69 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %70 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 0, i32* %72, align 4
  %73 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %74 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %73, i32 0, i32 1
  store i32 3, i32* %74, align 8
  br label %78

75:                                               ; preds = %2
  %76 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %77 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %76, i32 0, i32 1
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %58, %43, %40, %10
  %79 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %80 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %83 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  ret void
}

declare dso_local i32 @mousedev_packet(%struct.mousedev_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
