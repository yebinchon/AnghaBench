; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_dump_ucode_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_dump_ucode_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32, i64 }

@.str = private unnamed_addr constant [55 x i8] c"CMDSTAT:%08x RTAG=%02x RCRC=%02x RDATA=%02x #INT=%08x\0A\00", align 1
@CMD_STAT_REG = common dso_local global i64 0, align 8
@STAT_RTAG = common dso_local global i64 0, align 8
@STAT_RCRC = common dso_local global i64 0, align 8
@RSP_DATA = common dso_local global i64 0, align 8
@INT_CNT = common dso_local global i64 0, align 8
@TRACEBUF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@TR_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master_acf*)* @dump_ucode_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ucode_trace(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca %struct.fsi_master_acf*, align 8
  %3 = alloca [52 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %2, align 8
  %7 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %8 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %11 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CMD_STAT_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32be(i64 %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %19 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STAT_RTAG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread8(i64 %22)
  %24 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %25 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STAT_RCRC, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @ioread8(i64 %28)
  %30 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %31 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RSP_DATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @ioread32be(i64 %34)
  %36 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %37 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INT_CNT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32be(i64 %40)
  %42 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %23, i32 %29, i32 %35, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %87, %1
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 512
  br i1 %45, label %46, label %90

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = srem i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %54 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TRACEBUF, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @ioread8(i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %4, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = srem i32 %68, 16
  %70 = icmp eq i32 %69, 15
  br i1 %70, label %75, label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TR_END, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71, %52
  %76 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %77 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  %80 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @TR_END, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %90

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %43

90:                                               ; preds = %85, %43
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
