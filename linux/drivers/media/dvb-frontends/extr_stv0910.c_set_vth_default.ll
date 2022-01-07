; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_vth_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_vth_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32*, i64 }

@RSTV0910_P2_VTH12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @set_vth_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vth_default(%struct.stv* %0) #0 {
  %2 = alloca %struct.stv*, align 8
  store %struct.stv* %0, %struct.stv** %2, align 8
  %3 = load %struct.stv*, %struct.stv** %2, align 8
  %4 = getelementptr inbounds %struct.stv, %struct.stv* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 215, i32* %6, align 4
  %7 = load %struct.stv*, %struct.stv** %2, align 8
  %8 = getelementptr inbounds %struct.stv, %struct.stv* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 133, i32* %10, align 4
  %11 = load %struct.stv*, %struct.stv** %2, align 8
  %12 = getelementptr inbounds %struct.stv, %struct.stv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 88, i32* %14, align 4
  %15 = load %struct.stv*, %struct.stv** %2, align 8
  %16 = getelementptr inbounds %struct.stv, %struct.stv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 58, i32* %18, align 4
  %19 = load %struct.stv*, %struct.stv** %2, align 8
  %20 = getelementptr inbounds %struct.stv, %struct.stv* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 52, i32* %22, align 4
  %23 = load %struct.stv*, %struct.stv** %2, align 8
  %24 = getelementptr inbounds %struct.stv, %struct.stv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  store i32 40, i32* %26, align 4
  %27 = load %struct.stv*, %struct.stv** %2, align 8
  %28 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %29 = load %struct.stv*, %struct.stv** %2, align 8
  %30 = getelementptr inbounds %struct.stv, %struct.stv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = add nsw i64 %32, 0
  %34 = load %struct.stv*, %struct.stv** %2, align 8
  %35 = getelementptr inbounds %struct.stv, %struct.stv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_reg(%struct.stv* %27, i64 %33, i32 %38)
  %40 = load %struct.stv*, %struct.stv** %2, align 8
  %41 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %42 = load %struct.stv*, %struct.stv** %2, align 8
  %43 = getelementptr inbounds %struct.stv, %struct.stv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = add nsw i64 %45, 1
  %47 = load %struct.stv*, %struct.stv** %2, align 8
  %48 = getelementptr inbounds %struct.stv, %struct.stv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @write_reg(%struct.stv* %40, i64 %46, i32 %51)
  %53 = load %struct.stv*, %struct.stv** %2, align 8
  %54 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %55 = load %struct.stv*, %struct.stv** %2, align 8
  %56 = getelementptr inbounds %struct.stv, %struct.stv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = add nsw i64 %58, 2
  %60 = load %struct.stv*, %struct.stv** %2, align 8
  %61 = getelementptr inbounds %struct.stv, %struct.stv* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write_reg(%struct.stv* %53, i64 %59, i32 %64)
  %66 = load %struct.stv*, %struct.stv** %2, align 8
  %67 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %68 = load %struct.stv*, %struct.stv** %2, align 8
  %69 = getelementptr inbounds %struct.stv, %struct.stv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = add nsw i64 %71, 3
  %73 = load %struct.stv*, %struct.stv** %2, align 8
  %74 = getelementptr inbounds %struct.stv, %struct.stv* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write_reg(%struct.stv* %66, i64 %72, i32 %77)
  %79 = load %struct.stv*, %struct.stv** %2, align 8
  %80 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %81 = load %struct.stv*, %struct.stv** %2, align 8
  %82 = getelementptr inbounds %struct.stv, %struct.stv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = add nsw i64 %84, 4
  %86 = load %struct.stv*, %struct.stv** %2, align 8
  %87 = getelementptr inbounds %struct.stv, %struct.stv* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @write_reg(%struct.stv* %79, i64 %85, i32 %90)
  %92 = load %struct.stv*, %struct.stv** %2, align 8
  %93 = load i64, i64* @RSTV0910_P2_VTH12, align 8
  %94 = load %struct.stv*, %struct.stv** %2, align 8
  %95 = getelementptr inbounds %struct.stv, %struct.stv* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = add nsw i64 %97, 5
  %99 = load %struct.stv*, %struct.stv** %2, align 8
  %100 = getelementptr inbounds %struct.stv, %struct.stv* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @write_reg(%struct.stv* %92, i64 %98, i32 %103)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
