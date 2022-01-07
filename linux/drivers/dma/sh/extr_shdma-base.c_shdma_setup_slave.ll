; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_setup_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_setup_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shdma_chan = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.shdma_dev = type { %struct.shdma_ops* }
%struct.shdma_ops = type { i32 (%struct.shdma_chan.0*, i32, i32, i32)* }
%struct.shdma_chan.0 = type opaque

@slave_num = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@shdma_slave_used = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shdma_chan*, i32)* @shdma_setup_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shdma_setup_slave(%struct.shdma_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shdma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.shdma_dev*, align 8
  %7 = alloca %struct.shdma_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.shdma_chan* %0, %struct.shdma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.shdma_dev* @to_shdma_dev(i32 %13)
  store %struct.shdma_dev* %14, %struct.shdma_dev** %6, align 8
  %15 = load %struct.shdma_dev*, %struct.shdma_dev** %6, align 8
  %16 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %15, i32 0, i32 0
  %17 = load %struct.shdma_ops*, %struct.shdma_ops** %16, align 8
  store %struct.shdma_ops* %17, %struct.shdma_ops** %7, align 8
  %18 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %26 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.shdma_ops*, %struct.shdma_ops** %7, align 8
  %29 = getelementptr inbounds %struct.shdma_ops, %struct.shdma_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.shdma_chan.0*, i32, i32, i32)*, i32 (%struct.shdma_chan.0*, i32, i32, i32)** %29, align 8
  %31 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %32 = bitcast %struct.shdma_chan* %31 to %struct.shdma_chan.0*
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %30(%struct.shdma_chan.0* %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %93

40:                                               ; preds = %24
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %43 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %47 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %52 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @slave_num, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %45
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %93

59:                                               ; preds = %50
  %60 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %61 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @shdma_slave_used, align 4
  %64 = call i64 @test_and_set_bit(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %93

69:                                               ; preds = %59
  %70 = load %struct.shdma_ops*, %struct.shdma_ops** %7, align 8
  %71 = getelementptr inbounds %struct.shdma_ops, %struct.shdma_ops* %70, i32 0, i32 0
  %72 = load i32 (%struct.shdma_chan.0*, i32, i32, i32)*, i32 (%struct.shdma_chan.0*, i32, i32, i32)** %71, align 8
  %73 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %74 = bitcast %struct.shdma_chan* %73 to %struct.shdma_chan.0*
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 %72(%struct.shdma_chan.0* %74, i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %82 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @shdma_slave_used, align 4
  %85 = call i32 @clear_bit(i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %93

87:                                               ; preds = %69
  %88 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %89 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %92 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %80, %66, %56, %38
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.shdma_dev* @to_shdma_dev(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
