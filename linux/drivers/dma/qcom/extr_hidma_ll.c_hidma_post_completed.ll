; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_post_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_post_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i64, i32, i32, i32, i32, i32, i32, %struct.hidma_tre** }
%struct.hidma_tre = type { i64, i64, i8*, i8* }

@HIDMA_TRE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"tre_index [%d] and tre out of sync\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"tre count mismatch on completion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidma_lldev*, i8*, i8*)* @hidma_post_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_post_completed(%struct.hidma_lldev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidma_lldev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hidma_tre*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %12 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %11, i32 0, i32 3
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %16 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %19 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %18, i32 0, i32 7
  %20 = load %struct.hidma_tre**, %struct.hidma_tre*** %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @HIDMA_TRE_SIZE, align 8
  %23 = udiv i64 %21, %22
  %24 = getelementptr inbounds %struct.hidma_tre*, %struct.hidma_tre** %20, i64 %23
  %25 = load %struct.hidma_tre*, %struct.hidma_tre** %24, align 8
  store %struct.hidma_tre* %25, %struct.hidma_tre** %8, align 8
  %26 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %27 = icmp ne %struct.hidma_tre* %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %3
  %29 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %30 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %29, i32 0, i32 3
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %34 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @HIDMA_TRE_SIZE, align 8
  %38 = udiv i64 %36, %37
  %39 = call i32 (i32, i8*, ...) @dev_warn(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %91

42:                                               ; preds = %3
  %43 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %44 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %43, i32 0, i32 7
  %45 = load %struct.hidma_tre**, %struct.hidma_tre*** %44, align 8
  %46 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %47 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.hidma_tre*, %struct.hidma_tre** %45, i64 %48
  store %struct.hidma_tre* null, %struct.hidma_tre** %49, align 8
  %50 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %51 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %50, i32 0, i32 5
  %52 = call i64 @atomic_dec_return(i32* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %56 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_warn(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %60 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %59, i32 0, i32 5
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  br label %62

62:                                               ; preds = %54, %42
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @HIDMA_TRE_SIZE, align 8
  %65 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %66 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HIDMA_INCREMENT_ITERATOR(i64 %63, i64 %64, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %71 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %73 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %72, i32 0, i32 3
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %78 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %81 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %83 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %85 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %84, i32 0, i32 2
  %86 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %87 = call i32 @kfifo_put(i32* %85, %struct.hidma_tre* %86)
  %88 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %89 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %88, i32 0, i32 1
  %90 = call i32 @tasklet_schedule(i32* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %62, %28
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @HIDMA_INCREMENT_ITERATOR(i64, i64, i32) #1

declare dso_local i32 @kfifo_put(i32*, %struct.hidma_tre*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
