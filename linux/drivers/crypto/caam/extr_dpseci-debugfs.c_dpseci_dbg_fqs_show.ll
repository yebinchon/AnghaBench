; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci-debugfs.c_dpseci_dbg_fqs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci-debugfs.c_dpseci_dbg_fqs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.dpaa2_caam_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"FQ stats for %s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s%16s%16s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Rx-VFQID\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Pending frames\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Pending bytes\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%5d%16u%16u\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Tx-VFQID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dpseci_dbg_fqs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpseci_dbg_fqs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpaa2_caam_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dpaa2_caam_priv*
  store %struct.dpaa2_caam_priv* %14, %struct.dpaa2_caam_priv** %5, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_name(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %51, %2
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %28 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %33 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @dpaa2_io_query_fq_count(i32* null, i8* %40, i8** %7, i8** %8)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %51

45:                                               ; preds = %31
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %47, i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %83, %54
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %60 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %65 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @dpaa2_io_query_fq_count(i32* null, i8* %72, i8** %7, i8** %8)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %83

77:                                               ; preds = %63
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %79, i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %57

86:                                               ; preds = %57
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dpaa2_io_query_fq_count(i32*, i8*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
