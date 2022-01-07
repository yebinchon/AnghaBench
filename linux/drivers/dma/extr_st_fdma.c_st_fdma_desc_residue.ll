; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_desc_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_desc_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_chan = type { %struct.st_fdma_desc* }
%struct.st_fdma_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@FDMA_CH_CMD_OFST = common dso_local global i32 0, align 4
@FDMA_CH_CMD_DATA_MASK = common dso_local global i32 0, align 4
@FDMA_CNTN_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.st_fdma_chan*, %struct.virt_dma_desc*, i32)* @st_fdma_desc_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @st_fdma_desc_residue(%struct.st_fdma_chan* %0, %struct.virt_dma_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.st_fdma_chan*, align 8
  %5 = alloca %struct.virt_dma_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_fdma_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.st_fdma_chan* %0, %struct.st_fdma_chan** %4, align 8
  store %struct.virt_dma_desc* %1, %struct.virt_dma_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %11, i32 0, i32 0
  %13 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %12, align 8
  store %struct.st_fdma_desc* %13, %struct.st_fdma_desc** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %18 = load i32, i32* @FDMA_CH_CMD_OFST, align 4
  %19 = call i32 @fchan_read(%struct.st_fdma_chan* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @FDMA_CH_CMD_DATA_MASK, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %24, i32 0, i32 0
  %26 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %25, align 8
  %27 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %63, %23
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %7, align 8
  %36 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %34, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %46 = load i32, i32* @FDMA_CNTN_OFST, align 4
  %47 = call i64 @fnode_read(%struct.st_fdma_chan* %45, i32 %46)
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %66

50:                                               ; preds = %33
  %51 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %7, align 8
  %52 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  br label %30

66:                                               ; preds = %44, %30
  %67 = load i64, i64* %8, align 8
  ret i64 %67
}

declare dso_local i32 @fchan_read(%struct.st_fdma_chan*, i32) #1

declare dso_local i64 @fnode_read(%struct.st_fdma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
