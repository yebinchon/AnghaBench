; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_bit_error_rate_s2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_bit_error_rate_s2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i32, i32, i64, i32, i64 }

@RSTV0910_P2_ERRCNT12 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RSTV0910_P2_ERRCTRL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32*, i32*)* @get_bit_error_rate_s2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bit_error_rate_s2(%struct.stv* %0, i32* %1, i32* %2) #0 {
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
  br label %120

23:                                               ; preds = %3
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %110

28:                                               ; preds = %23
  %29 = load %struct.stv*, %struct.stv** %5, align 8
  %30 = getelementptr inbounds %struct.stv, %struct.stv* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.stv*, %struct.stv** %5, align 8
  %34 = getelementptr inbounds %struct.stv, %struct.stv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dvbs2_nbch(i32 %32, i32 %35)
  %37 = load %struct.stv*, %struct.stv** %5, align 8
  %38 = getelementptr inbounds %struct.stv, %struct.stv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = shl i32 %36, %40
  %42 = load %struct.stv*, %struct.stv** %5, align 8
  %43 = getelementptr inbounds %struct.stv, %struct.stv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  %47 = shl i32 %46, 16
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %51, %53
  %55 = load %struct.stv*, %struct.stv** %5, align 8
  %56 = getelementptr inbounds %struct.stv, %struct.stv* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.stv*, %struct.stv** %5, align 8
  %58 = getelementptr inbounds %struct.stv, %struct.stv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 256
  br i1 %60, label %61, label %82

61:                                               ; preds = %28
  %62 = load %struct.stv*, %struct.stv** %5, align 8
  %63 = getelementptr inbounds %struct.stv, %struct.stv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 6
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.stv*, %struct.stv** %5, align 8
  %68 = getelementptr inbounds %struct.stv, %struct.stv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.stv*, %struct.stv** %5, align 8
  %72 = load i64, i64* @RSTV0910_P2_ERRCTRL1, align 8
  %73 = load %struct.stv*, %struct.stv** %5, align 8
  %74 = getelementptr inbounds %struct.stv, %struct.stv* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.stv*, %struct.stv** %5, align 8
  %78 = getelementptr inbounds %struct.stv, %struct.stv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 32, %79
  %81 = call i32 @write_reg(%struct.stv* %71, i64 %76, i32 %80)
  br label %109

82:                                               ; preds = %61, %28
  %83 = load %struct.stv*, %struct.stv** %5, align 8
  %84 = getelementptr inbounds %struct.stv, %struct.stv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1024
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load %struct.stv*, %struct.stv** %5, align 8
  %89 = getelementptr inbounds %struct.stv, %struct.stv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 2
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load %struct.stv*, %struct.stv** %5, align 8
  %94 = getelementptr inbounds %struct.stv, %struct.stv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.stv*, %struct.stv** %5, align 8
  %98 = load i64, i64* @RSTV0910_P2_ERRCTRL1, align 8
  %99 = load %struct.stv*, %struct.stv** %5, align 8
  %100 = getelementptr inbounds %struct.stv, %struct.stv* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.stv*, %struct.stv** %5, align 8
  %104 = getelementptr inbounds %struct.stv, %struct.stv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 32, %105
  %107 = call i32 @write_reg(%struct.stv* %97, i64 %102, i32 %106)
  br label %108

108:                                              ; preds = %92, %87, %82
  br label %109

109:                                              ; preds = %108, %66
  br label %110

110:                                              ; preds = %109, %23
  %111 = load %struct.stv*, %struct.stv** %5, align 8
  %112 = getelementptr inbounds %struct.stv, %struct.stv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.stv*, %struct.stv** %5, align 8
  %116 = getelementptr inbounds %struct.stv, %struct.stv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %110, %20
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @read_regs(%struct.stv*, i64, i32*, i32) #1

declare dso_local i32 @dvbs2_nbch(i32, i32) #1

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
