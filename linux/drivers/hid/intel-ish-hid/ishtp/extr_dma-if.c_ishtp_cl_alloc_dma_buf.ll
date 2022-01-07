; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_dma-if.c_ishtp_cl_alloc_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_dma-if.c_ishtp_cl_alloc_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_SLOT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_cl_alloc_dma_buf(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca i8*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %4 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %5 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %4, i32 0, i32 9
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %68

9:                                                ; preds = %1
  %10 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %11 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %10, i32 0, i32 0
  store i32 1048576, i32* %11, align 8
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %13 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %12, i32 0, i32 1
  store i32 1048576, i32* %13, align 4
  %14 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %15 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %18 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @dma_alloc_coherent(i32 %16, i32 %19, i8** %3, i32 %20)
  %22 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %23 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %25 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %24, i32 0, i32 9
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %9
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %31 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %9
  %33 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %34 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_SLOT_SIZE, align 4
  %37 = sdiv i32 %35, %36
  %38 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %39 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %41 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @kcalloc(i32 %42, i32 4, i32 %43)
  %45 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %46 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %48 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %47, i32 0, i32 6
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %51 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %54 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @dma_alloc_coherent(i32 %52, i32 %55, i8** %3, i32 %56)
  %58 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %59 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %61 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %32
  %65 = load i8*, i8** %3, align 8
  %66 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %67 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %8, %64, %32
  ret void
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
