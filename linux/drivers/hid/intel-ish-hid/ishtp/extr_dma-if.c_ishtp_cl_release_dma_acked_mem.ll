; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_dma-if.c_ishtp_cl_release_dma_acked_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_dma-if.c_ishtp_cl_release_dma_acked_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i8*, i32, i32, i64*, i32 }

@DMA_SLOT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Bad DMA Tx ack address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_cl_release_dma_acked_mem(%struct.ishtp_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ishtp_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DMA_SLOT_SIZE, align 4
  %13 = sdiv i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DMA_SLOT_SIZE, align 4
  %16 = srem i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = mul nsw i32 1, %18
  %20 = add nsw i32 %13, %19
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %23 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i32, i32* @DMA_SLOT_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = srem i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %34 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %102

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %40 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %38 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load i32, i32* @DMA_SLOT_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = sdiv i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %50 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %94, %37
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %62 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %57
  %66 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %67 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %65, %57
  %77 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %78 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %77, i32 0, i32 2
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %82 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %102

85:                                               ; preds = %65
  %86 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %87 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %53

97:                                               ; preds = %53
  %98 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %99 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %98, i32 0, i32 2
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %97, %76, %32
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
