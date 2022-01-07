; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_vth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_vth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slookup = type { i32, i32 }
%struct.stv = type { i64*, i64 }

@set_vth.vthlookup_table = internal constant [5 x %struct.slookup] [%struct.slookup { i32 250, i32 8780 }, %struct.slookup { i32 100, i32 7405 }, %struct.slookup { i32 40, i32 6330 }, %struct.slookup { i32 12, i32 5224 }, %struct.slookup { i32 5, i32 4236 }], align 16
@RSTV0910_P2_NNOSDATAT1 = common dso_local global i64 0, align 8
@RSTV0910_P2_VTH12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @set_vth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vth(%struct.stv* %0) #0 {
  %2 = alloca %struct.stv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.stv* %0, %struct.stv** %2, align 8
  %8 = load %struct.stv*, %struct.stv** %2, align 8
  %9 = load i64, i64* @RSTV0910_P2_NNOSDATAT1, align 8
  %10 = load %struct.stv*, %struct.stv** %2, align 8
  %11 = getelementptr inbounds %struct.stv, %struct.stv* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = call i32 @read_regs(%struct.stv* %8, i64 %13, i32* %14, i32 2)
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = call i32 @ARRAY_SIZE(%struct.slookup* getelementptr inbounds ([5 x %struct.slookup], [5 x %struct.slookup]* @set_vth.vthlookup_table, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @table_lookup(%struct.slookup* getelementptr inbounds ([5 x %struct.slookup], [5 x %struct.slookup]* @set_vth.vthlookup_table, i64 0, i64 0), i32 %22, i32 %23)
  store i64 %24, i64* %7, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %47, %1
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load %struct.stv*, %struct.stv** %2, align 8
  %30 = getelementptr inbounds %struct.stv, %struct.stv* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.stv*, %struct.stv** %2, align 8
  %41 = getelementptr inbounds %struct.stv, %struct.stv* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.stv*, %struct.stv** %2, align 8
  %52 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %53 = load %struct.stv*, %struct.stv** %2, align 8
  %54 = getelementptr inbounds %struct.stv, %struct.stv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = add nsw i64 %56, 0
  %58 = load %struct.stv*, %struct.stv** %2, align 8
  %59 = getelementptr inbounds %struct.stv, %struct.stv* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @write_reg(%struct.stv* %51, i64 %57, i64 %62)
  %64 = load %struct.stv*, %struct.stv** %2, align 8
  %65 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %66 = load %struct.stv*, %struct.stv** %2, align 8
  %67 = getelementptr inbounds %struct.stv, %struct.stv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = add nsw i64 %69, 1
  %71 = load %struct.stv*, %struct.stv** %2, align 8
  %72 = getelementptr inbounds %struct.stv, %struct.stv* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @write_reg(%struct.stv* %64, i64 %70, i64 %75)
  %77 = load %struct.stv*, %struct.stv** %2, align 8
  %78 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %79 = load %struct.stv*, %struct.stv** %2, align 8
  %80 = getelementptr inbounds %struct.stv, %struct.stv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = add nsw i64 %82, 2
  %84 = load %struct.stv*, %struct.stv** %2, align 8
  %85 = getelementptr inbounds %struct.stv, %struct.stv* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @write_reg(%struct.stv* %77, i64 %83, i64 %88)
  %90 = load %struct.stv*, %struct.stv** %2, align 8
  %91 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %92 = load %struct.stv*, %struct.stv** %2, align 8
  %93 = getelementptr inbounds %struct.stv, %struct.stv* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = add nsw i64 %95, 3
  %97 = load %struct.stv*, %struct.stv** %2, align 8
  %98 = getelementptr inbounds %struct.stv, %struct.stv* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @write_reg(%struct.stv* %90, i64 %96, i64 %101)
  %103 = load %struct.stv*, %struct.stv** %2, align 8
  %104 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %105 = load %struct.stv*, %struct.stv** %2, align 8
  %106 = getelementptr inbounds %struct.stv, %struct.stv* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = add nsw i64 %108, 4
  %110 = load %struct.stv*, %struct.stv** %2, align 8
  %111 = getelementptr inbounds %struct.stv, %struct.stv* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 4
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @write_reg(%struct.stv* %103, i64 %109, i64 %114)
  %116 = load %struct.stv*, %struct.stv** %2, align 8
  %117 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %118 = load %struct.stv*, %struct.stv** %2, align 8
  %119 = getelementptr inbounds %struct.stv, %struct.stv* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = add nsw i64 %121, 5
  %123 = load %struct.stv*, %struct.stv** %2, align 8
  %124 = getelementptr inbounds %struct.stv, %struct.stv* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 5
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @write_reg(%struct.stv* %116, i64 %122, i64 %127)
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @read_regs(%struct.stv*, i64, i32*, i32) #1

declare dso_local i64 @table_lookup(%struct.slookup*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.slookup*) #1

declare dso_local i32 @write_reg(%struct.stv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
