; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_dimm_csmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_dimm_csmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32**, i32 }

@I5100_MAX_DIMM_SLOTS_PER_CHAN = common dso_local global i32 0, align 4
@I5100_MAX_RANKS_PER_DIMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5100_init_dimm_csmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_init_dimm_csmap(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  store %struct.i5100_priv* %8, %struct.i5100_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @I5100_MAX_DIMM_SLOTS_PER_CHAN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @I5100_MAX_RANKS_PER_DIMM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %20 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %38 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %78

41:                                               ; preds = %36
  %42 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %43 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %49 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 3, i32* %53, align 4
  %54 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %55 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %61 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 2, i32* %65, align 4
  %66 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %67 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 2, i32* %71, align 4
  %72 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %73 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 3, i32* %77, align 4
  br label %115

78:                                               ; preds = %36
  %79 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %80 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 0, i32* %84, align 4
  %85 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %86 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %92 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %91, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 2, i32* %96, align 4
  %97 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %98 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 3, i32* %102, align 4
  %103 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %104 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 4, i32* %108, align 4
  %109 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %110 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 5, i32* %114, align 4
  br label %115

115:                                              ; preds = %78, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
