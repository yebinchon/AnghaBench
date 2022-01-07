; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_dma-if.c_ishtp_cl_free_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_dma-if.c_ishtp_cl_free_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32*, i32*, i32*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_cl_free_dma_buf(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %4 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %5 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %10 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %13 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %16 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %19 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @dma_free_coherent(i32 %14, i32 %17, i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %25 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %30 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %33 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %36 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %39 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @dma_free_coherent(i32 %34, i32 %37, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %23
  %44 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %45 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %49 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %51 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %53 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
