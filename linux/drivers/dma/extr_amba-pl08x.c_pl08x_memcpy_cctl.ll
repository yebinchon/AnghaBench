; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_memcpy_cctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_memcpy_cctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"illegal burst size for memcpy, set to 1\0A\00", align 1
@PL080_BSIZE_1 = common dso_local global i32 0, align 4
@PL080_CONTROL_SB_SIZE_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_DB_SIZE_SHIFT = common dso_local global i32 0, align 4
@PL080_BSIZE_4 = common dso_local global i32 0, align 4
@PL080_BSIZE_8 = common dso_local global i32 0, align 4
@PL080_BSIZE_16 = common dso_local global i32 0, align 4
@PL080_BSIZE_32 = common dso_local global i32 0, align 4
@PL080_BSIZE_64 = common dso_local global i32 0, align 4
@PL080_BSIZE_128 = common dso_local global i32 0, align 4
@PL080_BSIZE_256 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"illegal bus width for memcpy, set to 8 bits\0A\00", align 1
@PL080_WIDTH_8BIT = common dso_local global i32 0, align 4
@PL080_CONTROL_SWIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_DWIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_WIDTH_16BIT = common dso_local global i32 0, align 4
@PL080_WIDTH_32BIT = common dso_local global i32 0, align 4
@PL080_CONTROL_PROT_BUFF = common dso_local global i32 0, align 4
@PL080_CONTROL_PROT_CACHE = common dso_local global i32 0, align 4
@PL080_CONTROL_PROT_SYS = common dso_local global i32 0, align 4
@PL080_CONTROL_SRC_INCR = common dso_local global i32 0, align 4
@PL080_CONTROL_DST_INCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_driver_data*)* @pl08x_memcpy_cctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_memcpy_cctl(%struct.pl08x_driver_data* %0) #0 {
  %2 = alloca %struct.pl08x_driver_data*, align 8
  %3 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %9 [
    i32 138, label %15
    i32 133, label %25
    i32 131, label %35
    i32 136, label %45
    i32 134, label %55
    i32 132, label %65
    i32 137, label %75
    i32 135, label %85
  ]

9:                                                ; preds = %1
  %10 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %11 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %1, %9
  %16 = load i32, i32* @PL080_BSIZE_1, align 4
  %17 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @PL080_BSIZE_1, align 4
  %20 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %95

25:                                               ; preds = %1
  %26 = load i32, i32* @PL080_BSIZE_4, align 4
  %27 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @PL080_BSIZE_4, align 4
  %30 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %95

35:                                               ; preds = %1
  %36 = load i32, i32* @PL080_BSIZE_8, align 4
  %37 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @PL080_BSIZE_8, align 4
  %40 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %38, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %95

45:                                               ; preds = %1
  %46 = load i32, i32* @PL080_BSIZE_16, align 4
  %47 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* @PL080_BSIZE_16, align 4
  %50 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %95

55:                                               ; preds = %1
  %56 = load i32, i32* @PL080_BSIZE_32, align 4
  %57 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @PL080_BSIZE_32, align 4
  %60 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %95

65:                                               ; preds = %1
  %66 = load i32, i32* @PL080_BSIZE_64, align 4
  %67 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @PL080_BSIZE_64, align 4
  %70 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %68, %71
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %95

75:                                               ; preds = %1
  %76 = load i32, i32* @PL080_BSIZE_128, align 4
  %77 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* @PL080_BSIZE_128, align 4
  %80 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %95

85:                                               ; preds = %1
  %86 = load i32, i32* @PL080_BSIZE_256, align 4
  %87 = load i32, i32* @PL080_CONTROL_SB_SIZE_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* @PL080_BSIZE_256, align 4
  %90 = load i32, i32* @PL080_CONTROL_DB_SIZE_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %88, %91
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %85, %75, %65, %55, %45, %35, %25, %15
  %96 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %97 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %101 [
    i32 128, label %107
    i32 130, label %117
    i32 129, label %127
  ]

101:                                              ; preds = %95
  %102 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %103 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %95, %101
  %108 = load i32, i32* @PL080_WIDTH_8BIT, align 4
  %109 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* @PL080_WIDTH_8BIT, align 4
  %112 = load i32, i32* @PL080_CONTROL_DWIDTH_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %110, %113
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %137

117:                                              ; preds = %95
  %118 = load i32, i32* @PL080_WIDTH_16BIT, align 4
  %119 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* @PL080_WIDTH_16BIT, align 4
  %122 = load i32, i32* @PL080_CONTROL_DWIDTH_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %120, %123
  %125 = load i32, i32* %3, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %3, align 4
  br label %137

127:                                              ; preds = %95
  %128 = load i32, i32* @PL080_WIDTH_32BIT, align 4
  %129 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* @PL080_WIDTH_32BIT, align 4
  %132 = load i32, i32* @PL080_CONTROL_DWIDTH_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = or i32 %130, %133
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %127, %117, %107
  %138 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %139 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %138, i32 0, i32 2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* @PL080_CONTROL_PROT_BUFF, align 4
  %146 = load i32, i32* %3, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %137
  %149 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %150 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i32, i32* @PL080_CONTROL_PROT_CACHE, align 4
  %157 = load i32, i32* %3, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %148
  %160 = load i32, i32* @PL080_CONTROL_PROT_SYS, align 4
  %161 = load i32, i32* %3, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* @PL080_CONTROL_SRC_INCR, align 4
  %164 = load i32, i32* @PL080_CONTROL_DST_INCR, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  %168 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %169 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %159
  %175 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %176 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %179 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @pl08x_select_bus(i32 0, i32 %177, i32 %180)
  %182 = load i32, i32* %3, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %174, %159
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pl08x_select_bus(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
