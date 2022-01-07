; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i64, i64, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MSC_MODE_MULTI = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@WIN_READY = common dso_local global i32 0, align 4
@WIN_INUSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@REG_MSU_MSC0BAR = common dso_local global i64 0, align 8
@REG_MSU_MSC0SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MSC_MODE_SINGLE = common dso_local global i32 0, align 4
@REG_MSU_MSC0CTL = common dso_local global i64 0, align 8
@MSC_MODE = common dso_local global i32 0, align 4
@MSC_WRAPEN = common dso_local global i32 0, align 4
@MSC_EN = common dso_local global i32 0, align 4
@MSC_RD_HDR_OVRD = common dso_local global i32 0, align 4
@MSC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msc*)* @msc_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msc_configure(%struct.msc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msc*, align 8
  %4 = alloca i32, align 4
  store %struct.msc* %0, %struct.msc** %3, align 8
  %5 = load %struct.msc*, %struct.msc** %3, align 8
  %6 = getelementptr inbounds %struct.msc, %struct.msc* %5, i32 0, i32 13
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.msc*, %struct.msc** %3, align 8
  %9 = getelementptr inbounds %struct.msc, %struct.msc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MSC_MODE_MULTI, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %175

16:                                               ; preds = %1
  %17 = load %struct.msc*, %struct.msc** %3, align 8
  %18 = getelementptr inbounds %struct.msc, %struct.msc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MSC_MODE_MULTI, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.msc*, %struct.msc** %3, align 8
  %24 = getelementptr inbounds %struct.msc, %struct.msc* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WIN_READY, align 4
  %27 = load i32, i32* @WIN_INUSE, align 4
  %28 = call i64 @msc_win_set_lockout(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %175

33:                                               ; preds = %22
  %34 = load %struct.msc*, %struct.msc** %3, align 8
  %35 = call i32 @msc_buffer_clear_hw_header(%struct.msc* %34)
  br label %36

36:                                               ; preds = %33, %16
  %37 = load %struct.msc*, %struct.msc** %3, align 8
  %38 = getelementptr inbounds %struct.msc, %struct.msc* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REG_MSU_MSC0BAR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i8* @ioread32(i64 %41)
  %43 = load %struct.msc*, %struct.msc** %3, align 8
  %44 = getelementptr inbounds %struct.msc, %struct.msc* %43, i32 0, i32 11
  store i8* %42, i8** %44, align 8
  %45 = load %struct.msc*, %struct.msc** %3, align 8
  %46 = getelementptr inbounds %struct.msc, %struct.msc* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_MSU_MSC0SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @ioread32(i64 %49)
  %51 = load %struct.msc*, %struct.msc** %3, align 8
  %52 = getelementptr inbounds %struct.msc, %struct.msc* %51, i32 0, i32 10
  store i8* %50, i8** %52, align 8
  %53 = load %struct.msc*, %struct.msc** %3, align 8
  %54 = getelementptr inbounds %struct.msc, %struct.msc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.msc*, %struct.msc** %3, align 8
  %60 = getelementptr inbounds %struct.msc, %struct.msc* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG_MSU_MSC0BAR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite32(i32 %58, i64 %63)
  %65 = load %struct.msc*, %struct.msc** %3, align 8
  %66 = getelementptr inbounds %struct.msc, %struct.msc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MSC_MODE_SINGLE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %36
  %71 = load %struct.msc*, %struct.msc** %3, align 8
  %72 = getelementptr inbounds %struct.msc, %struct.msc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.msc*, %struct.msc** %3, align 8
  %76 = getelementptr inbounds %struct.msc, %struct.msc* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REG_MSU_MSC0SIZE, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @iowrite32(i32 %74, i64 %79)
  br label %81

81:                                               ; preds = %70, %36
  %82 = load %struct.msc*, %struct.msc** %3, align 8
  %83 = getelementptr inbounds %struct.msc, %struct.msc* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @REG_MSU_MSC0CTL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i8* @ioread32(i64 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @MSC_MODE, align 4
  %90 = load i32, i32* @MSC_WRAPEN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @MSC_EN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @MSC_RD_HDR_OVRD, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @MSC_EN, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load %struct.msc*, %struct.msc** %3, align 8
  %103 = getelementptr inbounds %struct.msc, %struct.msc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MSC_MODE, align 4
  %106 = call i32 @__ffs(i32 %105)
  %107 = shl i32 %104, %106
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load %struct.msc*, %struct.msc** %3, align 8
  %111 = getelementptr inbounds %struct.msc, %struct.msc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MSC_LEN, align 4
  %114 = call i32 @__ffs(i32 %113)
  %115 = shl i32 %112, %114
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.msc*, %struct.msc** %3, align 8
  %119 = getelementptr inbounds %struct.msc, %struct.msc* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %81
  %123 = load i32, i32* @MSC_WRAPEN, align 4
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %81
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.msc*, %struct.msc** %3, align 8
  %129 = getelementptr inbounds %struct.msc, %struct.msc* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @REG_MSU_MSC0CTL, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @iowrite32(i32 %127, i64 %132)
  %134 = load %struct.msc*, %struct.msc** %3, align 8
  %135 = call i32 @intel_th_msu_init(%struct.msc* %134)
  %136 = load %struct.msc*, %struct.msc** %3, align 8
  %137 = getelementptr inbounds %struct.msc, %struct.msc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MSC_MODE_MULTI, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load %struct.msc*, %struct.msc** %3, align 8
  %143 = getelementptr inbounds %struct.msc, %struct.msc* %142, i32 0, i32 7
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 %141, i32* %146, align 4
  %147 = load %struct.msc*, %struct.msc** %3, align 8
  %148 = getelementptr inbounds %struct.msc, %struct.msc* %147, i32 0, i32 7
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = call i32 @intel_th_trace_enable(%struct.TYPE_6__* %149)
  %151 = load %struct.msc*, %struct.msc** %3, align 8
  %152 = getelementptr inbounds %struct.msc, %struct.msc* %151, i32 0, i32 4
  store i32 1, i32* %152, align 8
  %153 = load %struct.msc*, %struct.msc** %3, align 8
  %154 = getelementptr inbounds %struct.msc, %struct.msc* %153, i32 0, i32 6
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = icmp ne %struct.TYPE_5__* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %126
  %158 = load %struct.msc*, %struct.msc** %3, align 8
  %159 = getelementptr inbounds %struct.msc, %struct.msc* %158, i32 0, i32 6
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32 (i32)*, i32 (i32)** %161, align 8
  %163 = icmp ne i32 (i32)* %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %157
  %165 = load %struct.msc*, %struct.msc** %3, align 8
  %166 = getelementptr inbounds %struct.msc, %struct.msc* %165, i32 0, i32 6
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32 (i32)*, i32 (i32)** %168, align 8
  %170 = load %struct.msc*, %struct.msc** %3, align 8
  %171 = getelementptr inbounds %struct.msc, %struct.msc* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = call i32 %169(i32 %172)
  br label %174

174:                                              ; preds = %164, %157, %126
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %30, %13
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @msc_win_set_lockout(i32, i32, i32) #1

declare dso_local i32 @msc_buffer_clear_hw_header(%struct.msc*) #1

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @intel_th_msu_init(%struct.msc*) #1

declare dso_local i32 @intel_th_trace_enable(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
