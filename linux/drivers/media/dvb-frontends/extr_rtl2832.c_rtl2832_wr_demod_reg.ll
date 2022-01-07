; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_wr_demod_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_wr_demod_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rtl2832_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@registers = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl2832_dev*, i32, i32)* @rtl2832_wr_demod_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl2832_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rtl2832_dev* %0, %struct.rtl2832_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %20, i32 0, i32 1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %8, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @registers, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @registers, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @registers, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 %41, 3
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @REG_MASK(i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %5, align 8
  %49 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @regmap_bulk_read(i32 %50, i32 %51, i32* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %3
  br label %124

58:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = mul nsw i32 %71, 8
  %73 = shl i32 %67, %72
  %74 = load i32, i32* %17, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %59

79:                                               ; preds = %59
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %13, align 4
  %83 = shl i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %19, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %13, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %18, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %109, %79
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %100, %101
  %103 = mul nsw i32 %102, 8
  %104 = ashr i32 %98, %103
  %105 = and i32 %104, 255
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %107
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %93

112:                                              ; preds = %93
  %113 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %5, align 8
  %114 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @regmap_bulk_write(i32 %115, i32 %116, i32* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %124

123:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %130

124:                                              ; preds = %122, %57
  %125 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @dev_dbg(i32* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %124, %123
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @REG_MASK(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
