; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_bit_error_rate_s.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_bit_error_rate_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i64, i32, i32, i64 }

@RSTV0910_P2_ERRCNT12 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RSTV0910_P2_ERRCTRL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32*, i32*)* @get_bit_error_rate_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bit_error_rate_s(%struct.stv* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.stv*, %struct.stv** %5, align 8
  %11 = load i64, i64* @RSTV0910_P2_ERRCNT12, align 8
  %12 = load %struct.stv*, %struct.stv** %5, align 8
  %13 = getelementptr inbounds %struct.stv, %struct.stv* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %17 = call i32 @read_regs(%struct.stv* %10, i64 %15, i32* %16, i32 3)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %115

23:                                               ; preds = %3
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %23
  %29 = load %struct.stv*, %struct.stv** %5, align 8
  %30 = getelementptr inbounds %struct.stv, %struct.stv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %32, 10
  %34 = add nsw i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = load %struct.stv*, %struct.stv** %5, align 8
  %38 = getelementptr inbounds %struct.stv, %struct.stv* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 127
  %42 = shl i32 %41, 16
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %42, %45
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %46, %48
  %50 = load %struct.stv*, %struct.stv** %5, align 8
  %51 = getelementptr inbounds %struct.stv, %struct.stv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.stv*, %struct.stv** %5, align 8
  %53 = getelementptr inbounds %struct.stv, %struct.stv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %77

56:                                               ; preds = %28
  %57 = load %struct.stv*, %struct.stv** %5, align 8
  %58 = getelementptr inbounds %struct.stv, %struct.stv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 6
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.stv*, %struct.stv** %5, align 8
  %63 = getelementptr inbounds %struct.stv, %struct.stv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.stv*, %struct.stv** %5, align 8
  %67 = load i64, i64* @RSTV0910_P2_ERRCTRL1, align 8
  %68 = load %struct.stv*, %struct.stv** %5, align 8
  %69 = getelementptr inbounds %struct.stv, %struct.stv* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.stv*, %struct.stv** %5, align 8
  %73 = getelementptr inbounds %struct.stv, %struct.stv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 32, %74
  %76 = call i32 @write_reg(%struct.stv* %66, i64 %71, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %104

77:                                               ; preds = %56, %28
  %78 = load %struct.stv*, %struct.stv** %5, align 8
  %79 = getelementptr inbounds %struct.stv, %struct.stv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 1024
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load %struct.stv*, %struct.stv** %5, align 8
  %84 = getelementptr inbounds %struct.stv, %struct.stv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load %struct.stv*, %struct.stv** %5, align 8
  %89 = getelementptr inbounds %struct.stv, %struct.stv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.stv*, %struct.stv** %5, align 8
  %93 = load i64, i64* @RSTV0910_P2_ERRCTRL1, align 8
  %94 = load %struct.stv*, %struct.stv** %5, align 8
  %95 = getelementptr inbounds %struct.stv, %struct.stv* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.stv*, %struct.stv** %5, align 8
  %99 = getelementptr inbounds %struct.stv, %struct.stv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 32, %100
  %102 = call i32 @write_reg(%struct.stv* %92, i64 %97, i32 %101)
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %87, %82, %77
  br label %104

104:                                              ; preds = %103, %61
  br label %105

105:                                              ; preds = %104, %23
  %106 = load %struct.stv*, %struct.stv** %5, align 8
  %107 = getelementptr inbounds %struct.stv, %struct.stv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct.stv*, %struct.stv** %5, align 8
  %111 = getelementptr inbounds %struct.stv, %struct.stv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %105, %20
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @read_regs(%struct.stv*, i64, i32*, i32) #1

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
