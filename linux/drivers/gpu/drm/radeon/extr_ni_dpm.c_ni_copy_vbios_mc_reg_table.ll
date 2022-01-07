; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_copy_vbios_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_copy_vbios_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_mc_reg_table = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ni_mc_reg_table = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@SMC_NISLANDS_MC_REGISTER_ARRAY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_AC_TIMING_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_mc_reg_table*, %struct.ni_mc_reg_table*)* @ni_copy_vbios_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_copy_vbios_mc_reg_table(%struct.atom_mc_reg_table* %0, %struct.ni_mc_reg_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atom_mc_reg_table*, align 8
  %5 = alloca %struct.ni_mc_reg_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.atom_mc_reg_table* %0, %struct.atom_mc_reg_table** %4, align 8
  store %struct.ni_mc_reg_table* %1, %struct.ni_mc_reg_table** %5, align 8
  %8 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %9 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SMC_NISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %18 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAX_AC_TIMING_ENTRIES, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %29 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %34 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ni_mc_reg_table*, %struct.ni_mc_reg_table** %5, align 8
  %41 = getelementptr inbounds %struct.ni_mc_reg_table, %struct.ni_mc_reg_table* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %26

49:                                               ; preds = %26
  %50 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %51 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ni_mc_reg_table*, %struct.ni_mc_reg_table** %5, align 8
  %54 = getelementptr inbounds %struct.ni_mc_reg_table, %struct.ni_mc_reg_table* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i64 0, i64* %6, align 8
  br label %55

55:                                               ; preds = %105, %49
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %58 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %108

61:                                               ; preds = %55
  %62 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %63 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ni_mc_reg_table*, %struct.ni_mc_reg_table** %5, align 8
  %70 = getelementptr inbounds %struct.ni_mc_reg_table, %struct.ni_mc_reg_table* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 8
  store i64 0, i64* %7, align 8
  br label %75

75:                                               ; preds = %101, %61
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %78 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %83 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ni_mc_reg_table*, %struct.ni_mc_reg_table** %5, align 8
  %93 = getelementptr inbounds %struct.ni_mc_reg_table, %struct.ni_mc_reg_table* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %91, i32* %100, align 4
  br label %101

101:                                              ; preds = %81
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %7, align 8
  br label %75

104:                                              ; preds = %75
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %55

108:                                              ; preds = %55
  %109 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %4, align 8
  %110 = getelementptr inbounds %struct.atom_mc_reg_table, %struct.atom_mc_reg_table* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ni_mc_reg_table*, %struct.ni_mc_reg_table** %5, align 8
  %113 = getelementptr inbounds %struct.ni_mc_reg_table, %struct.ni_mc_reg_table* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %22, %13
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
