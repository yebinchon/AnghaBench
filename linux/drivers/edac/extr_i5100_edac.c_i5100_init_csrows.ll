; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, i32, %struct.i5100_priv* }
%struct.i5100_priv = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.dimm_info = type { i64, i32, i32, i32, i32, i32 }

@DEV_X4 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@MEM_RDDR2 = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DIMM%u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"dimm channel %d, rank %d, size %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5100_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i5100_priv*, align 8
  %5 = alloca %struct.dimm_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %10 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %9, i32 0, i32 4
  %11 = load %struct.i5100_priv*, %struct.i5100_priv** %10, align 8
  store %struct.i5100_priv* %11, %struct.i5100_priv** %4, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %89, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %15 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %92

18:                                               ; preds = %12
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @i5100_npages(%struct.mem_ctl_info* %19, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @i5100_csrow_to_chan(%struct.mem_ctl_info* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @i5100_csrow_to_rank(%struct.mem_ctl_info* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %89

31:                                               ; preds = %18
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %33 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %36 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %39 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %34, i32 %37, i32 %40, i32 %41, i32 %42, i32 0)
  store %struct.dimm_info* %43, %struct.dimm_info** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %46 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %48 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %47, i32 0, i32 1
  store i32 32, i32* %48, align 8
  %49 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %50 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %64

62:                                               ; preds = %31
  %63 = load i32, i32* @DEV_X4, align 4
  br label %66

64:                                               ; preds = %31
  %65 = load i32, i32* @DEV_X8, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %69 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @MEM_RDDR2, align 4
  %71 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %72 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @EDAC_SECDED, align 4
  %74 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %75 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %77 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @i5100_rank_to_slot(%struct.mem_ctl_info* %79, i32 %80, i32 %81)
  %83 = call i32 @snprintf(i32 %78, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @PAGES_TO_MiB(i64 %86)
  %88 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85, i64 %87)
  br label %89

89:                                               ; preds = %66, %30
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %12

92:                                               ; preds = %12
  ret void
}

declare dso_local i64 @i5100_npages(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @i5100_csrow_to_chan(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @i5100_csrow_to_rank(%struct.mem_ctl_info*, i32) #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i5100_rank_to_slot(%struct.mem_ctl_info*, i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i64) #1

declare dso_local i64 @PAGES_TO_MiB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
