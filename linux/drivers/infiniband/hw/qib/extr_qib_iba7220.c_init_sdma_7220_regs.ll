; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_init_sdma_7220_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_init_sdma_7220_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64, i64, %struct.TYPE_4__, %struct.qib_devdata* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qib_devdata = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@kr_senddmabase = common dso_local global i32 0, align 4
@kr_senddmaheadaddr = common dso_local global i32 0, align 4
@kr_senddmabufmask0 = common dso_local global i32 0, align 4
@kr_senddmabufmask1 = common dso_local global i32 0, align 4
@kr_senddmabufmask2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @init_sdma_7220_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sdma_7220_regs(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 3
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %3, align 8
  %12 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %14 = load i32, i32* @kr_senddmabase, align 4
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @qib_write_kreg(%struct.qib_devdata* %13, i32 %14, i64 %17)
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %20 = call i32 @qib_sdma_7220_setlengen(%struct.qib_pportdata* %19)
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %22 = call i32 @qib_sdma_update_7220_tail(%struct.qib_pportdata* %21, i32 0)
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %24 = load i32, i32* @kr_senddmaheadaddr, align 4
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @qib_write_kreg(%struct.qib_devdata* %23, i32 %24, i64 %27)
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %31, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %36, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %60, %1
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = udiv i32 %48, 64
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 63
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = shl i64 1, %53
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, %54
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %65 = load i32, i32* @kr_senddmabufmask0, align 4
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = call i32 @qib_write_kreg(%struct.qib_devdata* %64, i32 %65, i64 %67)
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %70 = load i32, i32* @kr_senddmabufmask1, align 4
  %71 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @qib_write_kreg(%struct.qib_devdata* %69, i32 %70, i64 %72)
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %75 = load i32, i32* @kr_senddmabufmask2, align 4
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %77 = load i64, i64* %76, align 16
  %78 = call i32 @qib_write_kreg(%struct.qib_devdata* %74, i32 %75, i64 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %81 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #2

declare dso_local i32 @qib_sdma_7220_setlengen(%struct.qib_pportdata*) #2

declare dso_local i32 @qib_sdma_update_7220_tail(%struct.qib_pportdata*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
