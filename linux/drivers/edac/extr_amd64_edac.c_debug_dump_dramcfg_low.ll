; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_debug_dump_dramcfg_low.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_debug_dump_dramcfg_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"F2x%d90 (DRAM Cfg Low): 0x%08x\0A\00", align 1
@MEM_LRDDR3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c" LRDIMM %dx rank multiply\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"All DIMMs support ECC:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  PAR/ERR parity: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"  DCT 128bit mode width: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"128b\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"64b\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"  x4 logical DIMMs present: L0: %s L1: %s L2: %s L3: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*, i32, i32)* @debug_dump_dramcfg_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_dramcfg_low(%struct.amd64_pvt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %12 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MEM_LRDDR3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %18 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 3
  %29 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %16, %3
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BIT(i32 19)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %37 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @BIT(i32 8)
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %44 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  %45 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %46 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %57

49:                                               ; preds = %30
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BIT(i32 11)
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %56 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %49, %30
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @BIT(i32 12)
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @BIT(i32 13)
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @BIT(i32 14)
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @BIT(i32 15)
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %82 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i8* %63, i8* %69, i8* %75, i8* %81)
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
