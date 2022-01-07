; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_mc_get_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_mc_get_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@MEAR_BCNT_MASK = common dso_local global i64 0, align 8
@MEAR_BCNT_SHIFT = common dso_local global i64 0, align 8
@MEAR_RANK_MASK = common dso_local global i64 0, align 8
@MEAR_RANK_SHIFT = common dso_local global i64 0, align 8
@MEAR_COL_MASK = common dso_local global i64 0, align 8
@MEAR_COL_SHIFT = common dso_local global i64 0, align 8
@MEAR_BANK_MASK = common dso_local global i64 0, align 8
@MEAR_BANK_SHIFT = common dso_local global i64 0, align 8
@MEAR_ROW_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ECC physical address 0x%lx\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i64, i64*, i64*, i32*)* @cpc925_mc_get_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_mc_get_pfn(%struct.mem_ctl_info* %0, i64 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MEAR_BCNT_MASK, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* @MEAR_BCNT_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MEAR_RANK_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @MEAR_RANK_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MEAR_COL_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @MEAR_COL_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @MEAR_BANK_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @MEAR_BANK_SHIFT, align 8
  %38 = lshr i64 %36, %37
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @MEAR_ROW_MASK, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %12, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %46 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PAGE_SHIFT, align 8
  %54 = shl i64 %52, %53
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %13, align 8
  store i32 0, i32* %18, align 4
  br label %58

58:                                               ; preds = %73, %5
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %59, 11
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i64, i64* %13, align 8
  %63 = and i64 %62, 1
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %13, align 8
  %65 = lshr i64 %64, 1
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sub nsw i32 14, %67
  %69 = zext i32 %68 to i64
  %70 = shl i64 %66, %69
  %71 = load i64, i64* %17, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %17, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load i64, i64* %14, align 8
  %78 = shl i64 %77, 19
  %79 = load i64, i64* %17, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %96, %76
  %82 = load i32, i32* %18, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load i64, i64* %15, align 8
  %86 = and i64 %85, 1
  store i64 %86, i64* %16, align 8
  %87 = load i64, i64* %15, align 8
  %88 = lshr i64 %87, 1
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sub nsw i32 26, %90
  %92 = zext i32 %91 to i64
  %93 = shl i64 %89, %92
  %94 = load i64, i64* %17, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %17, align 8
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %18, align 4
  br label %81

99:                                               ; preds = %81
  store i32 0, i32* %18, align 4
  br label %100

100:                                              ; preds = %115, %99
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %101, 3
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i64, i64* %15, align 8
  %105 = and i64 %104, 1
  store i64 %105, i64* %16, align 8
  %106 = load i64, i64* %15, align 8
  %107 = lshr i64 %106, 1
  store i64 %107, i64* %15, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 21, %109
  %111 = zext i32 %110 to i64
  %112 = shl i64 %108, %111
  %113 = load i64, i64* %17, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %17, align 8
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  br label %100

118:                                              ; preds = %100
  store i32 0, i32* %18, align 4
  br label %119

119:                                              ; preds = %134, %118
  %120 = load i32, i32* %18, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load i64, i64* %15, align 8
  %124 = and i64 %123, 1
  store i64 %124, i64* %16, align 8
  %125 = load i64, i64* %15, align 8
  %126 = lshr i64 %125, 1
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sub nsw i32 18, %128
  %130 = zext i32 %129 to i64
  %131 = shl i64 %127, %130
  %132 = load i64, i64* %17, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %17, align 8
  br label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %18, align 4
  br label %119

137:                                              ; preds = %119
  store i32 0, i32* %18, align 4
  br label %138

138:                                              ; preds = %153, %137
  %139 = load i32, i32* %18, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load i64, i64* %15, align 8
  %143 = and i64 %142, 1
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %15, align 8
  %145 = lshr i64 %144, 1
  store i64 %145, i64* %15, align 8
  %146 = load i64, i64* %16, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sub nsw i32 29, %147
  %149 = zext i32 %148 to i64
  %150 = shl i64 %146, %149
  %151 = load i64, i64* %17, align 8
  %152 = or i64 %151, %150
  store i64 %152, i64* %17, align 8
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  br label %138

156:                                              ; preds = %138
  %157 = load i64, i64* %17, align 8
  %158 = load i32, i32* @PAGE_SIZE, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = and i64 %157, %160
  %162 = load i64*, i64** %9, align 8
  store i64 %161, i64* %162, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i64, i64* @PAGE_SHIFT, align 8
  %165 = lshr i64 %163, %164
  %166 = load i64*, i64** %8, align 8
  store i64 %165, i64* %166, align 8
  %167 = load i64, i64* %17, align 8
  %168 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %167)
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
