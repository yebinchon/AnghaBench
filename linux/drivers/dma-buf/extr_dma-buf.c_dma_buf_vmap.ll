; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_buf_vmap(%struct.dma_buf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i8*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  %5 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %6 = icmp ne %struct.dma_buf* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %14 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i8* (%struct.dma_buf*)**
  %18 = load i8* (%struct.dma_buf*)*, i8* (%struct.dma_buf*)** %17, align 8
  %19 = icmp ne i8* (%struct.dma_buf*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %80

21:                                               ; preds = %12
  %22 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %23 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %26 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %31 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %35 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %42 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %4, align 8
  br label %75

46:                                               ; preds = %21
  %47 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %48 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %52 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i8* (%struct.dma_buf*)**
  %56 = load i8* (%struct.dma_buf*)*, i8* (%struct.dma_buf*)** %55, align 8
  %57 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %58 = call i8* %56(%struct.dma_buf* %57)
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @IS_ERR(i8* %59)
  %61 = call i64 @WARN_ON_ONCE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  store i8* null, i8** %4, align 8
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %72 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %74 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %68, %67, %29
  %76 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %77 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i8*, i8** %4, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %75, %20, %11
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
