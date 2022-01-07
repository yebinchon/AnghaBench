; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_find_csrow_by_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_find_csrow_by_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info** }
%struct.csrow_info = type { i32, i64, i64, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"MC%d: 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"MC%d: first(0x%lx) page(0x%lx) last(0x%lx) mask(0x%lx)\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"could not look up page error address %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.csrow_info**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.csrow_info*, align 8
  %11 = alloca %struct.dimm_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 2
  %14 = load %struct.csrow_info**, %struct.csrow_info*** %13, align 8
  store %struct.csrow_info** %14, %struct.csrow_info*** %5, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %105, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %23 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %108

26:                                               ; preds = %20
  %27 = load %struct.csrow_info**, %struct.csrow_info*** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %27, i64 %29
  %31 = load %struct.csrow_info*, %struct.csrow_info** %30, align 8
  store %struct.csrow_info* %31, %struct.csrow_info** %10, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %55, %26
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %35 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %40 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.dimm_info*, %struct.dimm_info** %46, align 8
  store %struct.dimm_info* %47, %struct.dimm_info** %11, align 8
  %48 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %49 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %105

62:                                               ; preds = %58
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %64 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %67 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %71 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %74 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %68, i64 %69, i64 %72, i64 %75)
  %77 = load i64, i64* %4, align 8
  %78 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %79 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %62
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %85 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ule i64 %83, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %91 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %89, %92
  %94 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %95 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.csrow_info*, %struct.csrow_info** %10, align 8
  %98 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %96, %99
  %101 = icmp eq i64 %93, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %6, align 4
  br label %108

104:                                              ; preds = %88, %82, %62
  br label %105

105:                                              ; preds = %104, %61
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %20

108:                                              ; preds = %102, %20
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %113 = load i32, i32* @KERN_ERR, align 4
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @edac_mc_printk(%struct.mem_ctl_info* %112, i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @edac_dbg(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @edac_mc_printk(%struct.mem_ctl_info*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
