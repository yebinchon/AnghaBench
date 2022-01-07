; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_get_pre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_get_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_prg = type { i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@IOMUXC_GPR5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not get PRE for PRG chan %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_prg*, i32)* @ipu_prg_get_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_prg_get_pre(%struct.ipu_prg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_prg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipu_prg* %0, %struct.ipu_prg** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %15 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ipu_pre_get(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %109

23:                                               ; preds = %13
  %24 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %25 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %116

31:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %105, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %108

35:                                               ; preds = %32
  %36 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %37 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ipu_pre_get(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %104, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %49 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 12, i32 14
  store i32 %58, i32* %10, align 4
  %59 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %60 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 1
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 1
  %65 = or i32 %62, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %67 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IOMUXC_GPR5, align 4
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 3, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = shl i32 %72, %73
  %75 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %71, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 14, i32 12
  store i32 %79, i32* %10, align 4
  %80 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %81 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IOMUXC_GPR5, align 4
  %84 = call i32 @regmap_read(i32 %82, i32 %83, i32* %8)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %85, %86
  %88 = and i32 %87, 3
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %46
  %92 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %93 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IOMUXC_GPR5, align 4
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 3, %96
  %98 = load i32, i32* %9, align 4
  %99 = xor i32 %98, 1
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %99, %100
  %102 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %91, %46
  store i32 0, i32* %3, align 4
  br label %116

104:                                              ; preds = %35
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %32

108:                                              ; preds = %32
  br label %109

109:                                              ; preds = %108, %22
  %110 = load %struct.ipu_prg*, %struct.ipu_prg** %4, align 8
  %111 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %109, %103, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ipu_pre_get(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
