; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_tx_add_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_tx_add_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_txd = type { i32 }
%struct.pl08x_sg = type { i32, i8*, i8*, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_txd*, i32, i8*, i8*, i32)* @pl08x_tx_add_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_tx_add_sg(%struct.pl08x_txd* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl08x_txd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pl08x_sg*, align 8
  store %struct.pl08x_txd* %0, %struct.pl08x_txd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_NOWAIT, align 4
  %14 = call %struct.pl08x_sg* @kzalloc(i32 32, i32 %13)
  store %struct.pl08x_sg* %14, %struct.pl08x_sg** %12, align 8
  %15 = load %struct.pl08x_sg*, %struct.pl08x_sg** %12, align 8
  %16 = icmp ne %struct.pl08x_sg* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %47

20:                                               ; preds = %5
  %21 = load %struct.pl08x_sg*, %struct.pl08x_sg** %12, align 8
  %22 = getelementptr inbounds %struct.pl08x_sg, %struct.pl08x_sg* %21, i32 0, i32 3
  %23 = load %struct.pl08x_txd*, %struct.pl08x_txd** %7, align 8
  %24 = getelementptr inbounds %struct.pl08x_txd, %struct.pl08x_txd* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.pl08x_sg*, %struct.pl08x_sg** %12, align 8
  %28 = getelementptr inbounds %struct.pl08x_sg, %struct.pl08x_sg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.pl08x_sg*, %struct.pl08x_sg** %12, align 8
  %35 = getelementptr inbounds %struct.pl08x_sg, %struct.pl08x_sg* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.pl08x_sg*, %struct.pl08x_sg** %12, align 8
  %38 = getelementptr inbounds %struct.pl08x_sg, %struct.pl08x_sg* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %46

39:                                               ; preds = %20
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.pl08x_sg*, %struct.pl08x_sg** %12, align 8
  %42 = getelementptr inbounds %struct.pl08x_sg, %struct.pl08x_sg* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.pl08x_sg*, %struct.pl08x_sg** %12, align 8
  %45 = getelementptr inbounds %struct.pl08x_sg, %struct.pl08x_sg* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %32
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.pl08x_sg* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
