; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_decode_mtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_decode_mtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"\09MTR%d=0x%x:  DIMMs are %sPresent\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09\09WIDTH: x%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\09\09ELECTRICAL THROTTLING is %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09\09NUMBANK: %d bank(s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\09\09NUMRANK: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\09\09NUMROW: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"8,192 - 13 rows\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"16,384 - 14 rows\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"32,768 - 15 rows\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"65,536 - 16 rows\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\09\09NUMCOL: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"1,024 - 10 columns\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"2,048 - 11 columns\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"4,096 - 12 columns\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @decode_mtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_mtr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @MTR_DIMMS_PRESENT(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i8* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %77

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @MTR_DRAM_WIDTH(i32 %19)
  %21 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @MTR_DIMMS_ETHROTTLE(i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %27 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @MTR_DRAM_BANKS(i32 %28)
  %30 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @MTR_DIMM_RANK(i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %36 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MTR_DIMM_ROWS(i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %54

41:                                               ; preds = %18
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @MTR_DIMM_ROWS(i32 %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @MTR_DIMM_ROWS(i32 %47)
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)
  br label %52

52:                                               ; preds = %46, %45
  %53 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), %45 ], [ %51, %46 ]
  br label %54

54:                                               ; preds = %52, %40
  %55 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), %40 ], [ %53, %52 ]
  %56 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @MTR_DIMM_COLS(i32 %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %74

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @MTR_DIMM_COLS(i32 %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @MTR_DIMM_COLS(i32 %67)
  %69 = icmp eq i32 %68, 2
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)
  br label %72

72:                                               ; preds = %66, %65
  %73 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), %65 ], [ %71, %66 ]
  br label %74

74:                                               ; preds = %72, %60
  %75 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), %60 ], [ %73, %72 ]
  %76 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %17
  ret void
}

declare dso_local i32 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i8* @MTR_DRAM_WIDTH(i32) #1

declare dso_local i64 @MTR_DIMMS_ETHROTTLE(i32) #1

declare dso_local i8* @MTR_DRAM_BANKS(i32) #1

declare dso_local i64 @MTR_DIMM_RANK(i32) #1

declare dso_local i32 @MTR_DIMM_ROWS(i32) #1

declare dso_local i32 @MTR_DIMM_COLS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
