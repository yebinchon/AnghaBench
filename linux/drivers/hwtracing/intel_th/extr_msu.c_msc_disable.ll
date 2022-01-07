; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_2__*, i32, i32, %struct.msc_window* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 (i32)* }
%struct.msc_window = type { i32 }

@MSC_MODE_MULTI = common dso_local global i64 0, align 8
@WIN_INUSE = common dso_local global i32 0, align 4
@WIN_LOCKED = common dso_local global i32 0, align 4
@MSC_MODE_SINGLE = common dso_local global i64 0, align 8
@REG_MSU_MSC0STS = common dso_local global i64 0, align 8
@MSCSTS_WRAPSTAT = common dso_local global i32 0, align 4
@REG_MSU_MSC0MWP = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MSCnMWP: %08x/%08lx, wrap: %d\0A\00", align 1
@REG_MSU_MSC0CTL = common dso_local global i64 0, align 8
@MSC_EN = common dso_local global i32 0, align 4
@REG_MSU_MSC0BAR = common dso_local global i64 0, align 8
@REG_MSU_MSC0SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"MSCnNWSA: %08x\0A\00", align 1
@REG_MSU_MSC0NWSA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"MSCnSTS: %08x\0A\00", align 1
@REG_MSU_MSUSTS = common dso_local global i64 0, align 8
@MSUSTS_MSC1BLAST = common dso_local global i32 0, align 4
@MSUSTS_MSC0BLAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msc*)* @msc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msc_disable(%struct.msc* %0) #0 {
  %2 = alloca %struct.msc*, align 8
  %3 = alloca %struct.msc_window*, align 8
  %4 = alloca i32, align 4
  store %struct.msc* %0, %struct.msc** %2, align 8
  %5 = load %struct.msc*, %struct.msc** %2, align 8
  %6 = getelementptr inbounds %struct.msc, %struct.msc* %5, i32 0, i32 13
  %7 = load %struct.msc_window*, %struct.msc_window** %6, align 8
  store %struct.msc_window* %7, %struct.msc_window** %3, align 8
  %8 = load %struct.msc*, %struct.msc** %2, align 8
  %9 = getelementptr inbounds %struct.msc, %struct.msc* %8, i32 0, i32 12
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.msc*, %struct.msc** %2, align 8
  %12 = getelementptr inbounds %struct.msc, %struct.msc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MSC_MODE_MULTI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.msc_window*, %struct.msc_window** %3, align 8
  %18 = load i32, i32* @WIN_INUSE, align 4
  %19 = load i32, i32* @WIN_LOCKED, align 4
  %20 = call i32 @msc_win_set_lockout(%struct.msc_window* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.msc*, %struct.msc** %2, align 8
  %23 = getelementptr inbounds %struct.msc, %struct.msc* %22, i32 0, i32 10
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.msc*, %struct.msc** %2, align 8
  %28 = getelementptr inbounds %struct.msc, %struct.msc* %27, i32 0, i32 10
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = icmp ne i32 (i32)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.msc*, %struct.msc** %2, align 8
  %35 = getelementptr inbounds %struct.msc, %struct.msc* %34, i32 0, i32 10
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load %struct.msc*, %struct.msc** %2, align 8
  %40 = getelementptr inbounds %struct.msc, %struct.msc* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %38(i32 %41)
  br label %43

43:                                               ; preds = %33, %26, %21
  %44 = load %struct.msc*, %struct.msc** %2, align 8
  %45 = call i32 @intel_th_msu_deinit(%struct.msc* %44)
  %46 = load %struct.msc*, %struct.msc** %2, align 8
  %47 = getelementptr inbounds %struct.msc, %struct.msc* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @intel_th_trace_disable(i32 %48)
  %50 = load %struct.msc*, %struct.msc** %2, align 8
  %51 = getelementptr inbounds %struct.msc, %struct.msc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MSC_MODE_SINGLE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %97

55:                                               ; preds = %43
  %56 = load %struct.msc*, %struct.msc** %2, align 8
  %57 = getelementptr inbounds %struct.msc, %struct.msc* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REG_MSU_MSC0STS, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @ioread32(i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MSCSTS_WRAPSTAT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.msc*, %struct.msc** %2, align 8
  %70 = getelementptr inbounds %struct.msc, %struct.msc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.msc*, %struct.msc** %2, align 8
  %72 = getelementptr inbounds %struct.msc, %struct.msc* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REG_MSU_MSC0MWP, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @ioread32(i64 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.msc*, %struct.msc** %2, align 8
  %79 = getelementptr inbounds %struct.msc, %struct.msc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %77, %83
  %85 = load %struct.msc*, %struct.msc** %2, align 8
  %86 = getelementptr inbounds %struct.msc, %struct.msc* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.msc*, %struct.msc** %2, align 8
  %88 = call i32 @msc_dev(%struct.msc* %87)
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.msc*, %struct.msc** %2, align 8
  %91 = getelementptr inbounds %struct.msc, %struct.msc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.msc*, %struct.msc** %2, align 8
  %94 = getelementptr inbounds %struct.msc, %struct.msc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %55, %43
  %98 = load %struct.msc*, %struct.msc** %2, align 8
  %99 = getelementptr inbounds %struct.msc, %struct.msc* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @REG_MSU_MSC0CTL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @ioread32(i64 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @MSC_EN, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.msc*, %struct.msc** %2, align 8
  %110 = getelementptr inbounds %struct.msc, %struct.msc* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @REG_MSU_MSC0CTL, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @iowrite32(i32 %108, i64 %113)
  %115 = load %struct.msc*, %struct.msc** %2, align 8
  %116 = getelementptr inbounds %struct.msc, %struct.msc* %115, i32 0, i32 10
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = icmp ne %struct.TYPE_2__* %117, null
  br i1 %118, label %119, label %141

119:                                              ; preds = %97
  %120 = load %struct.msc*, %struct.msc** %2, align 8
  %121 = getelementptr inbounds %struct.msc, %struct.msc* %120, i32 0, i32 10
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %123, align 8
  %125 = icmp ne i32 (i32, i32, i32)* %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %119
  %127 = load %struct.msc*, %struct.msc** %2, align 8
  %128 = getelementptr inbounds %struct.msc, %struct.msc* %127, i32 0, i32 10
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %130, align 8
  %132 = load %struct.msc*, %struct.msc** %2, align 8
  %133 = getelementptr inbounds %struct.msc, %struct.msc* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.msc_window*, %struct.msc_window** %3, align 8
  %136 = getelementptr inbounds %struct.msc_window, %struct.msc_window* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.msc_window*, %struct.msc_window** %3, align 8
  %139 = call i32 @msc_win_total_sz(%struct.msc_window* %138)
  %140 = call i32 %131(i32 %134, i32 %137, i32 %139)
  br label %141

141:                                              ; preds = %126, %119, %97
  %142 = load %struct.msc*, %struct.msc** %2, align 8
  %143 = getelementptr inbounds %struct.msc, %struct.msc* %142, i32 0, i32 8
  store i64 0, i64* %143, align 8
  %144 = load %struct.msc*, %struct.msc** %2, align 8
  %145 = getelementptr inbounds %struct.msc, %struct.msc* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.msc*, %struct.msc** %2, align 8
  %148 = getelementptr inbounds %struct.msc, %struct.msc* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @REG_MSU_MSC0BAR, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @iowrite32(i32 %146, i64 %151)
  %153 = load %struct.msc*, %struct.msc** %2, align 8
  %154 = getelementptr inbounds %struct.msc, %struct.msc* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.msc*, %struct.msc** %2, align 8
  %157 = getelementptr inbounds %struct.msc, %struct.msc* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @REG_MSU_MSC0SIZE, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @iowrite32(i32 %155, i64 %160)
  %162 = load %struct.msc*, %struct.msc** %2, align 8
  %163 = call i32 @msc_dev(%struct.msc* %162)
  %164 = load %struct.msc*, %struct.msc** %2, align 8
  %165 = getelementptr inbounds %struct.msc, %struct.msc* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @REG_MSU_MSC0NWSA, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @ioread32(i64 %168)
  %170 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load %struct.msc*, %struct.msc** %2, align 8
  %172 = getelementptr inbounds %struct.msc, %struct.msc* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @REG_MSU_MSC0STS, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @ioread32(i64 %175)
  store i32 %176, i32* %4, align 4
  %177 = load %struct.msc*, %struct.msc** %2, align 8
  %178 = call i32 @msc_dev(%struct.msc* %177)
  %179 = load i32, i32* %4, align 4
  %180 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load %struct.msc*, %struct.msc** %2, align 8
  %182 = getelementptr inbounds %struct.msc, %struct.msc* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @REG_MSU_MSUSTS, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @ioread32(i64 %185)
  store i32 %186, i32* %4, align 4
  %187 = load %struct.msc*, %struct.msc** %2, align 8
  %188 = getelementptr inbounds %struct.msc, %struct.msc* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %141
  %192 = load i32, i32* @MSUSTS_MSC1BLAST, align 4
  br label %195

193:                                              ; preds = %141
  %194 = load i32, i32* @MSUSTS_MSC0BLAST, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = load i32, i32* %4, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %4, align 4
  %199 = load i32, i32* %4, align 4
  %200 = load %struct.msc*, %struct.msc** %2, align 8
  %201 = getelementptr inbounds %struct.msc, %struct.msc* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @REG_MSU_MSUSTS, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @iowrite32(i32 %199, i64 %204)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @msc_win_set_lockout(%struct.msc_window*, i32, i32) #1

declare dso_local i32 @intel_th_msu_deinit(%struct.msc*) #1

declare dso_local i32 @intel_th_trace_disable(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @msc_dev(%struct.msc*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @msc_win_total_sz(%struct.msc_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
