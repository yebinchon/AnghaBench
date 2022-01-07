; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_x_pon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_x_pon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.helene_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__const.helene_x_pon.dataT = private unnamed_addr constant [4 x i32] [i32 6, i32 0, i32 2, i32 0], align 16
@__const.helene_x_pon.dataS = private unnamed_addr constant [2 x i32] [i32 5, i32 6], align 4
@__const.helene_x_pon.cdata = private unnamed_addr constant [2 x i32] [i32 122, i32 1], align 4
@SONY_HELENE_XTAL_16000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"HELENE tuner CPU error 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"HELENE tuner x_pon done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.helene_priv*)* @helene_x_pon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helene_x_pon(%struct.helene_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.helene_priv*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [20 x i32], align 16
  %8 = alloca [2 x i32], align 4
  store %struct.helene_priv* %0, %struct.helene_priv** %3, align 8
  %9 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @__const.helene_x_pon.dataT to i8*), i64 16, i1 false)
  %10 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.helene_x_pon.dataS to i8*), i64 8, i1 false)
  %11 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x i32]* @__const.helene_x_pon.cdata to i8*), i64 8, i1 false)
  %12 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %13 = call i32 @helene_write_reg(%struct.helene_priv* %12, i32 1, i32 0)
  %14 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @helene_write_reg(%struct.helene_priv* %14, i32 103, i32 %16)
  %18 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @helene_write_reg(%struct.helene_priv* %18, i32 67, i32 %20)
  %22 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %24 = call i32 @helene_write_regs(%struct.helene_priv* %22, i32 94, i32* %23, i32 3)
  %25 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @helene_write_reg(%struct.helene_priv* %25, i32 12, i32 %27)
  %29 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = call i32 @helene_write_regs(%struct.helene_priv* %29, i32 153, i32* %30, i32 8)
  %32 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %33 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SONY_HELENE_XTAL_16000, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  store i32 16, i32* %38, align 16
  br label %41

39:                                               ; preds = %1
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  store i32 24, i32* %40, align 16
  br label %41

41:                                               ; preds = %39, %37
  %42 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 1
  store i32 132, i32* %42, align 4
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 2
  store i32 166, i32* %43, align 8
  %44 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 3
  store i32 128, i32* %44, align 4
  %45 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %45, align 16
  %46 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 5
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 6
  store i32 196, i32* %47, align 8
  %48 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 7
  store i32 64, i32* %48, align 4
  %49 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 8
  store i32 16, i32* %49, align 16
  %50 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 9
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 10
  store i32 69, i32* %51, align 8
  %52 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 11
  store i32 117, i32* %52, align 4
  %53 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 12
  store i32 7, i32* %53, align 16
  %54 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 13
  store i32 28, i32* %54, align 4
  %55 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 14
  store i32 63, i32* %55, align 8
  %56 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 15
  store i32 2, i32* %56, align 4
  %57 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 16
  store i32 16, i32* %57, align 16
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 17
  store i32 32, i32* %58, align 4
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 18
  store i32 10, i32* %59, align 8
  %60 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 19
  store i32 0, i32* %60, align 4
  %61 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %62 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %63 = call i32 @helene_write_regs(%struct.helene_priv* %61, i32 129, i32* %62, i32 80)
  %64 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %65 = call i32 @helene_write_reg(%struct.helene_priv* %64, i32 155, i32 0)
  %66 = call i32 @msleep(i32 20)
  %67 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %69 = call i32 @helene_read_regs(%struct.helene_priv* %67, i32 26, i32* %68, i32 8)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %41
  %74 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %75 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %117

83:                                               ; preds = %41
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 144, i32* %84, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 6, i32* %85, align 4
  %86 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %88 = call i32 @helene_write_regs(%struct.helene_priv* %86, i32 23, i32* %87, i32 8)
  %89 = call i32 @msleep(i32 20)
  %90 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %91 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %92 = call i32 @helene_read_reg(%struct.helene_priv* %90, i32 25, i32* %91)
  %93 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %94 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = ashr i32 %95, 4
  %97 = and i32 %96, 15
  %98 = call i32 @helene_write_reg(%struct.helene_priv* %93, i32 149, i32 %97)
  %99 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %100 = call i32 @helene_write_reg(%struct.helene_priv* %99, i32 116, i32 2)
  %101 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %102 = call i32 @helene_write_reg(%struct.helene_priv* %101, i32 136, i32 0)
  %103 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %104 = call i32 @helene_write_reg(%struct.helene_priv* %103, i32 135, i32 192)
  %105 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %106 = call i32 @helene_write_reg(%struct.helene_priv* %105, i32 128, i32 1)
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 7, i32* %107, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %111 = call i32 @helene_write_regs(%struct.helene_priv* %109, i32 65, i32* %110, i32 8)
  %112 = load %struct.helene_priv*, %struct.helene_priv** %3, align 8
  %113 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @dev_info(i32* %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %83, %73
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @helene_write_reg(%struct.helene_priv*, i32, i32) #2

declare dso_local i32 @helene_write_regs(%struct.helene_priv*, i32, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @helene_read_regs(%struct.helene_priv*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @helene_read_reg(%struct.helene_priv*, i32, i32*) #2

declare dso_local i32 @dev_info(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
