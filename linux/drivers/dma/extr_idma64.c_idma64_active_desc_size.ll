; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_active_desc_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_active_desc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chan = type { %struct.idma64_desc* }
%struct.idma64_desc = type { i64, i32, %struct.idma64_hw_desc* }
%struct.idma64_hw_desc = type { i64, i64 }

@LLP = common dso_local global i32 0, align 4
@CTL_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.idma64_chan*)* @idma64_active_desc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @idma64_active_desc_size(%struct.idma64_chan* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.idma64_chan*, align 8
  %4 = alloca %struct.idma64_desc*, align 8
  %5 = alloca %struct.idma64_hw_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.idma64_chan* %0, %struct.idma64_chan** %3, align 8
  %10 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %11 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %10, i32 0, i32 0
  %12 = load %struct.idma64_desc*, %struct.idma64_desc** %11, align 8
  store %struct.idma64_desc* %12, %struct.idma64_desc** %4, align 8
  %13 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %14 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %17 = load i32, i32* @LLP, align 4
  %18 = call i64 @channel_readq(%struct.idma64_chan* %16, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %20 = load i32, i32* @CTL_HI, align 4
  %21 = call i32 @channel_readl(%struct.idma64_chan* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %41, %1
  %23 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %24 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %23, i32 0, i32 2
  %25 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %25, i64 %27
  store %struct.idma64_hw_desc* %28, %struct.idma64_hw_desc** %5, align 8
  %29 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %5, align 8
  %30 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %48

35:                                               ; preds = %22
  %36 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %5, align 8
  %37 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %45 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %22, label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %2, align 8
  br label %69

53:                                               ; preds = %48
  %54 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %55 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %54, i32 0, i32 2
  %56 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %56, i64 %59
  %61 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @IDMA64C_CTLH_BLOCK_TS(i32 %66)
  %68 = sub i64 %65, %67
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %53, %51
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i64 @channel_readq(%struct.idma64_chan*, i32) #1

declare dso_local i32 @channel_readl(%struct.idma64_chan*, i32) #1

declare dso_local i64 @IDMA64C_CTLH_BLOCK_TS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
